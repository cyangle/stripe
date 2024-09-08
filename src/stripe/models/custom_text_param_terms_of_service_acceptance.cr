#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./custom_text_position_param"

module Stripe
  # Custom text that should be displayed in place of the default terms of service agreement text.
  alias CustomTextParamTermsOfServiceAcceptance = CustomTextPositionParam | String
end
