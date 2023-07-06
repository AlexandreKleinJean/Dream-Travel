const { Hotels } = require('../models');

const hotelController = {

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
      console.log(clickedHotel.destinations.country)
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

}
module.exports = hotelController;