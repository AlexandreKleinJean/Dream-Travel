const { Model, DataTypes } = require('sequelize');
const getConnexion = require('../../connection/sequelizeConnexion');

class Hotels extends Model {}

Hotels.init(
    {
        name: {
            type: DataTypes.TEXT,
        },
        destinations_id: {
            type: DataTypes.INTEGER,
        },
        cities_id: {
            type: DataTypes.INTEGER,
        },
        review: {
            type: DataTypes.INTEGER,
        },
        price: {
            type: DataTypes.INTEGER,
        },
        image_general: {
            type: DataTypes.TEXT,
        },
        image_restaurant: {
            type: DataTypes.TEXT,
        },
        image_pool: {
            type: DataTypes.TEXT,
        },
        description: {
            type: DataTypes.TEXT,
        },
    },
    {
        sequelize: getConnexion(),
        tableName:'hotels',
    })

module.exports = Hotels;