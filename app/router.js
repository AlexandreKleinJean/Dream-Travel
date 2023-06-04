const { Router } = require('express');
const mainController = require('./controllers/mainController')
const sequelizeController = require('./controllers/sequelizeController')
const router = Router();

router.get("/", mainController.accueil)

router.get("/flightsDestinations", mainController.flightsDestinationsList)
router.get("/destination/:id", mainController.clickedDestination)

router.get("/flights", mainController.flights)
router.post("/destinations", mainController.budgetDestinationsList)

router.get("/flightCompanies", mainController.flightsCompaniesList)

router.get("/contact", mainController.contact)

router.get("/login", mainController.login)
router.post("/login/admin", mainController.admin)

//------------------------SEQUELIZE----------------------//
router.get("/hotels", sequelizeController.hotelsList)
router.post("/admin/addhotel", sequelizeController.addHotel)
router.post("/admin/addflight", sequelizeController.addFlight)
//------------------------SEQUELIZE----------------------//

module.exports = router;