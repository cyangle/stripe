#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::AllPricesRecurringParams
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/all_prices_recurring_params"

describe Stripe::AllPricesRecurringParams do
  describe "test an instance of AllPricesRecurringParams" do
    it "should create an instance of AllPricesRecurringParams" do
      # instance = Stripe::AllPricesRecurringParams.new
      # (instance).should be_a(Stripe::AllPricesRecurringParams)
    end
  end

  describe "test attribute 'interval'" do
    it "should work" do
      # instance = Stripe::AllPricesRecurringParams.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::AllPricesRecurringParams::ENUM_VALIDATOR_FOR_INTERVAL
      # validator.allowable_values.each do |value|
      #   instance.interval = value.as(String)
      # end
    end
  end

  describe "test attribute 'meter'" do
    it "should work" do
      # instance = Stripe::AllPricesRecurringParams.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'usage_type'" do
    it "should work" do
      # instance = Stripe::AllPricesRecurringParams.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::AllPricesRecurringParams::ENUM_VALIDATOR_FOR_USAGE_TYPE
      # validator.allowable_values.each do |value|
      #   instance.usage_type = value.as(String)
      # end
    end
  end
end
