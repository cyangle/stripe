#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./treasury_transaction"
require "./treasury_transaction_flow_details"
require "./treasury_transactions_resource_abstract_transaction_resource_status_transitions"
require "./treasury_transactions_resource_balance_impact"
require "./treasury_transactions_resource_transaction_entry_list"

module Stripe
  # The Transaction associated with this object.
  alias TreasuryOutboundPaymentTransaction = String | TreasuryTransaction
end
