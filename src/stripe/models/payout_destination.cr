#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./bank_account_future_requirements"
require "./bank_account_requirements"
require "./card_account"
require "./card_customer"
require "./deleted_external_account"
require "./external_account"
require "./token_card_networks"

module Stripe
  # ID of the bank account or card the payout is sent to.
  alias PayoutDestination = DeletedExternalAccount | ExternalAccount | String
end
