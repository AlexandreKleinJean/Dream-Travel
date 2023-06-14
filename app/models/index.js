const Destinations = require('./destinations');
const Flights = require('./flights');
const Hotels = require('./hotels');

Destinations.hasMany(Flights, {
    foreignKey: 'destination_id',
    as: 'flights',
});

Destinations.hasMany(Hotels, {
    foreignKey: 'destination_id',
    as: 'hotels',
});

Hotels.belongsTo(Destinations, {
    foreignKey: 'destination_id',
    as: 'destinations',
});

module.exports = { Destinations, Flights, Hotels };