#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./shipping_rate"
require "./shipping_rate_delivery_estimate1"
require "./shipping_rate_fixed_amount"
require "./shipping_rate_tax_code"

module Stripe
  # The ID of the ShippingRate for this invoice.
  alias InvoicesResourceShippingCostShippingRate = ShippingRate | String
end
