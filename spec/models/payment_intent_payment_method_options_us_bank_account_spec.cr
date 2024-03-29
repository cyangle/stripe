#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::PaymentIntentPaymentMethodOptionsUsBankAccount
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::PaymentIntentPaymentMethodOptionsUsBankAccount do
  describe "test an instance of PaymentIntentPaymentMethodOptionsUsBankAccount" do
    it "should create an instance of PaymentIntentPaymentMethodOptionsUsBankAccount" do
      # instance = Stripe::PaymentIntentPaymentMethodOptionsUsBankAccount.new
      # (instance).should be_a(Stripe::PaymentIntentPaymentMethodOptionsUsBankAccount)
    end
  end

  describe "test attribute 'financial_connections'" do
    it "should work" do
      # instance = Stripe::PaymentIntentPaymentMethodOptionsUsBankAccount.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'setup_future_usage'" do
    it "should work" do
      # instance = Stripe::PaymentIntentPaymentMethodOptionsUsBankAccount.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentIntentPaymentMethodOptionsUsBankAccount::ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE
      # validator.allowable_values.each do |value|
      #   instance.setup_future_usage = value.as(String)
      # end
    end
  end

  describe "test attribute 'verification_method'" do
    it "should work" do
      # instance = Stripe::PaymentIntentPaymentMethodOptionsUsBankAccount.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentIntentPaymentMethodOptionsUsBankAccount::ENUM_VALIDATOR_FOR_VERIFICATION_METHOD
      # validator.allowable_values.each do |value|
      #   instance.verification_method = value.as(String)
      # end
    end
  end
end
