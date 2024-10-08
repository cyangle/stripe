#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./tax_amount_with_tax_rate_param"

module Stripe
  # A list of up to 10 tax amounts for the credit note line item. Cannot be mixed with `tax_rates`.
  alias CreditNoteLineItemParamsTaxAmounts = Array(TaxAmountWithTaxRateParam) | String
end
