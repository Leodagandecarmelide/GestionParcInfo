const db = require ('./db.js')

const findAll = async () => {
    try {
        const [pcs] = await db.query ('select * from pc')
        return pcs
    } catch(error) { 
        console.error (error)
    }
}

const findOne = async(id) => {
    const [user] = await db.query('SELECT * FROM parcinfo.pc where idpc = ? ', [id])
    return user
}

module.exports = { findAll, findOne }