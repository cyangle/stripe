#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::PaymentIntentPaymentMethodOptionsAcssDebit
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/payment_intent_payment_method_options_acss_debit"

describe Stripe::PaymentIntentPaymentMethodOptionsAcssDebit do
  describe "test an instance of PaymentIntentPaymentMethodOptionsAcssDebit" do
    it "should create an instance of PaymentIntentPaymentMethodOptionsAcssDebit" do
      # instance = Stripe::PaymentIntentPaymentMethodOptionsAcssDebit.new
      # (instance).should be_a(Stripe::PaymentIntentPaymentMethodOptionsAcssDebit)
    end
  end

  describe "test attribute 'mandate_options'" do
    it "should work" do
      # instance = Stripe::PaymentIntentPaymentMethodOptionsAcssDebit.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'setup_future_usage'" do
    it "should work" do
      # instance = Stripe::PaymentIntentPaymentMethodOptionsAcssDebit.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentIntentPaymentMethodOptionsAcssDebit::ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE
      # validator.allowable_values.each do |value|
      #   instance.setup_future_usage = value.as(String)
      # end
    end
  end

  describe "test attribute 'verification_method'" do
    it "should work" do
      # instance = Stripe::PaymentIntentPaymentMethodOptionsAcssDebit.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentIntentPaymentMethodOptionsAcssDebit::ENUM_VALIDATOR_FOR_VERIFICATION_METHOD
      # validator.allowable_values.each do |value|
      #   instance.verification_method = value.as(String)
      # end
    end
  end
end
