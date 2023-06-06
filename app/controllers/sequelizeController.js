const Hotels = require('../models/hotels')
const Flights = require('../models/flights')
const { Op } = require("sequelize");

const sequelizeController = {

//-----------------------------General----------------------------//

  homePage(req, res) {
    res.locals.pageId = "/"
    res.render("home")
  },

  contact(req, res) {
    res.render('contact');
  },

//-----------------------------Flights functions----------------------------//

  async destinationsList(req, res) {
    try {
      const allFlights = await Flights.findAll({ 
        order:  ['destination'],
        //COMMENT EVITER DUPLICATA ????????
        distinct: true
      });
      res.render('destinations', {results:allFlights});
    } catch (error) {
      console.error(error);
      res.status(500).send(`An error occured with the database :\n${error.message}`);
    }
  },

  async oneDestination(req, res) {
    try {
    const clickedDestination = req.params.id
    const wishedDestination = await Flights.findOne({
      attributes: ['destination'],
      where: {destination: clickedDestination}
    })
    //Objet bizarre à CHECKER !
    res.render('oneDestination', {destination: wishedDestination.dataValues.destination});
    } catch (error) {
    console.error(error);
    res.status(500).send(`An error occured with the database :\n${error.message}`);
    }
  },

  async companiesList(req, res) {
    try {
      const allFlights = await Flights.findAll({
        attributes: ['company'],
        //COMMENT EVITER DUPLICATA ????????
        distinct: true,
      });
      res.render('flightsCompanies', {results:allFlights});
    } catch (error) {
      console.error(error);
      res.status(500).send(`An error occured with the database :\n${error.message}`);
    }
  },

  async budgetDestinations(req, res) {
    const userCriterias = req.body
    try {
      const searchResults = await Flights.findAll({
        where: {
          destination: userCriterias.destination,
          price:{[Op.lte]: userCriterias.budget}
        },
      });
      console.log(searchResults)
      res.render('budgetFlights', {results:searchResults});
    } catch (error) {
      console.error(error);
      res.status(500).send(`An error occured with the database :\n${error.message}`);
    }
  },
  
  

//-----------------------------Hotels functions----------------------------//

      async hotelsList(req, res) {
        try {
          const allHotels = await Hotels.findAll({
            order:  ['country']
          });
          res.render('hotels', {allHotels});
        } catch (error) {
          console.error(error);
          res.status(500).send(`An error occured with the database :\n${error.message}`);
        }
      },

      async addHotel(req, res) {
        Hotels.create({
            name: req.body.name,
            city: req.body.city,
            country: req.body.country,
            review: req.body.review,
            price: req.body.price
        })
        res.render('admin');
      },

//-----------------------------Admin operations----------------------------//

      login(req, res) {
        res.render('login');
      },

      admin(req, res) {
        if(req.body.user==="wookie"){
        res.render("admin")
        }
        else{
        res.render("login")
        }
      },

      async addFlight(req, res){
        Flights.create({
            destination: req.body.name,
            company: req.body.company,
            duration: req.body.duration,
            day_id: req.body.day_id,
            day: req.body.day,
            time: req.body.time,
            price: req.body.price
        })
        res.render('home');
      }

//----------------------------------------------------------------------------//
}
module.exports = sequelizeController;