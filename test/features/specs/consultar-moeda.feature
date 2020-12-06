# language: pt
# encoding: UTF-8

@consulta
Funcionalidade: Consultar moeda por ID

@consultasucesso
Cenario: Consultar moeda por ID com sucesso
    Dado que eu informe o id "CLP"
    Quando eu consultar o id
    Entao deve retornar os dados referente a moeda

@consultainvalido
Cenario: Consultar moeda com ID invalido
    Dado que eu informe o id "AAA"
    Quando eu consultar o id
    Entao deve apresentar resposta de id nao encontrado