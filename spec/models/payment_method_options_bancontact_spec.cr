#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::PaymentMethodOptionsBancontact
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/payment_method_options_bancontact"

describe Stripe::PaymentMethodOptionsBancontact do
  describe "test an instance of PaymentMethodOptionsBancontact" do
    it "should create an instance of PaymentMethodOptionsBancontact" do
      # instance = Stripe::PaymentMethodOptionsBancontact.new
      # (instance).should be_a(Stripe::PaymentMethodOptionsBancontact)
    end
  end

  describe "test attribute 'preferred_language'" do
    it "should work" do
      # instance = Stripe::PaymentMethodOptionsBancontact.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentMethodOptionsBancontact::ENUM_VALIDATOR_FOR_PREFERRED_LANGUAGE
      # validator.allowable_values.each do |value|
      #   instance.preferred_language = value.as(String)
      # end
    end
  end

  describe "test attribute 'setup_future_usage'" do
    it "should work" do
      # instance = Stripe::PaymentMethodOptionsBancontact.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentMethodOptionsBancontact::ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE
      # validator.allowable_values.each do |value|
      #   instance.setup_future_usage = value.as(String)
      # end
    end
  end
end
