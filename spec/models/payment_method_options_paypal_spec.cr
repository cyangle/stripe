#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::PaymentMethodOptionsPaypal
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/payment_method_options_paypal"

describe Stripe::PaymentMethodOptionsPaypal do
  describe "test an instance of PaymentMethodOptionsPaypal" do
    it "should create an instance of PaymentMethodOptionsPaypal" do
      # instance = Stripe::PaymentMethodOptionsPaypal.new
      # (instance).should be_a(Stripe::PaymentMethodOptionsPaypal)
    end
  end

  describe "test attribute 'capture_method'" do
    it "should work" do
      # instance = Stripe::PaymentMethodOptionsPaypal.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentMethodOptionsPaypal::ENUM_VALIDATOR_FOR_CAPTURE_METHOD
      # validator.allowable_values.each do |value|
      #   instance.capture_method = value.as(String)
      # end
    end
  end

  describe "test attribute 'preferred_locale'" do
    it "should work" do
      # instance = Stripe::PaymentMethodOptionsPaypal.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'reference'" do
    it "should work" do
      # instance = Stripe::PaymentMethodOptionsPaypal.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'setup_future_usage'" do
    it "should work" do
      # instance = Stripe::PaymentMethodOptionsPaypal.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentMethodOptionsPaypal::ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE
      # validator.allowable_values.each do |value|
      #   instance.setup_future_usage = value.as(String)
      # end
    end
  end
end