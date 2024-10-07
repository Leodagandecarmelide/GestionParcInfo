const express = require("express")

const router = require("./router")

const app = express()

//get http://localhost:3310/
app.get("/", req, res => {
    res.status(200).send("Vous êtes sur le 'http://localhost:3310/")
})

app.use('/api', router)

module.exports = app 