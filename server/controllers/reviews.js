const models = require('../models');

module.exports = {
// some method here
  // methodName: function(req, res) {

  // }
  getReviews: (req, res) => {
    console.log('Recive req and in get10Review');
    models.reviews.getReviews(req.params.id, (err, result) => {
      if (err) {
        console.log(err);
      } else {
        res.json(result);
      }
    });
  },

  addReview: (req, res) => {
    console.log('Recive req and in getResponse');
    models.reviews.addReview(req.body, (err, result) => {
      if (err) {
        console.log('err in addReview', err);
      } else {
        res.json(result);
      }
    });
  },

  addCharacteristics: (req, res) => {
    console.log('Recive req and in getResponse');
    models.reviews.addCharacteristics(req.body, (err, result) => {
      if (err) {
        console.log('err in addReview', err);
      } else {
        res.json(result);
      }
    });
  },

  addReviewsPhoto: (req, res) => {
    console.log('Recive req and in getResponse');
    models.reviews.addCharacteristics(req.body, (err, result) => {
      if (err) {
        console.log('err in addReview', err);
      } else {
        res.json(result);
      }
    });
  }
};