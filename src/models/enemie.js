import db from "../database/connection.js"

const tableName = "enemies"

export default class Enemie {
    static async getAll() {
        const { rows } = await db.query("SELECT * FROM enemies")
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
        const { rows } = await db.query("SELECT * FROM enemies WHERE id = $1", [id])
        return {
            tableName,
            query: {
                field: "id",
                value: id
            },
            data: rows[0]
        }
    }
    static async getByGame(game_id) {
        const { rows } = await db.query("SELECT * FROM enemies")
        const enemie = rows.filter((enem) => {
            return enem.games_id.includes(game_id)
        })
        return {
            tableName,
            query: {
                field: "game_id",
                value: game_id
            },
            data: enemie
        }
    }
    static async getByCategory(category) {
        const { rows } = await db.query("SELECT * FROM enemies WHERE category = $1",[category])
        return {
            tableName,
            query: {
                field: "category",
                value: category
            },
            data: rows
        }
    }
    static async getByName(text) {
        const { rows } = await db.query("SELECT * FROM enemies")
        const enemie = rows.filter((enem) => {
            return enem.name.toLowerCase().includes(text.toLowerCase())
        })
        return {
            tableName,
            query: {
                field: "name",
                value: text
            },
            data: enemie
        }
    }
}
