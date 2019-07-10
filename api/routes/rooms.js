var express = require('express');
var router = express.Router();

router.get('/', function(req, res, next) {
  let query = "SELECT * FROM rooms ORDER BY room_code ASC";
  db.query(query, (err, result) => {
    if (err) {
      res.redirect('/');
    }
    res.setHeader('Content-Type', 'application/json');
    res.end(JSON.stringify(result));
  });
});

module.exports = router;
