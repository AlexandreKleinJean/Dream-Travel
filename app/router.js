const { Router } = require('express');
const sequelizeController = require('./controllers/sequelizeController')
const router = Router();


router.get("/blabla", sequelizeController.blabla)
//-----------------------------General----------------------------//
router.get("/", sequelizeController.homePage)
router.get("/contact", sequelizeController.contact)

//------------------------Flights functions-----------------------//
router.get("/destinations", sequelizeController.destinationsList)
router.get("/destination/:id", sequelizeController.oneDestination)
/*router.get("/flightCompanies", sequelizeController.companiesList)*/
router.get("/flights", sequelizeController.flightsList)
router.post("/destinations", sequelizeController.budgetDestinations)

//------------------------Hotels functions------------------------//
router.get("/hotels", sequelizeController.hotelsList)
router.get("/hotels/:id", sequelizeController.oneHotel)
router.post("/admin/addhotel", sequelizeController.addHotel)

//------------------------------Login-----------------------------//
router.get("/connection", sequelizeController.connection)

//------------------------Admin operations------------------------//
router.get("/login", sequelizeController.login)
router.post("/login/admin", sequelizeController.admin)
router.post("/admin/addflight", sequelizeController.addFlight)

//----------------------------------------------------------------//
module.exports = router;