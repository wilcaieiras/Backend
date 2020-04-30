#language: pt
Funcionalidade: Utilizar o GET e em seu retorno validar o contrato através de um schema 

Cenario: Retornar status code, estado-info e cidade-info através da requisição GET e validar o schema de contrato
  Dado que acesso um endpoint
  Quando realizar uma requisição GET
  Entao validar dados e o contrato através de um schema
