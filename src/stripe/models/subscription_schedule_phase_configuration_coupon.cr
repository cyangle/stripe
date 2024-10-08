#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./coupon"
require "./coupon_applies_to"
require "./coupon_currency_option"
require "./deleted_coupon"

module Stripe
  # ID of the coupon to use during this phase of the subscription schedule.
  alias SubscriptionSchedulePhaseConfigurationCoupon = Coupon | DeletedCoupon | String
end
