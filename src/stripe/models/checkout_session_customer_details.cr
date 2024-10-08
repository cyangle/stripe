#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./payment_pages_checkout_session_customer_details"
require "./payment_pages_checkout_session_customer_details_address"
require "./payment_pages_checkout_session_tax_id"

module Stripe
  # The customer details including the customer's tax exempt status and the customer's tax IDs. Customer's address details are not present on Sessions in `setup` mode.
  alias CheckoutSessionCustomerDetails = PaymentPagesCheckoutSessionCustomerDetails
end
