const { Model, DataTypes } = require('sequelize');
const getConnexion = require('../../data/sequelizeConnexion');

class Destinations extends Model {}

Destinations.init(
    {
        city: {
            type: DataTypes.TEXT,
        },
        country: {
            type: DataTypes.TEXT,
        },
        description: {
            type: DataTypes.TEXT,
        },
    },
    {
        sequelize: getConnexion(),
        tableName:'destinations',
    })

module.exports = Destinations;