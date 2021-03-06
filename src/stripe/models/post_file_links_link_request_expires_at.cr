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
  # A future timestamp after which the link will no longer be usable, or `now` to expire the link immediately.
  alias PostFileLinksLinkRequestExpiresAt = BusinessProfileSpecsSupportUrlOneOf | Int64 | PostCustomersCustomerRequestTrialEndOneOf
end
