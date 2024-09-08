#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./issuing_authorization_amount_details1"
require "./issuing_authorization_pending_request"

module Stripe
  # The pending authorization request. This field will only be non-null during an `issuing_authorization.request` webhook.
  alias IssuingAuthorizationPendingRequest1 = IssuingAuthorizationPendingRequest
end
