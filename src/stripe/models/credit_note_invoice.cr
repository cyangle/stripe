#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./automatic_tax"
require "./connect_account_reference"
require "./discounts_resource_discount_amount"
require "./invoice"
require "./invoice_account_tax_ids_inner"
require "./invoice_application"
require "./invoice_charge"
require "./invoice_customer"
require "./invoice_customer_address"
require "./invoice_customer_shipping"
require "./invoice_default_payment_method"
require "./invoice_default_source"
require "./invoice_discount"
require "./invoice_discounts_inner"
require "./invoice_from_invoice"
require "./invoice_last_finalization_error"
require "./invoice_latest_revision"
require "./invoice_lines_list"
require "./invoice_on_behalf_of"
require "./invoice_payment_intent"
require "./invoice_quote"
require "./invoice_rendering"
require "./invoice_setting_custom_field"
require "./invoice_shipping_cost"
require "./invoice_shipping_details"
require "./invoice_subscription"
require "./invoice_subscription_details"
require "./invoice_tax_amount"
require "./invoice_test_clock"
require "./invoice_threshold_reason"
require "./invoice_transfer_data1"
require "./invoices_payment_settings"
require "./invoices_resource_invoice_tax_id"
require "./invoices_resource_status_transitions"
require "./tax_rate"

module Stripe
  # ID of the invoice.
  alias CreditNoteInvoice = Invoice | String
end
