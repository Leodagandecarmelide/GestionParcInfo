const express = require("express")

const router = express.Router()

const { getAll } = require('./controller/user et je suis dans le controller')

//get http://localhost:3310/api/user
router.get('/', getAll) 

module.exports = router   