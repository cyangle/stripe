#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./charge_outcome"
require "./charge_outcome_rule"

module Stripe
  # Details about whether the payment was accepted, and why. See [understanding declines](https://stripe.com/docs/declines) for details.
  alias ChargeOutcome1 = ChargeOutcome
end
