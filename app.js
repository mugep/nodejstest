const express = require('express');
const exphbs = require('express-handlebars');
const bodyParser = require('body-parser');
const path = require('path');
const db = require('./config/database');
const Data = require('./models/Data');
const Sequelize = require('sequelize');
const Op = Sequelize.Op;

db.authenticate()
	.then(() => {
		console.log('DATABASE CONNECTED');
	})
	.catch((err) => console.log(err));

const app = express();

// //Handlebars
app.engine('handlebars', exphbs({ defaultLayout: 'main' }));
app.set('view engine', 'handlebars');

//body parser
app.use(bodyParser.urlencoded({ extended: false }));

//Set static folder
app.use(express.static(path.join(__dirname, 'public')));

app.get('/', (req, res) => {
	Data.findAll()
		.then((datas) => {
			res.render('index', {
				datas
			});
		})
		.catch((err) => {
			console.log(err);
		});
});

app.get('/add', (req, res) => {
	res.render('add');
});

app.post('/add', (req, res) => {
	let { nama, hp, email, alamat } = req.body;
	let errors = [];

	if (!nama) {
		errors.push({ text: 'Tolong masukan nama' });
	}
	if (!hp) {
		errors.push({ text: 'Tolong masukan no hp' });
	}
	if (!email) {
		errors.push({ text: 'Tolong masukan email' });
	}
	if (!alamat) {
		errors.push({ text: 'Tolong masukan alamat' });
	}

	if (errors.length > 0) {
		res.render('add', {
			errors,
			nama,
			hp,
			email,
			alamat
		});
	} else {
		Data.create({
			nama,
			hp,
			email,
			alamat
		})
			.then((data) => {
				res.redirect('/');
			})
			.catch((err) => console.log(err));
	}
});
app.get('/search', (req, res) => {
	let { term } = req.query;
	term = term.toLowerCase();
	Data.findAll({ where: { nama: { [Op.like]: '%' + term + '%' } } })
		.then((datas) => res.render('index', { datas }))
		.catch((err) => console.log(err));
});

const PORT = process.env.PORT || 5000;

app.listen(PORT, console.log(`Server started on port ${PORT}`));
