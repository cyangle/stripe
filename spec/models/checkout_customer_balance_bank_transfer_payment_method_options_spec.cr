#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::CheckoutCustomerBalanceBankTransferPaymentMethodOptions
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/checkout_customer_balance_bank_transfer_payment_method_options"

describe Stripe::CheckoutCustomerBalanceBankTransferPaymentMethodOptions do
  describe "test an instance of CheckoutCustomerBalanceBankTransferPaymentMethodOptions" do
    it "should create an instance of CheckoutCustomerBalanceBankTransferPaymentMethodOptions" do
      # instance = Stripe::CheckoutCustomerBalanceBankTransferPaymentMethodOptions.new
      # (instance).should be_a(Stripe::CheckoutCustomerBalanceBankTransferPaymentMethodOptions)
    end
  end

  describe "test attribute 'eu_bank_transfer'" do
    it "should work" do
      # instance = Stripe::CheckoutCustomerBalanceBankTransferPaymentMethodOptions.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'requested_address_types'" do
    it "should work" do
      # instance = Stripe::CheckoutCustomerBalanceBankTransferPaymentMethodOptions.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::CheckoutCustomerBalanceBankTransferPaymentMethodOptions::ENUM_VALIDATOR_FOR_REQUESTED_ADDRESS_TYPES
      # validator.allowable_values.each do |value|
      #   instance.requested_address_types = value.as(Array(String))
      # end
    end
  end

  describe "test attribute '_type'" do
    it "should work" do
      # instance = Stripe::CheckoutCustomerBalanceBankTransferPaymentMethodOptions.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::CheckoutCustomerBalanceBankTransferPaymentMethodOptions::ENUM_VALIDATOR_FOR__TYPE
      # validator.allowable_values.each do |value|
      #   instance._type = value.as(String)
      # end
    end
  end
end
