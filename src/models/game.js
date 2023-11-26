import db from "../database/connection.js";

const tableName = "games"

export default class Game {
    static async getAll() {
        const { rows } = await db.query("SELECT * FROM games");
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
        const { rows } = await db.query("SELECT * FROM games WHERE id = $1", [
            id,
        ]);
        return {
            tableName,
            query: {
                field: "id",
                value: id
            },
            data: rows[0]
        };
    }
    static async getByName(text) {
        const { rows } = await db.query("SELECT * FROM games")
        const game = rows.filter((gm) => {
            return gm.name.toLowerCase().includes(text.toLowerCase())
        })
        return {
            tableName,
            query: {
                field: "name",
                value: text
            },
            data: game
        }
    }
    static async getByConsole(console_id) {
        const { rows } = await db.query("SELECT * FROM games WHERE console_id = $1", [console_id])
        return {
            tableName,
            query: {
                field: "console_id",
                value: console_id
            },
            data: rows
        }
    }
}
