import pg from "pg"

const db = new pg.Pool({
    database: process.env.DB_HOST,
    user: process.env.DB_USER,
    host: process.env.DB_HOST,
    password: process.env.DB_PASSWORD
})

export default db
