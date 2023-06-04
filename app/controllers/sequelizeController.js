const Hotels = require('../models/hotels')
const Flights = require('../models/flights')

const sequelizeController = {

    async hotelsList(req, res) {
        try {
          const allHotels = await Hotels.findAll();
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
}

module.exports = sequelizeController;