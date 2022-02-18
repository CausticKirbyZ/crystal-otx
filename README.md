# crystal-otx

Crystal shard for AlienVault OTX api.

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     crystal-otx:
       github: CausticKirbyZ/crystal-otx
   ```

2. Run `shards install`

## Usage

```crystal
require "crystal-otx"

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

```

## Development

TODO: Implement the rest of the api. only some endpoints are created so far. I needed the queryable endpoints first.

## Contributing

1. Fork it (<https://github.com/your-github-user/crystal-otx/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [CausticKirbyZ](https://github.com/CausticKirbyZ) - creator and maintainer
