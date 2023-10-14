import db from "../database/connection.js";

const tableName = "consoles"

export default class Console {
    static async getAll() {
        const { rows } = await db.query("SELECT * FROM consoles");
        return {
            tableName,
            query: {
                field: "all",
                value: null
            },
            data: rows
        };
    }
    static async getById(id) {
        const { rows } = await db.query(
            "SELECT * FROM consoles WHERE id = $1",
            [id]
        );
        return {
            tableName,
            query: {
                field: "id",
                value: id
            },
            data: rows[0]
        };
    }
    static async getByGame(game_id) {
        const { rows } = await db.query("SELECT * FROM consoles");
        let cnsl;
        rows.forEach((elem) => {
            if (elem.games_id.includes(game_id)) {
                cnsl = elem;
            }
        });
        return {
            tableName,
            query: {
                field: "game_id",
                value: game_id
            },
            data: cnsl
        };
    }
    static async getByName(text) {
        const { rows } = await db.query("SELECT * FROM consoles");
        let cnsls = [];
        rows.forEach((elem) => {
            if (elem.name.toLowerCase().includes(text.toLowerCase())) {
                cnsls.push(elem);
            }
        });
        return {
            tableName,
            query: {
                field: "name",
                value: text
            },
            data: cnsls
        }
    }
}
