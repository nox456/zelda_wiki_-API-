import enemies from "./json/enemies.json" assert { type: "json" };
import db from "../connection.js";

export default async function insert_enemies_data() {
    const { rows } = await db.query("SELECT name FROM enemies");
    const db_enemies = rows.length;
    const json_enemies = Object.keys(enemies).length;

    const json_enemies_names = Object.values(enemies).map(
        (enemie) => enemie.name
    );
    const db_enemies_names = rows.map((enemie) => enemie.name);
    if (db_enemies < json_enemies) {
        for (const name of json_enemies_names) {
            const index = json_enemies_names.indexOf(name);
            if (!db_enemies_names.includes(name)) {
                const { name, category, games, description, img } =
                    Object.values(enemies)[index];
                const games_id = [];
                for (const game of games) {
                    if (game == "") {
                        const { rows } = await db.query("SELECT id FROM games");
                        rows.forEach((game) => {
                            games_id.push(game.id);
                        });
                    } else {
                        const { rows } = await db.query(
                            "SELECT id FROM games WHERE name = $1",
                            [game]
                        );
                        games_id.push(rows[0].id);
                    }
                }
                await db.query(
                    "INSERT INTO enemies VALUES (DEFAULT,$1,$2,$3,$4,$5)",
                    [name, category, games_id, description, img]
                );
            }
        }
    } else if (db_enemies > json_enemies) {
        for (const name of db_enemies_names) {
            if (!json_enemies_names.includes(name)) {
                await db.query("DELETE FROM enemies WHERE name = $1", [name]);
            }
        }
    }
}
