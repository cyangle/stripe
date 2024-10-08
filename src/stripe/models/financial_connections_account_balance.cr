#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./bank_connections_resource_balance"
require "./bank_connections_resource_balance_api_resource_cash_balance"
require "./bank_connections_resource_balance_api_resource_credit_balance"

module Stripe
  # The most recent information about the account's balance.
  alias FinancialConnectionsAccountBalance = BankConnectionsResourceBalance
end
