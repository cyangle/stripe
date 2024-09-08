#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./application"
require "./deleted_application"

module Stripe
  # ID of the Connect Application that created the schedule.
  alias SubscriptionScheduleApplication = Application | DeletedApplication | String
end
