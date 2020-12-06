#COMUM
Dado("que eu informe o id {string}") do |idmoeda|
    @idMoeda = idmoeda
    @consultarmoeda = ConsultarMoeda.new
end

Quando("eu consultar o id") do
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