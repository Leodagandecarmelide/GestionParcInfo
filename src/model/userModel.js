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

const addOne = async (user) => { 
    const {gender, name, firstname, email, phone} = user 
    const [result] =await db.query('INSERT INTO users (`gender`, `name`, `firstname`, `email`, `phone`) VALUES (?,?,?,?,?)' [gender, name, firstname, email, phone])
    return {id: result.insertId, gender, name, firstname, email, phone,}


  
}

module.exports = { findAll, findOne, addOne }