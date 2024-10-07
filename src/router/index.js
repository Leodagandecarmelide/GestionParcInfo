const express = require("express")

const router = express.Router()

const userRouter = require(`./userRouter`)
const pcRouter = require(`./pcRouter`)

// http://localhost:3310/

router.use('/user',userRouter)
router.use('/pc',pcRouter)


module.exports = router 