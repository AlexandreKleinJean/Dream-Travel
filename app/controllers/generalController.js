const { Hotels } = require("../models");

const generalController = {

  homePage(req, res) {
    res.locals.pageId = "/"
    res.render("home")
  },

  contact(req, res) {
    res.render('contact');
  },

  contactSubmit(req, res) {
    const firstName = req.body.firstName
    res.render('submit',{firstName});
  },

  favorites(req, res) {
    if (!req.session.favorites) {
      req.session.favorites = [];
    }
    res.render('favorites', {favoritesSelection:req.session.favorites});
  },

  async addToFavorites(req, res) {
    
    const hotelId=req.params.id
    const selectedHotel = await Hotels.findByPk(hotelId,
      {include:['destinations', 'cities']})

    if (!req.session.favorites) {
        req.session.favorites = [];
    }

    const sameHotel = req.session.favorites.find(
      (element) => Number(element.id) === Number(hotelId))

    if(sameHotel){
        console.log("Hotel already added in favorites !")
        res.redirect("/hotels/favorites")
      }
      else{
      req.session.favorites.push(selectedHotel);
      res.render("favorites", {favoritesSelection:req.session.favorites})
    }
  },

}
module.exports = generalController; 

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
