#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./issuing_card"
require "./issuing_card_authorization_controls"
require "./issuing_card_personalization_design"
require "./issuing_card_replaced_by"
require "./issuing_card_replacement_for"
require "./issuing_card_shipping1"
require "./issuing_card_wallets1"
require "./issuing_cardholder"

module Stripe
  # Card associated with this token.
  alias IssuingTokenCard = IssuingCard | String
end
