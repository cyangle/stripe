#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  # The account (if any) the payments will be attributed to for tax reporting, and where funds from each payment will be transferred to for each of the invoices.
  alias QuoteTransferData = QuotesResourceTransferData
end
