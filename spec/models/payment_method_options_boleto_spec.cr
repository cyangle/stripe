#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-08-01
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::PaymentMethodOptionsBoleto
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::PaymentMethodOptionsBoleto do
  describe "test an instance of PaymentMethodOptionsBoleto" do
    it "should create an instance of PaymentMethodOptionsBoleto" do
      # instance = Stripe::PaymentMethodOptionsBoleto.new
      # (instance).should be_a(Stripe::PaymentMethodOptionsBoleto)
    end
  end

  describe "test attribute 'expires_after_days'" do
    it "should work" do
      # instance = Stripe::PaymentMethodOptionsBoleto.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'setup_future_usage'" do
    it "should work" do
      # instance = Stripe::PaymentMethodOptionsBoleto.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentMethodOptionsBoleto::ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE
      # validator.allowable_values.each do |value|
      #   instance.setup_future_usage = value.as(String)
      # end
    end
  end
end
