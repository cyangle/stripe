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
require "./promotion_code"
require "./promotion_code_customer"
require "./promotion_codes_resource_restrictions"

module Stripe
  # ID of the promotion code to create a new discount for.
  alias DiscountsResourceStackableDiscountPromotionCode = PromotionCode | String
end
