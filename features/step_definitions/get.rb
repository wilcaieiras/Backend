#language: pt

Dado("que acesso um endpoint") do
  @endereco = "http://api.postmon.com.br/v1/cep/07748425"
end

Quando("realizar uma requisição GET") do
  @retorno = HTTParty.get @endereco
end

Entao("validar dados e o contrato através de um schema") do
  expect(@retorno.response.code).to eql "200"
  puts @retorno.response.code
  expect(@retorno.parsed_response["estado_info"]).to eql "area_km2" => "248.221,996", "codigo_ibge" => "35", "nome" => "São Paulo"
  puts @retorno.parsed_response["estado_info"]
  expect(@retorno.parsed_response["cidade_info"]).to eql "area_km2" => "97,642", "codigo_ibge" => "3509007"
  puts @retorno.parsed_response["cidade_info"]
  expect(@retorno.body).to match_json_schema("schema")
end
