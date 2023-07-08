const { Hotels } = require("../models");

const favoritesController = {

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
        return;
      }
      else{
      req.session.favorites.push(selectedHotel);
      res.redirect("/hotels")
    }
  },

  removeFromFavorites: async function(req, res) {
    
    const hotelId = req.params.id
    const newFavorites = req.session.favorites.filter(
        (element) => Number(element.id) !== Number(hotelId)
    );

    req.session.favorites = newFavorites
    res.redirect("/favorites")
  },

}

module.exports = favoritesController; 
