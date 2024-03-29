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
  # The account (if any) the charge was made on behalf of for charges associated with the schedule's subscription. See the Connect documentation for details.
  alias SubscriptionSchedulePhaseConfigurationOnBehalfOf = Account | String
end
