const express = require("express")

const router = express.Router()

const { getAll, getOne } = require('../controller/pcController')

router.get('/', getAll) 
router.get('/:id', getOne) 

module.exports = router   