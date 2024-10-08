#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./transfer"
require "./transfer_balance_transaction"
require "./transfer_destination"
require "./transfer_destination_payment"
require "./transfer_reversal_list"
require "./transfer_source_transaction"

module Stripe
  # The transfer ID which created this charge. Only present if the charge came from another Stripe account. [See the Connect documentation](https://docs.stripe.com/connect/destination-charges) for details.
  alias ChargeSourceTransfer = String | Transfer
end
