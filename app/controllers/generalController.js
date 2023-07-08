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
