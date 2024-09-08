#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./issuing_physical_bundle"
require "./issuing_physical_bundle_features"

module Stripe
  # The physical bundle object belonging to this personalization design.
  alias IssuingPersonalizationDesignPhysicalBundle = IssuingPhysicalBundle | String
end
