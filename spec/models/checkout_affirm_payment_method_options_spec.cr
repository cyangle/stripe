#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-08-01
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::CheckoutAffirmPaymentMethodOptions
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::CheckoutAffirmPaymentMethodOptions do
  describe "test an instance of CheckoutAffirmPaymentMethodOptions" do
    it "should create an instance of CheckoutAffirmPaymentMethodOptions" do
      # instance = Stripe::CheckoutAffirmPaymentMethodOptions.new
      # (instance).should be_a(Stripe::CheckoutAffirmPaymentMethodOptions)
    end
  end

  describe "test attribute 'setup_future_usage'" do
    it "should work" do
      # instance = Stripe::CheckoutAffirmPaymentMethodOptions.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::CheckoutAffirmPaymentMethodOptions::ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE
      # validator.allowable_values.each do |value|
      #   instance.setup_future_usage = value.as(String)
      # end
    end
  end
end