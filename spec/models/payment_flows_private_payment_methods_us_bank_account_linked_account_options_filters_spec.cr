#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::PaymentFlowsPrivatePaymentMethodsUsBankAccountLinkedAccountOptionsFilters
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/payment_flows_private_payment_methods_us_bank_account_linked_account_options_filters"

describe Stripe::PaymentFlowsPrivatePaymentMethodsUsBankAccountLinkedAccountOptionsFilters do
  describe "test an instance of PaymentFlowsPrivatePaymentMethodsUsBankAccountLinkedAccountOptionsFilters" do
    it "should create an instance of PaymentFlowsPrivatePaymentMethodsUsBankAccountLinkedAccountOptionsFilters" do
      # instance = Stripe::PaymentFlowsPrivatePaymentMethodsUsBankAccountLinkedAccountOptionsFilters.new
      # (instance).should be_a(Stripe::PaymentFlowsPrivatePaymentMethodsUsBankAccountLinkedAccountOptionsFilters)
    end
  end

  describe "test attribute 'account_subcategories'" do
    it "should work" do
      # instance = Stripe::PaymentFlowsPrivatePaymentMethodsUsBankAccountLinkedAccountOptionsFilters.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentFlowsPrivatePaymentMethodsUsBankAccountLinkedAccountOptionsFilters::ENUM_VALIDATOR_FOR_ACCOUNT_SUBCATEGORIES
      # validator.allowable_values.each do |value|
      #   instance.account_subcategories = value.as(Array(String))
      # end
    end
  end
end