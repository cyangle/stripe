#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./plan"
require "./plan_product"
require "./plan_tier"
require "./plan_transform_usage"

module Stripe
  # The plan of the subscription, if the line item is a subscription or a proration.
  alias LineItemPlan = Plan
end
