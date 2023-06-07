const Destinations = require('./destinations');
const Flights = require('./flights');
const Hotels = require('./hotels');

Destinations.hasMany(Flights, {
    foreignKey: 'destination_id',
    as: 'flightsDestinations',
});

Destinations.hasMany(Hotels, {
    foreignKey: 'destination_id',
    as: 'HotelsDestinations',
});

module.exports = { Destinations, Flights, Hotels };