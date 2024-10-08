const db = require ('./db.js')

const findAll = async () => {
    try {
        const [users] = await db.query ('select * from users')
        return users
    } catch(error) { 
        console.error (error)
    }
}

const findOne = async(id) => {
    const [user] = await db.query('SELECT * FROM parcinfo.users where idusers = ? ', [id])
    return user
}

module.exports = { findAll, findOne }