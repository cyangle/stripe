#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::PaymentMethodEps
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/payment_method_eps"

describe Stripe::PaymentMethodEps do
  describe "test an instance of PaymentMethodEps" do
    it "should create an instance of PaymentMethodEps" do
      # instance = Stripe::PaymentMethodEps.new
      # (instance).should be_a(Stripe::PaymentMethodEps)
    end
  end

  describe "test attribute 'bank'" do
    it "should work" do
      # instance = Stripe::PaymentMethodEps.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentMethodEps::ENUM_VALIDATOR_FOR_BANK
      # validator.allowable_values.each do |value|
      #   instance.bank = value.as(String)
      # end
    end
  end
end
