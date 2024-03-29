#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  # The discounts applied to the quote. You can only set up to one discount.
  alias PostQuotesRequestDiscounts = Array(DiscountsDataParam) | PostAccountsRequestMetadataOneOf
end
