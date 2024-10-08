#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./billing_details"
require "./charge"
require "./charge_application"
require "./charge_application_fee"
require "./charge_balance_transaction"
require "./charge_customer"
require "./charge_failure_balance_transaction"
require "./charge_fraud_details1"
require "./charge_invoice"
require "./charge_on_behalf_of"
require "./charge_outcome1"
require "./charge_payment_intent"
require "./charge_payment_method_details"
require "./charge_review"
require "./charge_shipping"
require "./charge_source"
require "./charge_source_transfer"
require "./charge_transfer"
require "./charge_transfer_data1"
require "./level3"
require "./radar_radar_options"
require "./refund_list"

module Stripe
  # Charge that is being refunded.
  alias TerminalReaderReaderResourceRefundPaymentActionCharge = Charge | String
end
