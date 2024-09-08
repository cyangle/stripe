#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./invoice_payment_method_options_us_bank_account"
require "./invoice_payment_method_options_us_bank_account_linked_account_options"

module Stripe
  # If paying by `us_bank_account`, this sub-hash contains details about the ACH direct debit payment method options to pass to the invoice’s PaymentIntent.
  alias InvoicesPaymentMethodOptionsUsBankAccount = InvoicePaymentMethodOptionsUsBankAccount
end
