import races from "./json/races.json" assert { type: "json" };
import db from "../connection.js"

export default async function insert_races_data() {
    const { rows } = await db.query("SELECT name FROM races");
    const db_races = rows.length;
    const json_races = Object.keys(races).length;

    const json_races_names = Object.values(races).map(
        (race) => race.name
    );
    const db_races_names = rows.map((race) => race.name);
    if (db_races < json_races) {
        for (const name of json_races_names) {
            const index = json_races_names.indexOf(name)
            if (!db_races_names.includes(name)) {
                const { name, games, description, img } =
                    Object.values(races)[index];
                const games_id = []
                for (const game of games) {
                    if (game == "") {
                        const { rows } = await db.query("SELECT id FROM games")
                        rows.forEach((game) => {
                            games_id.push(game.id)
                        })
                    } else {
                        const { rows } = await db.query("SELECT id FROM games WHERE name = $1",[game])
                        games_id.push(rows[0].id)
                    }
                }
                await db.query(
                    "INSERT INTO races VALUES (DEFAULT,$1,$2,$3,$4)",
                    [name, games_id, description, img]
                );
            }
        }
    } else if (db_races > json_races) {
        for (const name of db_races_names) {
            if (!json_races_names.includes(name)) {
                await db.query("DELETE FROM races WHERE name = $1",[name])
            }
        }
    }
}
