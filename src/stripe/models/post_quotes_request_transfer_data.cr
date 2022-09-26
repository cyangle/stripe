#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-08-01
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  # The data with which to automatically create a Transfer for each of the invoices.
  alias PostQuotesRequestTransferData = BusinessProfileSpecsSupportUrlOneOf | TransferDataSpecs6
end
