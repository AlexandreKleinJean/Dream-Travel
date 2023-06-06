const dataMapper=require('../../data/dataMapper');
/*
const mainController = {

    async accueil(req, res) {
      res.locals.pageId = "/"
      res.render("home")

    async flights(req, res) {
      try {
        const allFlights = await dataMapper.showFlights();
        res.render('flights', {results:allFlights});
      } catch (error) {
        console.error(error);
        res.status(500).send(`An error occured with the database :\n${error.message}`);
      }
    },

    async destinationsList(req, res) {
            try {
              const allFlights = await dataMapper.showFlights();
              res.render('destinations', {results:allFlights});
            } catch (error) {
              console.error(error);
              res.status(500).send(`An error occured with the database :\n${error.message}`);
            }
    },

    async budgetDestinationsList(req, res) {
      const userCriterias = req.body
      console.log(userCriterias)
      try {
        const searchResults = await dataMapper.budgetDestination(userCriterias);
        res.render('flights', {results:searchResults});
      } catch (error) {
        console.error(error);
        res.status(500).send(`An error occured with the database :\n${error.message}`);
      }
    },

    async clickedDestination(req, res) {
      const chosenDestination = req.params.id
      try {
        const oneFlight = await dataMapper.showDestination(chosenDestination);
        res.render('destination', {oneFlight});
      } catch (error) {
        console.error(error);
        res.status(500).send(`An error occured with the database :\n${error.message}`);
      }
    },

    async flightsDestinationsList(req, res) {
      try {
        const allDestinations = await dataMapper.showDestinations();
        res.render('destinations', {results:allDestinations});
      } catch (error) {
        console.error(error);
        res.status(500).send(`An error occured with the database :\n${error.message}`);
      }
    },

    /*async flightsCompaniesList(req, res) {
      try {
        const allFlights = await dataMapper.showCompanies();
        res.render('flightsCompanies', {results:allFlights});
      } catch (error) {
        console.error(error);
        res.status(500).send(`An error occured with the database :\n${error.message}`);
      }
    },

    contact(req, res) {
        res.render('contact');
    },

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

}

module.exports = mainController;*/