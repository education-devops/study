var express = require('express');
var app = express();

app.get("/", function(req, res) {
    res.status(200).send("Hello From Gitlab");
})

app.listen(8080);
