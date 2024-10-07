const express = require("express")

const router = express.Router()

const userRouter = require(`./userRouter`)

// http://localhost:3310/
router.use('/user',userRouter)

module.exports = router 