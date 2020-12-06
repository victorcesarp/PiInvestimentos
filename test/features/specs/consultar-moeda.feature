# language: pt
# encoding: UTF-8

@consulta
Funcionalidade: Consultar moeda por ID

@consultasucesso
Cenario: Consultar moeda por ID com sucesso
    Dado que eu possua uma lista de id de moedas
    Quando eu informar o id valido "CLP"
    Entao deve retornar os dados referente a moeda

@consultainvalido
Cenario: Consultar moeda com ID invalido
    Dado que eu possua uma lista de id de moedas
    Quando eu informar o id valido "AAA"
    Entao deve apresentar resposta de id nao encontrado