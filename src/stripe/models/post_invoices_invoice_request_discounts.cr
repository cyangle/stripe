#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./discounts_data_param"

module Stripe
  # The discounts that will apply to the invoice. Pass an empty string to remove previously-defined discounts.
  alias PostInvoicesInvoiceRequestDiscounts = Array(DiscountsDataParam) | String
end
