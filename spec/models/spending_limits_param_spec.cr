#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::SpendingLimitsParam
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/spending_limits_param"

describe Stripe::SpendingLimitsParam do
  describe "test an instance of SpendingLimitsParam" do
    it "should create an instance of SpendingLimitsParam" do
      # instance = Stripe::SpendingLimitsParam.new
      # (instance).should be_a(Stripe::SpendingLimitsParam)
    end
  end

  describe "test attribute 'amount'" do
    it "should work" do
      # instance = Stripe::SpendingLimitsParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'categories'" do
    it "should work" do
      # instance = Stripe::SpendingLimitsParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::SpendingLimitsParam::ENUM_VALIDATOR_FOR_CATEGORIES
      # validator.allowable_values.each do |value|
      #   instance.categories = value.as(Array(String))
      # end
    end
  end

  describe "test attribute 'interval'" do
    it "should work" do
      # instance = Stripe::SpendingLimitsParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::SpendingLimitsParam::ENUM_VALIDATOR_FOR_INTERVAL
      # validator.allowable_values.each do |value|
      #   instance.interval = value.as(String)
      # end
    end
  end
end
