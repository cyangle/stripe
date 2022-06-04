#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  # The list of payment method types that customers can use. Only `card` is supported. Pass an empty string to enable automatic payment methods that use your [payment method settings](https://dashboard.stripe.com/settings/payment_methods).
  alias PostPaymentLinksPaymentLinkRequestPaymentMethodTypes = Array(String) | BusinessProfileSpecsSupportUrlOneOf

end
