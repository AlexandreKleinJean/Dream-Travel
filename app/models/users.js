const { Model, DataTypes } = require('sequelize');
const getConnexion = require('../../data/sequelizeConnexion');

class Users extends Model {}

Users.init(
    {
        firstname: {
            type: DataTypes.TEXT,
        },
        lastname: {
            type: DataTypes.TEXT,
        },
        email: {
            type: DataTypes.INTEGER,
        },
        password: {
            type: DataTypes.INTEGER,
        },
    },
    {
        sequelize: getConnexion(),
        tableName:'users',
    })

module.exports = Users;