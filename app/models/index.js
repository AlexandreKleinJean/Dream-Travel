const Destinations = require('./destinations');
const Flights = require('./flights');
const Hotels = require('./hotels');

Destinations.hasMany(Flights, {
    foreignKey: 'destination_id',
    as: 'flightsDestinations',
});

Hotels.belongsTo(Destinations, {
    foreignKey: 'destination_id',
    as: 'destinations',
});

module.exports = { Destinations, Flights, Hotels };