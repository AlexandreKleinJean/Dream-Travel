const Sequelize = require("sequelize")
const { Destinations, Flights, Hotels } = require('../models');
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
      const availableFlights = await Flights.findAll({
        include:{
          model: Destinations,
          as: 'destinations',
          where: {country: userCriterias.destination,
          }
        },
        where: {
          price:{
            [Op.lte]: userCriterias.budget
          }
        },
      });
      res.render('flights', {availableFlights, noDestination: userCriterias.destination});
    } catch (error) {
      console.error(error);
      res.status(500).send(`An error occured with the database :\n${error.message}`);
    }
  },

//-----------------------------Hotels functions----------------------------//

      async hotelsList(req, res) {
        try {
          const url = req.url
          const allHotels = await Hotels.findAll({
            include:['destinations'],
          });
          res.render('hotels', {allHotels, url});
        } catch (error) {
          console.error(error);
          res.status(500).send(`An error occured with the database :\n${error.message}`);
        }
      },

      async hotelsByDestination(req, res) {
        try {
          const url = req.url
          const destinationId = req.params.id;
          const hotelsByDestination = await Hotels.findAll({
            where: { 'destinations_id': destinationId },
            include: ['destinations', 'cities']
          });
          res.render('hotels', {allHotels:hotelsByDestination, url});
        } catch (error) {
          console.error(error);
          res.status(500).send(`An error occurred with the database:\n${error.message}`);
        }
      },      

      async oneHotel(req, res) {
        try {
        const hotelId = req.params.id
        const clickedHotel = await Hotels.findByPk(hotelId,
          {include:['destinations', 'cities']})
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
      login(req, res) {
        res.render('login');
      },

//---------------------------Admin operations----------------------------//
/*
      adminLogin(req, res) {
        res.render('adminLogin');
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
*/
//-------------------------------------------------------------------------//
}
module.exports = sequelizeController;