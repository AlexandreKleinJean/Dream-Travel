const { Router } = require('express');
const generalController = require('./controllers/generalController');
const flightController = require('./controllers/flightController')
const hotelController = require('./controllers/hotelController');
const favoritesController = require('./controllers/favoritesController');
const authController = require('./controllers/authController');

const router = Router();

//-----------------------------General----------------------------//
router.get("/", generalController.homePage)
router.get("/contact", generalController.contact)
router.post("/contact/submit", generalController.contactSubmit)

//------------------------Flights functions-----------------------//
router.get("/destinations", flightController.destinationsList)
router.get("/destination/:id", flightController.oneDestination)
/*router.get("/flights", flightController.flightsList)*/
router.post("/flights", flightController.budgetFlights)
router.get("/flights/:id", flightController.selectedFlight)

//------------------------Hotels functions------------------------//
router.get("/hotels", hotelController.hotelsList)
router.get("/hotels/:id", hotelController.oneHotel)
router.get("/destination/:id/hotels", hotelController.hotelsByDestination)

//------------------------------Favorites-----------------------------//
router.get("/favorites", favoritesController.favorites)
router.get("/favorites/add/:id", favoritesController.addToFavorites)
router.get("/favorites/remove/:id", favoritesController.removeFromFavorites)


//------------------------------Login/register-----------------------------//
router.get("/login", authController.login)
router.get("/register", authController.register)

//------------------------Admin operations------------------------//
/*
router.get("/admin/login", sequelizeController.adminLogin)
router.post("/login/admin", sequelizeController.admin)
router.post("/admin/addflight", sequelizeController.addFlight)
router.post("/admin/addhotel", sequelizeController.addHotel)
*/
//----------------------------------------------------------------//
module.exports = router;