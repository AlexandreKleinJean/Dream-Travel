const { Router } = require('express');
const generalController = require('./controllers/generalController');
const flightController = require('./controllers/flightController')
const hotelController = require('./controllers/hotelController');
const authController = require('./controllers/authController');

const router = Router();

//-----------------------------General----------------------------//
router.get("/", generalController.homePage)
router.get("/contact", generalController.contact)
router.post("/contact/submit", generalController.contactSubmit)
router.get("/hotels/favorites", generalController.favorites)
router.get("/hotels/favorites/:id", generalController.addToFavorites)

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