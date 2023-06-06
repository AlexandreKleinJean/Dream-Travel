const { Model, DataTypes } = require('sequelize');
const getConnexion = require('../../data/sequelizeConnexion');

class Hotels extends Model {}

Hotels.init(
    {
        name: {
            type: DataTypes.TEXT,
        },
        city: {
            type: DataTypes.TEXT,
        },
        country: {
            type: DataTypes.TEXT,
        },
        review: {
            type: DataTypes.INTEGER,
        },
        price: {
            type: DataTypes.INTEGER,
        },

    },
    {
        sequelize: getConnexion(),
        tableName:'hotels',
    })

module.exports = Hotels;

/*--good--*/