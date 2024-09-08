#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./bank_transfer_param"
require "./installments_param"
require "./invoice_linked_account_options_param"
require "./invoice_payment_method_options_param"
require "./mandate_options_param"

module Stripe
  # This sub-hash contains details about the Bank transfer payment method options to pass to the invoice’s PaymentIntent.
  alias PaymentMethodOptionsCustomerBalance1 = InvoicePaymentMethodOptionsParam | String
end
