#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./account_bacs_debit_payments_settings"
require "./account_branding_settings"
require "./account_card_issuing_settings"
require "./account_card_payments_settings"
require "./account_dashboard_settings"
require "./account_invoices_settings"
require "./account_payments_settings"
require "./account_payout_settings"
require "./account_sepa_debit_payments_settings"
require "./account_settings"
require "./account_treasury_settings"

module Stripe
  # Options for customizing how the account functions within Stripe.
  alias AccountSettings1 = AccountSettings
end
