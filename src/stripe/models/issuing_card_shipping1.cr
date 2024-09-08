#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./address"
require "./issuing_card_shipping"
require "./issuing_card_shipping_address_validation1"
require "./issuing_card_shipping_customs1"

module Stripe
  # Where and how the card will be shipped.
  alias IssuingCardShipping1 = IssuingCardShipping
end