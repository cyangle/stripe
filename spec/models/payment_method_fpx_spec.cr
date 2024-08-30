#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::PaymentMethodFpx
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/payment_method_fpx"

describe Stripe::PaymentMethodFpx do
  describe "test an instance of PaymentMethodFpx" do
    it "should create an instance of PaymentMethodFpx" do
      # instance = Stripe::PaymentMethodFpx.new
      # (instance).should be_a(Stripe::PaymentMethodFpx)
    end
  end

  describe "test attribute 'account_holder_type'" do
    it "should work" do
      # instance = Stripe::PaymentMethodFpx.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentMethodFpx::ENUM_VALIDATOR_FOR_ACCOUNT_HOLDER_TYPE
      # validator.allowable_values.each do |value|
      #   instance.account_holder_type = value.as(String)
      # end
    end
  end

  describe "test attribute 'bank'" do
    it "should work" do
      # instance = Stripe::PaymentMethodFpx.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentMethodFpx::ENUM_VALIDATOR_FOR_BANK
      # validator.allowable_values.each do |value|
      #   instance.bank = value.as(String)
      # end
    end
  end
end
