// models
var db = require('../../database/index.js'); // For database connection, if connection is created in other file, I think you could change this temporarily.

module.exports = {
  // getAll: function (callback) {
  //   db.query('SELECT messages FROM messages', (err, results) => {
  //     callback(err, results);
  //   });
  // some query execution here.

  //
  getReviews: (id, callback) => {
    let strQuery = `SELECT product_id, rating, date, summary, body, reviewer_name, recommend, helpfulness  FROM reviews where product_id = ${id};`;
    db.query(strQuery, (err, result) => {
      callback(err, result.rows);
    });
  },

  addReview: (body, callback) => {
    let strQuery = `INSERT INTO reviews (product_id,rating, date, summary, body, recommend, reported, reviewer_name, reviewer_email, response, helpfulness) VALUES (${body.product_id}, ${body.rating}, ${body.date}, ${body.summary}, ${body.body}, ${body.recommend}, ${body.reported}, ${reviewer_name}, ${reviewer_email}, ${body.response}, ${body.helpfulness});`;
    db.query(strQuery, (err, result) => {
      callback(err, result.rows);
    })
  },

  addCharacteristics: (body, callback) => {
    let strQuery = `INSERT INTO characteristics (product_id, name) VALUES(${body.product_id},${body.name});`;
    db.query(strQuery, (err, result) => {
      callback(err, results.rows);
    })
  },

  addReviewsPhoto: (body, callback) => {
    let strQuery = `IINSERT INTO reviews_photos (review_id, url) VALUES(${body.review_id}, ${body.url});`;
    db.query(strQuery, (err, result) => {
      callback(err, results.rows);
    });
  }
};