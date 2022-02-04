require 'rest-client'
require 'json'

url = 'https://viacep.com.br/ws/01001000/json/'

resp = RestClient.get "#{url}"

puts resp.code
puts JSON.parse(resp.body)
