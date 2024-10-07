const {findAll} =require('../model/userModel')

const getAll = (req, res) => { 
    try {
        const users = await findAll()
        res.status(200).json(users)
    } catch (error) {
        ressend.Status(500);
    }
}

module.exports = {getAll}