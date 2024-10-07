const mysql = require ('mysql2/promise')

const {
    DB_HOST, DB_PORT, DB_USER, DB_PASSWORD, DB_NAME } = process.env