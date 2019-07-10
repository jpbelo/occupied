var express = require('express');
var router = express.Router();

router.get('/:weekday/:date', function(req, res, next) {
  const date = req.params.date;
  const weekday = req.params.weekday;

  let query = "SELECT * FROM bookings WHERE"
      + ` date = '${date}'`
      + ` OR repeats = 'ALL'`
      + ` OR (repeats = 'WEEK' AND weekday = '${weekday}')`
      + " ORDER BY room_id ASC, time_start ASC";

  db.query(query, (err, result) => {
    if (err) {
      res.redirect('/');
    }
    res.setHeader('Content-Type', 'application/json');
    res.end(JSON.stringify(result));
  });
});

module.exports = router;
