const Sequelize = require('sequelize');
const db = require('../config/database');

const Data = db.define('datas', {
	nama: {
		type: Sequelize.STRING
	},
	hp: {
		type: Sequelize.NUMBER
	},
	email: {
		type: Sequelize.STRING
	},
	alamat: {
		type: Sequelize.STRING
	}
});

module.exports = Data;
