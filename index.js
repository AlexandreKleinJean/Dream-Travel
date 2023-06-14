require('dotenv').config();

const express = require("express")
const PORT = 8888
const router = require('./app/router');
const app = express()

const session = require("express-session");


app.set("view engine", "ejs")
app.set("views","./app/views")

//POUR LIRE LES FICHIERS JS EN PLUS DU CSS ET IMG//
const path = require("path");
app.use(express.static(path.join(__dirname, "public"), {
    setHeaders: (res, filePath) => {
      if (filePath.endsWith(".js")) {
        res.setHeader("Content-Type", "application/javascript");
      }
    },
  }));

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