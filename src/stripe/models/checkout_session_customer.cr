#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./apms_sources_source_list"
require "./customer"
require "./customer_address"
require "./customer_cash_balance"
require "./customer_default_source"
require "./customer_discount"
require "./customer_shipping1"
require "./customer_tax"
require "./customer_test_clock"
require "./deleted_customer"
require "./invoice_setting_customer_setting"
require "./subscription_list"
require "./tax_ids_list"

module Stripe
  # The ID of the customer for this Session. For Checkout Sessions in `subscription` mode or Checkout Sessions with `customer_creation` set as `always` in `payment` mode, Checkout will create a new customer object based on information provided during the payment flow unless an existing customer was provided when the Session was created.
  alias CheckoutSessionCustomer = Customer | DeletedCustomer | String
end
