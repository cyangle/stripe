#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-08-01
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::PaymentMethodOptionsCustomerBalance
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::PaymentMethodOptionsCustomerBalance do
  describe "test an instance of PaymentMethodOptionsCustomerBalance" do
    it "should create an instance of PaymentMethodOptionsCustomerBalance" do
      # instance = Stripe::PaymentMethodOptionsCustomerBalance.new
      # (instance).should be_a(Stripe::PaymentMethodOptionsCustomerBalance)
    end
  end

  describe "test attribute 'bank_transfer'" do
    it "should work" do
      # instance = Stripe::PaymentMethodOptionsCustomerBalance.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'funding_type'" do
    it "should work" do
      # instance = Stripe::PaymentMethodOptionsCustomerBalance.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentMethodOptionsCustomerBalance::ENUM_VALIDATOR_FOR_FUNDING_TYPE
      # validator.allowable_values.each do |value|
      #   instance.funding_type = value.as(String)
      # end
    end
  end

  describe "test attribute 'setup_future_usage'" do
    it "should work" do
      # instance = Stripe::PaymentMethodOptionsCustomerBalance.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentMethodOptionsCustomerBalance::ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE
      # validator.allowable_values.each do |value|
      #   instance.setup_future_usage = value.as(String)
      # end
    end
  end
end
