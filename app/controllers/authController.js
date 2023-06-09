const { Users } = require('../models');

const sequelizeController = {
    
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