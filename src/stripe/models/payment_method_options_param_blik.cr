#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./bank_transfer_param"
require "./linked_account_options_param"
require "./mandate_options_param"
require "./networks_options_param"
require "./payment_intent_payment_method_options_param"
require "./payment_intent_payment_method_options_param_reference"

module Stripe
  # If this is a `blik` PaymentMethod, this sub-hash contains details about the BLIK payment method options.
  alias PaymentMethodOptionsParamBlik = PaymentIntentPaymentMethodOptionsParam | String
end
