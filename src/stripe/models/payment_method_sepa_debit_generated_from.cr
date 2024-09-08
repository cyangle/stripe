#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./payment_method_card_generated_card_setup_attempt"
require "./sepa_debit_generated_from"
require "./sepa_debit_generated_from_charge"

module Stripe
  # Information about the object that generated this PaymentMethod.
  alias PaymentMethodSepaDebitGeneratedFrom = SepaDebitGeneratedFrom
end
