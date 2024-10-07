const {findAll} =require('../model/userModel')

const getAll = (req, res) => { 
    // res.status (200).json ('je suis sur la route http://localhost:3310/api/user ')
    try {
        const users = await findAll()
        res.status(200).json(users)
    } catch (error) {
        ressend.Status(500);
    }
}

module.exports = {getAll}