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
  # The ID of the SEPA Direct Debit PaymentMethod which was generated by this Charge.
  alias PaymentMethodDetailsBancontactGeneratedSepaDebit = PaymentMethod | String
end
