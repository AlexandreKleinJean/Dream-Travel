const Sequelize = require("sequelize")
const { Destinations, Flights, Hotels } = require('../models');
const { Op } = require("sequelize");

const flightController = {

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

  async budgetFlights(req, res) {
    const userCriterias = {
      departure: req.body.departure,
      budget: req.body.budget,
      destination: req.body.destination
    };
  try {
    const availableFlights = await Flights.findAll({
      include: {
        model: Destinations,
        as: 'destinations',
        where: { country: userCriterias.destination },
      },
      where: {
        price: {
          [Op.lte]: userCriterias.budget,
        },
      },
    });
    res.render('flights', { availableFlights, noDestination: userCriterias.destination, departure: userCriterias.departure });
  } catch (error) {
    console.error(error);
    res.status(500).send(`An error occurred with the database:\n${error.message}`);
  }
},

  async selectedFlight(req, res) {
    const flightId = req.params.id
    try {
      const flight = await Flights.findByPk(flightId, {
        include:{
          model: Destinations,
          as: 'destinations'
          }
        })
      res.render('flight', {flight});
    } catch (error) {
      console.error(error);
      res.status(500).send(`An error occured with the database :\n${error.message}`);
    }
  },
  
}
module.exports = flightController;