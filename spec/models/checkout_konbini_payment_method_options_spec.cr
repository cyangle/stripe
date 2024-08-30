#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::CheckoutKonbiniPaymentMethodOptions
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/checkout_konbini_payment_method_options"

describe Stripe::CheckoutKonbiniPaymentMethodOptions do
  describe "test an instance of CheckoutKonbiniPaymentMethodOptions" do
    it "should create an instance of CheckoutKonbiniPaymentMethodOptions" do
      # instance = Stripe::CheckoutKonbiniPaymentMethodOptions.new
      # (instance).should be_a(Stripe::CheckoutKonbiniPaymentMethodOptions)
    end
  end

  describe "test attribute 'expires_after_days'" do
    it "should work" do
      # instance = Stripe::CheckoutKonbiniPaymentMethodOptions.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'setup_future_usage'" do
    it "should work" do
      # instance = Stripe::CheckoutKonbiniPaymentMethodOptions.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::CheckoutKonbiniPaymentMethodOptions::ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE
      # validator.allowable_values.each do |value|
      #   instance.setup_future_usage = value.as(String)
      # end
    end
  end
end
