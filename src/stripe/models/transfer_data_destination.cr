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
  # The account (if any) the payment will be attributed to for tax reporting, and where funds from the payment will be transferred to upon payment success.
  alias TransferDataDestination = Account | String

end
