const { Model, DataTypes } = require('sequelize');
const getConnexion = require('../../data/sequelizeConnexion');

class Hotels extends Model {}

Hotels.init(
    {
        name: {
            type: DataTypes.TEXT,
        },
        destination_id: {
            type: DataTypes.INTEGER,
        },
        review: {
            type: DataTypes.INTEGER,
        },
        price: {
            type: DataTypes.INTEGER,
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