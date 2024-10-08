const db = require ('./db.js')

const findAll = async () => {
    try {
        const [users] = await db.query ('select * from user')
        return users
    } catch(error) { 
        console.error (error)
    }
}

module.exports = { findAll }