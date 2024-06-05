var express = require("express");
var router = express.Router();

var perfilController = require("../controllers/perfilController");


router.put("/editar/:idUsuario", function (req, res) {
    perfilController.editar(req, res);
});         



module.exports = router;