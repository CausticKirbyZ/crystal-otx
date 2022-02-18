require "./src/crystal-otx"
require "json"



client = OTX::Client.new()
# this will demo the ipv4 section with cloudflares address 
# the second part is the "section" part of the request
puts client.indicators_ipv4("1.1.1.1").to_json
puts client.indicators_ipv4("1.1.1.1","malware").to_json
puts client.indicators_ipv4("1.1.1.1","reputation").to_json
puts client.indicators_ipv4("1.1.1.1","url_list").to_json
puts client.indicators_ipv4("1.1.1.1","passive_dns").to_json

# dns names can also be looked up
puts client.indicators_domainname("one.one.one.one").to_json

# this is the filehash of mimikatz 
puts client.indicators_filehash("a3cb3b02a683275f7e0a0f8a9a5c9e07").to_json
