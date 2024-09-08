#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./api_errors"
require "./payment_intent"
require "./payment_method"
require "./payment_source"
require "./setup_intent"

module Stripe
  # The payment error encountered in the previous PaymentIntent confirmation. It will be cleared if the PaymentIntent is later updated for any reason.
  alias PaymentIntentLastPaymentError = ApiErrors
end
