#COMUM
Dado("que eu possua uma lista de id de moedas") do
    @consultarmoeda = ConsultarMoeda.new
end

Quando("eu informar o id valido {string}") do |idmoeda|
    @idMoeda = idmoeda
    @resposta = @consultarmoeda.consultar(@idMoeda)
end

#VALIDACAO DE ID VALIDO
Entao("deve retornar os dados referente a moeda") do
    expect(@resposta.code).to eq 200
    expect(@resposta["id"]).to include "#{@idMoeda}"
end

#VALIDACAO DE ID NAO ENCONTRADO
Entao("deve apresentar resposta de id nao encontrado") do
    expect(@resposta.code).to eq 404
    expect(@resposta["message"]).to include "Currency with id #{@idMoeda} not found."
end