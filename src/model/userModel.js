const db = require ('./db.js')

const findAll = assync () => {
    try {
        const [users] = await db.query ('select * from user')
        return user
    } catch(error) {
        console.error (error)
    }
}

module.exports = { findAll }