#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./shipping_rate_delivery_estimate_bound"

module Stripe
  # The upper bound of the estimated range. If empty, represents no upper bound i.e., infinite.
  alias ShippingRateDeliveryEstimateMaximum = ShippingRateDeliveryEstimateBound
end
