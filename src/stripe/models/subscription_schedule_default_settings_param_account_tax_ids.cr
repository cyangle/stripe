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
  # The account tax IDs associated with the subscription schedule. Will be set on invoices generated by the subscription schedule.
  alias SubscriptionScheduleDefaultSettingsParamAccountTaxIds = Array(String) | String
end
