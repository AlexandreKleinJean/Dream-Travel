const Destinations = require('./destinations');
const Flights = require('./flights');
const Hotels = require('./hotels');
const Cities = require('./cities');

Cities.belongsTo(Destinations, {
    foreignKey: 'destinations_id',
    as: 'destinations',
});

Destinations.hasMany(Flights, {
    foreignKey: 'destinations_id',
    as: 'destinations',
});

Flights.belongsTo(Destinations, {
    foreignKey: 'destinations_id',
    as: 'destinations',
});

Destinations.hasMany(Hotels, {
    foreignKey: 'destinations_id',
    as: 'hotels',
});

Hotels.belongsTo(Cities, {
    foreignKey: 'cities_id',
    as: 'cities',
});

Hotels.belongsTo(Destinations, {
    foreignKey: 'destinations_id',
    as: 'destinations',
});

module.exports = { Destinations, Flights, Hotels, Cities };