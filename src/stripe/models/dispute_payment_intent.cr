#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./payment_flows_amount_details"
require "./payment_intent"
require "./payment_intent_application"
require "./payment_intent_automatic_payment_methods"
require "./payment_intent_customer"
require "./payment_intent_invoice"
require "./payment_intent_last_payment_error"
require "./payment_intent_latest_charge"
require "./payment_intent_next_action1"
require "./payment_intent_on_behalf_of"
require "./payment_intent_payment_method"
require "./payment_intent_payment_method_configuration_details"
require "./payment_intent_payment_method_options1"
require "./payment_intent_processing1"
require "./payment_intent_review"
require "./payment_intent_shipping"
require "./payment_intent_source"
require "./payment_intent_transfer_data"

module Stripe
  # ID of the PaymentIntent that's disputed.
  alias DisputePaymentIntent = PaymentIntent | String
end
