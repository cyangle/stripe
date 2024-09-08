#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

module Stripe
  # The types of customer updates that are supported. When empty, customers are not updateable.
  alias CustomerUpdateCreationParamAllowedUpdates = Array(String) | String
end
