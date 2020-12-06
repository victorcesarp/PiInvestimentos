Dado("que eu informe o id valido {string}") do |idmoeda|
    @idMoeda = idmoeda
    
    @consultarmoeda = ConsultarMoeda.new
    @consultarmoeda.consultar(@idMoeda)
end
  
Entao("deve retornar os dados referente a moeda") do
    expect(@response.code).to eq 200
end