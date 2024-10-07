const mysql = require ('mysql2/promise')

const {
    DB_HOST, DB_PORT, DB_USER, DB_PASSWORD, DB_NAME, TOKEN_SECRET } = process.env

    const pool =mysql.createPool({
        DB_HOST,
        DB_PORT,
        DB_USER,
        DB_PASSWORD,
        DB_NAME,
        TOKEN_SECRET=secrettoken,
    })

module.exports = pool    