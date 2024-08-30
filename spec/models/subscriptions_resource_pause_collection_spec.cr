#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::SubscriptionsResourcePauseCollection
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/subscriptions_resource_pause_collection"

describe Stripe::SubscriptionsResourcePauseCollection do
  describe "test an instance of SubscriptionsResourcePauseCollection" do
    it "should create an instance of SubscriptionsResourcePauseCollection" do
      # instance = Stripe::SubscriptionsResourcePauseCollection.new
      # (instance).should be_a(Stripe::SubscriptionsResourcePauseCollection)
    end
  end

  describe "test attribute 'behavior'" do
    it "should work" do
      # instance = Stripe::SubscriptionsResourcePauseCollection.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::SubscriptionsResourcePauseCollection::ENUM_VALIDATOR_FOR_BEHAVIOR
      # validator.allowable_values.each do |value|
      #   instance.behavior = value.as(String)
      # end
    end
  end

  describe "test attribute 'resumes_at'" do
    it "should work" do
      # instance = Stripe::SubscriptionsResourcePauseCollection.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
