const db = require ('./db.js')

const findAll = assync () => {
    try {
        const [pcs] = await db.query ('select * from pc')
        return pc
    } catch(error) { 
        console.error (error)
    }
}

module.exports = { findAll }