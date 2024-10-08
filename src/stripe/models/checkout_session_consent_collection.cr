#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./payment_pages_checkout_session_consent_collection"
require "./payment_pages_checkout_session_consent_collection_payment_method_reuse_agreement"

module Stripe
  # When set, provides configuration for the Checkout Session to gather active consent from customers.
  alias CheckoutSessionConsentCollection = PaymentPagesCheckoutSessionConsentCollection
end
