#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::PortalSubscriptionCancellationReason
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/portal_subscription_cancellation_reason"

describe Stripe::PortalSubscriptionCancellationReason do
  describe "test an instance of PortalSubscriptionCancellationReason" do
    it "should create an instance of PortalSubscriptionCancellationReason" do
      # instance = Stripe::PortalSubscriptionCancellationReason.new
      # (instance).should be_a(Stripe::PortalSubscriptionCancellationReason)
    end
  end

  describe "test attribute 'enabled'" do
    it "should work" do
      # instance = Stripe::PortalSubscriptionCancellationReason.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'options'" do
    it "should work" do
      # instance = Stripe::PortalSubscriptionCancellationReason.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PortalSubscriptionCancellationReason::ENUM_VALIDATOR_FOR_OPTIONS
      # validator.allowable_values.each do |value|
      #   instance.options = value.as(Array(String))
      # end
    end
  end
end
