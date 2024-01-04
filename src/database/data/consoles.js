import consoles from "./json/consoles.json" assert { type: "json" };
import db from "../connection.js"

export default async function insert_consoles_data() {
    const { rows } = await db.query("SELECT name FROM consoles");
    const db_consoles = rows.length;
    const json_consoles = Object.keys(consoles).length;

    const json_consoles_names = Object.values(consoles).map(
        (consl) => consl.name
    );
    const db_consoles_names = rows.map((cnsl) => cnsl.name);
    if (db_consoles < json_consoles) {
        json_consoles_names.forEach(async (name, index) => {
            if (!db_consoles_names.includes(name)) {
                const { name, release_date, description, img } =
                    Object.values(consoles)[index];
                await db.query(
                    "INSERT INTO consoles VALUES (DEFAULT,$1,$2,NULL,$3,$4)",
                    [name, release_date, description, img]
                );
            }
        });
    } else if (db_consoles > json_consoles) {
        db_consoles_names.forEach(async name => {
            if (!json_consoles_names.includes(name)) {
                await db.query("DELETE FROM consoles WHERE name = $1",[name])
            }
        })
    }
}
