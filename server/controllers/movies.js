const asyncHandler = require('express-async-handler');
const carModel = require('../model/movies.js');

const getMovies = asyncHandler(async (req, res) => {
  const { code, data } = await carModel.getMovies();
  res.status(code).json(data);
});

const deleteCar = asyncHandler(async (req, res) => {
  const { code, data } = await carModel.deleteCar(req.params.id);
  res.status(code).json(data);
});

const addCar = asyncHandler(async (req, res) => {
  const { code, data } = await carModel.addCar(req.body);
  res.status(code).json(data);
});

const changeStatusCar = asyncHandler(async (req, res) => {
  const { code, data } = await carModel.changeStatusCar(req.params.id, req.body);
  res.status(code).json(data);
});

module.exports = { getMovies, deleteCar, addCar, changeStatusCar };
