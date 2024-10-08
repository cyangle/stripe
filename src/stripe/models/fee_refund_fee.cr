#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./application_fee"
require "./application_fee_account"
require "./application_fee_application"
require "./application_fee_balance_transaction"
require "./application_fee_charge"
require "./application_fee_fee_source"
require "./application_fee_originating_transaction"
require "./fee_refund_list"

module Stripe
  # ID of the application fee that was refunded.
  alias FeeRefundFee = ApplicationFee | String
end
