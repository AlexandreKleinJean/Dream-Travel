const Sequelize = require("sequelize")
const { Destinations, Flights, Hotels } = require('../models');
const { Op } = require("sequelize");

const sequelizeController = {

//-----------------------------General----------------------------//

blabla(req, res) {
  res.render("blabla")
},

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
      const allDestinations = await Destinations.findAll({ 
      });
      res.render('destinations', {results:allDestinations});
    } catch (error) {
      console.error(error);
      res.status(500).send(`An error occured with the database :\n${error.message}`);
    }
  },

  async oneDestination(req, res) {
    try {
    const destinationId = req.params.id
    const clickedDestination = await Destinations.findByPk(destinationId)
    res.render('oneDestination', {destination:clickedDestination});
    } catch (error) {
    console.error(error);
    res.status(500).send(`An error occured with the database :\n${error.message}`);
    }
  },

  async flightsList(req, res) {
    try {
      const allFlights = await Flights.findAll();
      res.render('flights', {results:allFlights});
    } catch (error) {
      console.error(error);
      res.status(500).send(`An error occured with the database :\n${error.message}`);
    }
  },

  async budgetDestinations(req, res) {
    const query = req.query
    console.log(query)
    const userCriterias = req.body
    try {
      const searchResults = await Flights.findAll({
        where: {
          destination: userCriterias.destination,
          price:{[Op.lte]: userCriterias.budget}
        },
      });
      res.render('flights', {results:searchResults, userCriterias});
    } catch (error) {
      console.error(error);
      res.status(500).send(`An error occured with the database :\n${error.message}`);
    }
  },
  
  

//-----------------------------Hotels functions----------------------------//

      async hotelsList(req, res) {
        try {
          const allHotels = await Hotels.findAll({
            include:['destinations'],
            /*order:  ['destination_id']*/
          });
          res.render('hotels', {allHotels});
        } catch (error) {
          console.error(error);
          res.status(500).send(`An error occured with the database :\n${error.message}`);
        }
      },

      async oneHotel(req, res) {
        try {
        const hotelId = req.params.id
        const clickedHotel = await Hotels.findByPk(hotelId,
          {include:'destinations'})
        res.render('oneHotel', {hotel:clickedHotel});
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

//---------------------------------Login---------------------------------//
      connection(req, res) {
        res.render('connection');
      },


//---------------------------Admin operations----------------------------//

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

//-------------------------------------------------------------------------//
}
module.exports = sequelizeController;