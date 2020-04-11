# zow_token.cr

Zwartopwit Token generator for internal API's.

## Installation

Add the dependency to your `shard.yml`:

```yaml
dependencies:
  zow_token:
    github: bulckens/zow_token.cr
```

Run `shards install`

## Usage

```crystal
require "zow_token"
```

Generate a token:

```crystal
ZowToken.generate("/some/path.json", "supersecret")
```

Or generate one with a specific timestamp:

```crystal
ZowToken.generate("/some/path.json", "supersecret", 1586622186786)
```

## Contributing

1. Fork it (<https://github.com/your-github-user/zow_token/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [wout](https://github.com/your-github-user) - creator and maintainer
