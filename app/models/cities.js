const { Model, DataTypes } = require('sequelize');
const getConnexion = require('../../connection/sequelizeConnexion');

class Cities extends Model {}

Cities.init(
    {
        name: {
            type: DataTypes.TEXT,
        },
        destinations_id: {
            type: DataTypes.TEXT,
        },
    },
    {
        sequelize: getConnexion(),
        tableName:'cities',
    })

module.exports = Cities;