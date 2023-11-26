import db from "../database/connection.js"

const tableName = "races"

export default class Race {
    static async getAll() {
        const { rows } = await db.query("SELECT * FROM races")
        return {
            tableName,
            query: {
                field: "all",
                value: null
            },
            data: rows
        }
    }
    static async getById(id) {
        const { rows } = await db.query("SELECT * FROM races WHERE id = $1",[id])
        return {
            tableName,
            query: {
                field: "id",
                value: id
            },
            data: rows[0]
        }
    }
    static async getByName(text) {
        const { rows } = await db.query("SELECT * FROM races")
        const race = rows.filter((rc) => {
            return rc.name.toLowerCase().includes(text.toLowerCase())
        })
        return {
            tableName,
            query: {
                field: "name",
                value: text
            },
            data: race
        }
    }
    static async getByGame(game_id) {
        const { rows } = await db.query("SELECT * FROM races")
        const race = rows.filter((rc) => {
            return rc.games_id.includes(game_id)
        })
        return {
            tableName,
            query: {
                field: "game_id",
                value: game_id
            },
            data: race
        }
    }
}
