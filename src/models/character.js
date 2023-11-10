import db from "../database/connection.js";

const tableName = "characters";

export default class Character {
    static async getAll() {
        const { rows } = await db.query("SELECT * FROM characters");
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
        const { rows } = await db.query(
            "SELECT * FROM characters WHERE id = $1",
            [id]
        );
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
        const { rows } = await db.query("SELECT * FROM characters");
        const chars = [];
        rows.forEach((char) => {
            if (char.games_id.includes(game_id)) {
                chars.push(char);
            }
        });
        return {
            tableName,
            query: {
                field: "game_id",
                value: game_id
            },
            data: chars
        }
    }
    static async getByRace(race_id) {
        const { rows } = await db.query("SELECT * FROM characters");
        const chars = [];
        rows.forEach((char) => {
            if (char.race_id == race_id) {
                chars.push(char);
            }
        });
        return {
            tableName,
            query: {
                field: "race_id",
                value: race_id
            },
            data: chars
        }
    }
    static async getByName(text) {
        const { rows } = await db.query("SELECT * FROM characters");
        const chars = [];
        rows.forEach((char) => {
            if (char.name.toLowerCase().includes(text.toLowerCase())) {
                chars.push(char);
            }
        });
        return {
            tableName,
            query: {
                field: "name",
                value: text
            },
            data: chars
        }
    }
}
