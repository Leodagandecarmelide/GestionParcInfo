const {findAll, findOne, addOne} =require('../model/userModel')
const validateUser = require('../validator/userValidator.js')

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

const createOne = async (req,res) => {
    const newUser = req.body
    console.log('route create one', newUser)
    const errors = validateUser(newUser)
    if (errors) {
        return res.status(401).send(errors)
    }
    const result = await addOne(newUser)
    res.status (201).send(result) 
}


module.exports = { getAll, getOne, createOne } 