#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::SubscriptionCancelUpdatingParam
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/subscription_cancel_updating_param"

describe Stripe::SubscriptionCancelUpdatingParam do
  describe "test an instance of SubscriptionCancelUpdatingParam" do
    it "should create an instance of SubscriptionCancelUpdatingParam" do
      # instance = Stripe::SubscriptionCancelUpdatingParam.new
      # (instance).should be_a(Stripe::SubscriptionCancelUpdatingParam)
    end
  end

  describe "test attribute 'cancellation_reason'" do
    it "should work" do
      # instance = Stripe::SubscriptionCancelUpdatingParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'enabled'" do
    it "should work" do
      # instance = Stripe::SubscriptionCancelUpdatingParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'mode'" do
    it "should work" do
      # instance = Stripe::SubscriptionCancelUpdatingParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::SubscriptionCancelUpdatingParam::ENUM_VALIDATOR_FOR_MODE
      # validator.allowable_values.each do |value|
      #   instance.mode = value.as(String)
      # end
    end
  end

  describe "test attribute 'proration_behavior'" do
    it "should work" do
      # instance = Stripe::SubscriptionCancelUpdatingParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::SubscriptionCancelUpdatingParam::ENUM_VALIDATOR_FOR_PRORATION_BEHAVIOR
      # validator.allowable_values.each do |value|
      #   instance.proration_behavior = value.as(String)
      # end
    end
  end
end
