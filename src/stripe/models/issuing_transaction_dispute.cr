#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./balance_transaction"
require "./issuing_dispute"
require "./issuing_dispute_evidence"
require "./issuing_dispute_transaction"
require "./issuing_dispute_treasury1"

module Stripe
  # If you've disputed the transaction, the ID of the dispute.
  alias IssuingTransactionDispute = IssuingDispute | String
end
