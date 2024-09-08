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
require "./confirmation_tokens_resource_payment_method_preview_customer"
require "./payment_method"
require "./payment_method_acss_debit"
require "./payment_method_au_becs_debit"
require "./payment_method_bacs_debit"
require "./payment_method_boleto"
require "./payment_method_card"
require "./payment_method_card_present"
require "./payment_method_cashapp"
require "./payment_method_eps"
require "./payment_method_fpx"
require "./payment_method_ideal"
require "./payment_method_interac_present"
require "./payment_method_klarna"
require "./payment_method_link"
require "./payment_method_p24"
require "./payment_method_paypal"
require "./payment_method_sepa_debit"
require "./payment_method_sofort"
require "./payment_method_us_bank_account"
require "./radar_radar_options"

module Stripe
  # ID of a payment method that's attached to the customer, to be used as the customer's default payment method for subscriptions and invoices.
  alias InvoiceSettingCustomerSettingDefaultPaymentMethod = PaymentMethod | String
end
