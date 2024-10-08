#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::CheckoutAcssDebitPaymentMethodOptions
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/checkout_acss_debit_payment_method_options"

describe Stripe::CheckoutAcssDebitPaymentMethodOptions do
  describe "test an instance of CheckoutAcssDebitPaymentMethodOptions" do
    it "should create an instance of CheckoutAcssDebitPaymentMethodOptions" do
      # instance = Stripe::CheckoutAcssDebitPaymentMethodOptions.new
      # (instance).should be_a(Stripe::CheckoutAcssDebitPaymentMethodOptions)
    end
  end

  describe "test attribute 'currency'" do
    it "should work" do
      # instance = Stripe::CheckoutAcssDebitPaymentMethodOptions.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::CheckoutAcssDebitPaymentMethodOptions::ENUM_VALIDATOR_FOR_CURRENCY
      # validator.allowable_values.each do |value|
      #   instance.currency = value.as(String)
      # end
    end
  end

  describe "test attribute 'mandate_options'" do
    it "should work" do
      # instance = Stripe::CheckoutAcssDebitPaymentMethodOptions.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'setup_future_usage'" do
    it "should work" do
      # instance = Stripe::CheckoutAcssDebitPaymentMethodOptions.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::CheckoutAcssDebitPaymentMethodOptions::ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE
      # validator.allowable_values.each do |value|
      #   instance.setup_future_usage = value.as(String)
      # end
    end
  end

  describe "test attribute 'verification_method'" do
    it "should work" do
      # instance = Stripe::CheckoutAcssDebitPaymentMethodOptions.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::CheckoutAcssDebitPaymentMethodOptions::ENUM_VALIDATOR_FOR_VERIFICATION_METHOD
      # validator.allowable_values.each do |value|
      #   instance.verification_method = value.as(String)
      # end
    end
  end
end
