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
  # ID of the Customer this PaymentIntent belongs to, if one exists.  Payment methods attached to other Customers cannot be used with this PaymentIntent.  If [setup_future_usage](https://stripe.com/docs/api#payment_intent_object-setup_future_usage) is set and this PaymentIntent's payment method is not `card_present`, then the payment method attaches to the Customer after the PaymentIntent has been confirmed and any required actions from the user are complete. If the payment method is `card_present` and isn't a digital wallet, then a [generated_card](https://docs.stripe.com/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card is created and attached to the Customer instead.
  alias PaymentIntentCustomer = Customer | DeletedCustomer | String
end
