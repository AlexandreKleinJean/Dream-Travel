const { Router } = require('express');
const sequelizeController = require('./controllers/sequelizeController')
const router = Router();

//-----------------------------General----------------------------//
router.get("/", sequelizeController.homePage)

//------------------------Flights functions-----------------------//
router.get("/destinations", sequelizeController.destinationsList)
router.get("/destination/:id", sequelizeController.oneDestination)
/*router.get("/flightCompanies", sequelizeController.companiesList)*/
router.get("/flights", sequelizeController.flightsList)
router.post("/destinations", sequelizeController.budgetDestinations)

//------------------------Hotels functions------------------------//
router.get("/hotels", sequelizeController.hotelsList)
router.get("/hotels/:id", sequelizeController.oneHotel)
router.get("/destination/:id/hotels", sequelizeController.hotelsByDestination)

//----------------------------Contact------------------------------//
router.get("/contact", sequelizeController.contact)
router.post("/contact/submit", sequelizeController.contactSubmit)

//------------------------------Login-----------------------------//
router.get("/login", sequelizeController.login)

//------------------------Admin operations------------------------//
/*
router.get("/admin/login", sequelizeController.adminLogin)
router.post("/login/admin", sequelizeController.admin)
router.post("/admin/addflight", sequelizeController.addFlight)
router.post("/admin/addhotel", sequelizeController.addHotel)
*/
//----------------------------------------------------------------//
module.exports = router;