const {findAll, findOne} =require('../model/userModel')

const getAll = async (req, res) => { 
    try {
        const users = await findAll()
        res.status(200).json(users)
    } catch (error) {
        res.statustatus(500);
    }
}

const getOne = async (req, res) => {
    try {
        const userId = parseInt(req.params.id)
        const user = await findOne (userId)
        res.status(200).json(user)
    } catch (error)    
    {
        res.sendStatus(500);
     }}    


module.exports = { getAll, getOne } 