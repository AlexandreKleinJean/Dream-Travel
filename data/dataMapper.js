const client = require('./database');

const dataMapper = {

    async showFlights() {

        const query = "SELECT * FROM flights ORDER BY flights.day";
        const result = await client.query(query);
        return result.rows;
    },

    async showCompanies() {

        const query = "SELECT DISTINCT flights.company FROM flights";
        const result = await client.query(query);
        return result.rows;
    },

    async showDestinations(){

        const query = `SELECT DISTINCT flights.destination FROM flights`;
        const result = await client.query(query);
        return result.rows;
    },

    async showDestination(chosenDestination) {

        const query = `SELECT flights.destination FROM flights WHERE flights.destination='${chosenDestination}'`;
        const result = await client.query(query);
        return result.rows[0];
    },

    async budgetDestination(userCriterias) {
        const query = `SELECT * FROM flights WHERE flights.destination='${userCriterias.destination}' AND flights.price<=${userCriterias.budget}`;
        const result = await client.query(query);
        return result.rows;
    },

    /*    ESSAI SEQUELIZE !!!
    
    async showHotels(){

        const query = "SELECT * FROM hotels";
        const result = await client.query(query);
        return result.rows;
    },*/

}

module.exports = dataMapper;