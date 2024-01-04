import pg from "pg";
import insert_consoles_data from "./data/consoles.js"

const db = new pg.Pool({
    database: process.env.DB_NAME,
    user: process.env.DB_USER,
    host: process.env.DB_HOST,
    password: process.env.DB_PASSWORD,
    port: process.env.DB_PORT,
});

export default db;

await insert_consoles_data()
