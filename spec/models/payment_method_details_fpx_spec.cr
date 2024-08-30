#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::PaymentMethodDetailsFpx
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/payment_method_details_fpx"

describe Stripe::PaymentMethodDetailsFpx do
  describe "test an instance of PaymentMethodDetailsFpx" do
    it "should create an instance of PaymentMethodDetailsFpx" do
      # instance = Stripe::PaymentMethodDetailsFpx.new
      # (instance).should be_a(Stripe::PaymentMethodDetailsFpx)
    end
  end

  describe "test attribute 'account_holder_type'" do
    it "should work" do
      # instance = Stripe::PaymentMethodDetailsFpx.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentMethodDetailsFpx::ENUM_VALIDATOR_FOR_ACCOUNT_HOLDER_TYPE
      # validator.allowable_values.each do |value|
      #   instance.account_holder_type = value.as(String)
      # end
    end
  end

  describe "test attribute 'bank'" do
    it "should work" do
      # instance = Stripe::PaymentMethodDetailsFpx.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentMethodDetailsFpx::ENUM_VALIDATOR_FOR_BANK
      # validator.allowable_values.each do |value|
      #   instance.bank = value.as(String)
      # end
    end
  end

  describe "test attribute 'transaction_id'" do
    it "should work" do
      # instance = Stripe::PaymentMethodDetailsFpx.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
