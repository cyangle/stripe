#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-08-01
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::PaymentIntentPaymentMethodOptionsLink
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::PaymentIntentPaymentMethodOptionsLink do
  describe "test an instance of PaymentIntentPaymentMethodOptionsLink" do
    it "should create an instance of PaymentIntentPaymentMethodOptionsLink" do
      # instance = Stripe::PaymentIntentPaymentMethodOptionsLink.new
      # (instance).should be_a(Stripe::PaymentIntentPaymentMethodOptionsLink)
    end
  end

  describe "test attribute 'capture_method'" do
    it "should work" do
      # instance = Stripe::PaymentIntentPaymentMethodOptionsLink.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentIntentPaymentMethodOptionsLink::ENUM_VALIDATOR_FOR_CAPTURE_METHOD
      # validator.allowable_values.each do |value|
      #   instance.capture_method = value.as(String)
      # end
    end
  end

  describe "test attribute 'persistent_token'" do
    it "should work" do
      # instance = Stripe::PaymentIntentPaymentMethodOptionsLink.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'setup_future_usage'" do
    it "should work" do
      # instance = Stripe::PaymentIntentPaymentMethodOptionsLink.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentIntentPaymentMethodOptionsLink::ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE
      # validator.allowable_values.each do |value|
      #   instance.setup_future_usage = value.as(String)
      # end
    end
  end
end
