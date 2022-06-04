#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  # A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
  alias PostProductsIdRequestImages = Array(String) | BusinessProfileSpecsSupportUrlOneOf

end
