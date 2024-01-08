import characters from "./json/characters.json" assert { type: "json" };
import db from "../connection.js";

export default async function insert_characters_data() {
    const { rows } = await db.query("SELECT name FROM characters");
    const db_characters = rows.length;
    const json_characters = Object.keys(characters).length;

    const json_characters_names = Object.values(characters).map(
        (character) => character.name
    );
    const db_characters_names = rows.map((character) => character.name);
    if (db_characters < json_characters) {
        for (const name of json_characters_names) {
            const index = json_characters_names.indexOf(name)
            if (!db_characters_names.includes(name)) {
                const { name, race, games, description, img } =
                    Object.values(characters)[index];
                const { rows } = await db.query("SELECT id FROM races WHERE name = $1",[race])
                const race_id = rows[0].id
                const games_id = []
                for (let i = 0; i < games.length;i++) {
                    if (games[i] == "") {
                        const { rows } = await db.query("SELECT id FROM games")
                        rows.forEach((game) => {
                            games_id.push(game.id)
                        })
                    } else {
                        const { rows } = await db.query("SELECT id FROM games WHERE name = $1",[games[i]])
                        games_id.push(rows[0].id)
                    }
                }
                await db.query(
                    "INSERT INTO characters VALUES (DEFAULT,$1,$2,$3,$4,$5)",
                    [name, race_id, games_id, description, img]
                );
            }
        }
    } else if (db_characters > json_characters) {
        for (const name of db_characters_names) {
            if (!json_characters_names.includes(name)) {
                await db.query("DELETE FROM characters WHERE name = $1", [
                    name,
                ]);
            }
        }
    }
}
