#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::PaymentIntentPaymentMethodOptionsSepaDebit
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::PaymentIntentPaymentMethodOptionsSepaDebit do
  describe "test an instance of PaymentIntentPaymentMethodOptionsSepaDebit" do
    it "should create an instance of PaymentIntentPaymentMethodOptionsSepaDebit" do
      # instance = Stripe::PaymentIntentPaymentMethodOptionsSepaDebit.new
      # (instance).should be_a(Stripe::PaymentIntentPaymentMethodOptionsSepaDebit)
    end
  end

  describe "test attribute 'mandate_options'" do
    it "should work" do
      # instance = Stripe::PaymentIntentPaymentMethodOptionsSepaDebit.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'setup_future_usage'" do
    it "should work" do
      # instance = Stripe::PaymentIntentPaymentMethodOptionsSepaDebit.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentIntentPaymentMethodOptionsSepaDebit::ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE
      # validator.allowable_values.each do |value|
      #   instance.setup_future_usage = value.as(String)
      # end
    end
  end
end
