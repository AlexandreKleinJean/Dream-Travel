const Sequelize = require('sequelize');

function getConnexion() {

    const sequelize = new Sequelize(process.env.PG_URL, {
        dialect: process.env.DIALECT,
        define: {
            timestamps: false,
        },
    });


	/*try {
         await sequelize.authenticate();
         console.log('Connection has been established successfully.');
     } catch (error) {
         console.error('Unable to connect to the database:', error);
     }*/
     return sequelize;
}

module.exports = getConnexion;