require('dotenv').config();

const express = require("express")
const PORT = 8888
const router = require('./app/router');
const app = express()

const session = require("express-session");


app.set("view engine", "ejs")
app.set("views","./app/views")

app.use(express.static("./public"));

app.use(express.urlencoded({extended: true}));

app.use(session({
    secret: '@@@3987398CDIUEHIUH3D98D3UOIHD3O',
    resave: false,
    saveUninitialized: true,
}))

app.use(router);

app.listen(PORT, () => {
    console.log(`Listening on http://localhost:${process.env.PORT}`);
});