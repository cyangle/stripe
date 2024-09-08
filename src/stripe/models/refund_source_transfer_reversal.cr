#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./fee_refund_balance_transaction"
require "./transfer_reversal"
require "./transfer_reversal_destination_payment_refund"
require "./transfer_reversal_source_refund"
require "./transfer_reversal_transfer"

module Stripe
  # The transfer reversal that's associated with the refund. Only present if the charge came from another Stripe account.
  alias RefundSourceTransferReversal = String | TransferReversal
end
