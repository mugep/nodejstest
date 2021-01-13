const { Sequelize } = require('sequelize');

module.exports = new Sequelize('nodejs1', 'root', '', {
	host: 'localhost',
	dialect: 'mysql',
	operatorsAliases: false
});
