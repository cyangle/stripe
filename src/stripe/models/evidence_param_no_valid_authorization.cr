#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./canceled_additional_documentation"
require "./canceled_explanation"
require "./no_valid_authorization"

module Stripe
  # Evidence provided when `reason` is 'no_valid_authorization'.
  alias EvidenceParamNoValidAuthorization = NoValidAuthorization | String
end
