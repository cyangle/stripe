#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./currency_option"
require "./currency_option_custom_unit_amount"
require "./price"
require "./price_product"
require "./price_recurring"
require "./price_tier"
require "./price_transform_quantity"

module Stripe
  # The price used to generate the line item.
  alias ItemPrice = Price
end
