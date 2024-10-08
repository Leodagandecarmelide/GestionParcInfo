const express = require("express")

const router = express.Router()

const { getAll, getOne, createOne } = require('../controller/userController')

//get http://localhost:3310/api/user
router.get('/', getAll) 
//get http://localhost:3310/api/user/1
router.get('/:id', getOne) 
//post http://localhost:3310/api/user/
router.post ('/', createOne) 

module.exports = router    
