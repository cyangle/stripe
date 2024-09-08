#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./issuing_personalization_design"
require "./issuing_personalization_design_card_logo"
require "./issuing_personalization_design_carrier_text1"
require "./issuing_personalization_design_physical_bundle"
require "./issuing_personalization_design_preferences"
require "./issuing_personalization_design_rejection_reasons"

module Stripe
  # The personalization design object belonging to this card.
  alias IssuingCardPersonalizationDesign = IssuingPersonalizationDesign | String
end
