#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./issuing_card_apple_pay"
require "./issuing_card_google_pay"
require "./issuing_card_wallets"

module Stripe
  # Information relating to digital wallets (like Apple Pay and Google Pay).
  alias IssuingCardWallets1 = IssuingCardWallets
end