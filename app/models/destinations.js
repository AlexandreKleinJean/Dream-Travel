const { Model, DataTypes } = require('sequelize');
const getConnexion = require('../../connection/sequelizeConnexion');

class Destinations extends Model {}

Destinations.init(
    {
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