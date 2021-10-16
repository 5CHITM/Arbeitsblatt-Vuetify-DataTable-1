const express = require('express');
const { getMovies, deleteCar, changeStatusCar, addCar } = require('../controllers/movies.js');

const router = express.Router();

router.get('/movies', getMovies);
router.patch('/cars/:id', changeStatusCar);
router.delete('/cars/:id', deleteCar);
router.post('/cars', addCar);

module.exports = router;
