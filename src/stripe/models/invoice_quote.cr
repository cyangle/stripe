#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./invoice_setting_quote_setting"
require "./invoiceitem_discounts_inner"
require "./payment_link_on_behalf_of"
require "./quote"
require "./quote_application"
require "./quote_customer"
require "./quote_default_tax_rates_inner"
require "./quote_from_quote"
require "./quote_invoice"
require "./quote_subscription"
require "./quote_subscription_schedule"
require "./quote_test_clock"
require "./quote_transfer_data"
require "./quotes_resource_automatic_tax"
require "./quotes_resource_computed"
require "./quotes_resource_list_line_items"
require "./quotes_resource_status_transitions"
require "./quotes_resource_subscription_data_subscription_data"
require "./quotes_resource_total_details"

module Stripe
  # The quote this invoice was generated from.
  alias InvoiceQuote = Quote | String
end
