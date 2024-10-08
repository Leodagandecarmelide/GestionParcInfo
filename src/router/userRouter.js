const express = require("express")

const router = express.Router()

const { getAll, getOne } = require('../controller/userController')

//get http://localhost:3310/api/user
router.get('/', getAll) 
//get http://localhost:3310/api/user/1
router.get('/:id', getOne) 
module.exports = router    