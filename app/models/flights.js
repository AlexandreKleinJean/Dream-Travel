const { Model, DataTypes } = require('sequelize');
const getConnexion = require('../../connection/sequelizeConnexion');

class Flights extends Model {}

Flights.init(
    {
        destination_id: {
            type: DataTypes.INTEGER,
        },
        company: {
            type: DataTypes.TEXT,
        },
        duration: {
            type: DataTypes.INTEGER,
        },
        day_id: {
            type: DataTypes.INTEGER,
        },
        day: {
            type: DataTypes.TEXT,
        },
        time: {
            type: DataTypes.INTEGER,
        },
        price: {
            type: DataTypes.INTEGER,
        },
    },
    {
        sequelize: getConnexion(),
        tableName:'flights',
    })

module.exports = Flights;