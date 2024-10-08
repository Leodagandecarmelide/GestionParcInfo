require ("dotenv").config()

const app = require("./src/app") 


const port = process.env.APP_PORT

app.listen(port, (err) => {
    if (err) {
        console.error(err)
    }else {
        console.log(`server adress : http://localhost:${port}`);
         
    }
}) 