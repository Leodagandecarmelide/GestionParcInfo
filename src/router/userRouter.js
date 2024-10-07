const express = require("express")

const router = express.Router()

const { getAll } = require('../controller/userController')

//get http://localhost:3310/api/user
router.get('/', getAll) 

module.exports = router   