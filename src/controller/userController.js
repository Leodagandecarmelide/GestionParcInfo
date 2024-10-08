const {findAll} =require('../model/userModel')

const getAll = async (req, res) => { 
    try {
        const users = await findAll()
        res.status(200).json(users)
    } catch (error) {
        res.statustatus(500);
    }
}

module.exports = {getAll}