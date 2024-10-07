const express = require("express")

const router = express.Router()

const { getAll } = require('../controller/pcController')

//get http://localhost:3310/api/pc
router.get('/', getAll) 

module.exports = router   