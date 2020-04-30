# httparty e cucumber e testes de contrato com json_matchers
Consumir API postmon usando httparty e cucumber, validando campos e o contrato da requisição com json_matchers.

## Pré-requisito


É necessário a instalação do Bundle:

```
gem install bundler
```

## Clonando o repositório

Clone o Repositório:

```
git clone https://github.com/wilcaieiras/backend.git
```

## Instalação das dependências

Após a clonagem do repositório digite:

```
bundle install
```

Isto fará a instalação das dependências necessárias para a execução dos testes.

## Execução dos Testes

Para executar os testes abra uma nova aba no terminal e digite:

```
cucumber
```

## Arquitetura do Projeto

```
├── features
│   ├── schemas              - Schemas usados para os testes de contrato
│   │   └── schema.json
│   ├── step_definitions     - Snippets para implementar os testes
│   │   └── get.rb
│   └── support              - Requisição das gens e configuração da pasta Schema
│   │   └── env.rb
│   ├── get.feature          - Feature escrita para os testes
│
│── .gitignore
├── Gemfile                  - Dependencias usada no projeto
├── Gemfile.lock             - Versões das gens instaladas
├── README.md   
```

