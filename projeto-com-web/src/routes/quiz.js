var express = require("express");
var router = express.Router();

var quizController = require("../controllers/quizController");


router.get("/", function (req, res) {
    res.render("index");
});


router.post("/registrarPontos", function (req, res) {
    quizController.registrarPontos(req, res);
});

module.exports = router;