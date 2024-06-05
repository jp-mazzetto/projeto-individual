var quizModel = require("../models/quizModel");

function registrarPontos(req, res) {
    var qtdPontos = req.body.qtdPontos;
    // var idUsuario = req.body.idUsuario;
    

    quizModel.registrarPontos(qtdPontos).then(function (resultado) {
        res.status(201).json({ message: "Pontuação guardada com sucesso!" });
    }).catch(function (erro) {
        console.log(erro);
        console.log("Houve um erro ao guardar a pontuação.", erro.sqlMessage);
        res.status(500).json(erro.sqlMessage);
    });
}

module.exports = {
    registrarPontos

}