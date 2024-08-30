#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::EndBehavior
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/end_behavior"

describe Stripe::EndBehavior do
  describe "test an instance of EndBehavior" do
    it "should create an instance of EndBehavior" do
      # instance = Stripe::EndBehavior.new
      # (instance).should be_a(Stripe::EndBehavior)
    end
  end

  describe "test attribute 'missing_payment_method'" do
    it "should work" do
      # instance = Stripe::EndBehavior.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::EndBehavior::ENUM_VALIDATOR_FOR_MISSING_PAYMENT_METHOD
      # validator.allowable_values.each do |value|
      #   instance.missing_payment_method = value.as(String)
      # end
    end
  end
end
