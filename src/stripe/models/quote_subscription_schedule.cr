#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./subscription_schedule"
require "./subscription_schedule_application"
require "./subscription_schedule_current_phase1"
require "./subscription_schedule_customer"
require "./subscription_schedule_phase_configuration"
require "./subscription_schedule_subscription"
require "./subscription_schedule_test_clock"
require "./subscription_schedules_resource_default_settings"

module Stripe
  # The subscription schedule that was created or updated from this quote.
  alias QuoteSubscriptionSchedule = String | SubscriptionSchedule
end
