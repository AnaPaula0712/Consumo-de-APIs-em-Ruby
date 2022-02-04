require 'rest-client'
require 'json'

# Search cocktail by name
url = 'https://www.thecocktaildb.com/api/json/v1/1/search.php?'
s = 'negroni'

resp = RestClient.get "#{url}s=#{s}"

puts resp.code
puts JSON.parse(resp.body)

puts "##############################################################################################################################"

# List all cocktails by first letter
f = 'm'

resp = RestClient.get "#{url}f=#{f}"

puts resp.code
puts JSON.parse(resp.body)
puts JSON.parse(resp.body)['Drink']

puts "##############################################################################################################################"
