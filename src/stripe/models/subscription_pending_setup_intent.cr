#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./setup_intent"
require "./setup_intent_application"
require "./setup_intent_automatic_payment_methods"
require "./setup_intent_customer"
require "./setup_intent_last_setup_error"
require "./setup_intent_latest_attempt"
require "./setup_intent_mandate"
require "./setup_intent_next_action1"
require "./setup_intent_on_behalf_of"
require "./setup_intent_payment_method"
require "./setup_intent_payment_method_configuration_details"
require "./setup_intent_payment_method_options1"
require "./setup_intent_single_use_mandate"

module Stripe
  # You can use this [SetupIntent](https://stripe.com/docs/api/setup_intents) to collect user authentication when creating a subscription without immediate payment or updating a subscription's payment method, allowing you to optimize for off-session payments. Learn more in the [SCA Migration Guide](https://stripe.com/docs/billing/migration/strong-customer-authentication#scenario-2).
  alias SubscriptionPendingSetupIntent = SetupIntent | String
end
