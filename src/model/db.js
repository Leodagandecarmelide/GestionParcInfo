const mysql = require ('mysql2/promise')

const {
    DB_HOST, DB_PORT, DB_USER, DB_PASSWORD, DB_NAME } = process.env

    const pool =mysql.createPool({
    host: DB_HOST,
    user: DB_USER,
    password: DB_PASSWORD,
    database: DB_NAME,
    port: DB_PORT,
        
    })

module.exports = pool    