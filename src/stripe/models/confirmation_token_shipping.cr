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
require "./confirmation_tokens_resource_shipping"

module Stripe
  # Shipping information collected on this ConfirmationToken.
  alias ConfirmationTokenShipping = ConfirmationTokensResourceShipping
end
