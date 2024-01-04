import games from "./json/games.json" assert { type: "json" };
import db from "../connection.js";

export default async function insert_games_data() {
    const { rows } = await db.query("SELECT name FROM games");
    const db_games = rows.length;
    const json_games = Object.keys(games).length;

    const json_games_names = Object.values(games).map((game) => game.name);
    const db_games_names = rows.map((game) => game.name);
    if (db_games < json_games) {
        json_games_names.forEach(async (name, index) => {
            if (!db_games_names.includes(name)) {
                const { name, console_name, release_date, description, img } =
                    Object.values(games)[index];
                const { rows } = await db.query(
                    "SELECT id FROM consoles WHERE name = $1",
                    [console_name]
                );
                const console_id = rows[0].id;
                await db.query(
                    "INSERT INTO games VALUES (DEFAULT,$1,$2,$3,$4,$5)",
                    [name, console_id, release_date, description, img]
                );
            }
        });
    } else if (db_games > json_games) {
        db_games_names.forEach(async (name) => {
            if (!json_games_names.includes(name)) {
                await db.query("DELETE FROM games WHERE name = $1", [name]);
            }
        });
    }
    const all_consoles = await db.query("SELECT id,games_id FROM consoles");
    all_consoles.rows.forEach(async (consl) => {
        const { rows } = await db.query(
            "SELECT id FROM games WHERE console_id = $1",
            [consl.id]
        );
        if (rows.length > 0) {
            const games_id = rows.map((game) => game.id);
            await db.query("UPDATE consoles SET games_id = $1 WHERE id = $2", [
                games_id,
                consl.id,
            ]);
        }
    });
}
