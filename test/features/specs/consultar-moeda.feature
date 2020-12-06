# language: pt
# encoding: UTF-8

Funcionalidade: Consultar moeda por ID

@consulta
Cenario: Consultar moeda por ID com sucesso
    Dado que eu informe o id valido "CLP"
    Entao deve retornar os dados referente a moeda