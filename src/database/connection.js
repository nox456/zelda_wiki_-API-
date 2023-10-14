import pg from "pg"

const db = new pg.Pool({
    database: "zeldadb",
    user: "postgres",
    host: "localhost"
})

export default db
