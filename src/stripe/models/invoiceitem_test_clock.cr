#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./billing_clocks_resource_status_details_status_details"
require "./test_helpers_test_clock"

module Stripe
  # ID of the test clock this invoice item belongs to.
  alias InvoiceitemTestClock = String | TestHelpersTestClock
end
