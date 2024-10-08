#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./custom_field_params"

module Stripe
  # A list of up to 4 custom fields to be displayed on the invoice.
  alias PostInvoicesRequestCustomFields = Array(CustomFieldParams) | String
end
