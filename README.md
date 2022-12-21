# stripe

***Experimental Stripe API Client!***

The Crystal module for the Stripe API

The Stripe REST API. Please see https://stripe.com/docs/api for more details.

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project with CUSTOM templates:

- API version: 2020-08-27
- Package version: 0.0.2
- Build package: org.openapitools.codegen.languages.CrystalClientCodegen
- Custom templates: [crystal_client_generator](https://github.com/cyangle/crystal_client_generator)

For more information, please visit [https://stripe.com](https://stripe.com)

## Installation

### Install from Git

Add the following to shard.yaml

```yaml
dependencies:
  stripe:
    github: cyangle/stripe
    version: ~> 0.0.2
```

## Usage

**Warning:** *Experimental Stripe SDK, use at your own risk!*

Check [here](https://stripe.com/docs/api) for more information about how to use stripe APIs.

Below lists only a few examples of the most interesting APIs, the client should support APIs provided by the stripe OpenAPI specification file as it's generated from the OpenAPI v3 specification `./stripe_api_v104.json`.

### JSON serialization

This shard uses [nason](https://github.com/cyangle/nason) for JSON (de)serialization.

### Require this shard in your project

First you need to require it.

```crystal
require "stripe"
```

### Configure client with stripe credentials

```crystal
Stripe.configure do |config|
  config.access_token = "STRIPE_API_KEY"
end
```

You can try stripe APIs with their test API key: `sk_test_4eC39HqLyjWDarjtT1zdp7dc`

### Create an instance of Stripe::DefaultApi

```crystal
api = Stripe::DefaultApi.new
```

#### Get balance

```crystal
balance = api.get_balance
pp balance
```

## Development

Install dependencies

```shell
shards
```

Run the tests:

```shell
crystal spec
```

Run lints

```shell
./bin/ameba
crystal tool format --check
```
