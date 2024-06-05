var database = require("../database/config");

function registrarPontos(qtdPontos) {
    console.log("ACESSEI O MEDIDA MODEL para registrar os pontos do Quiz", qtdPontos);

    var instrucao = `   
        INSERT INTO pontuacao (qtdPontos) VALUES (${qtdPontos});
        `;

    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

// function registrarAssociativa(idUsuario, idPontuacao) {

//     var instrucao = `   
//         INSERT INTO quiz (fkUsuario, fkPontuacao, dataRealizado) VALUES (${idUsuario}, ${idPontuacao}, now());
//         `;

//     console.log("Executando a instrução SQL: \n" + instrucao);
//     return database.executar(instrucao);
// }



module.exports = {
    registrarPontos
}