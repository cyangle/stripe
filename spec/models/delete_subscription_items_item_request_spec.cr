#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::DeleteSubscriptionItemsItemRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::DeleteSubscriptionItemsItemRequest do
  describe "test an instance of DeleteSubscriptionItemsItemRequest" do
    it "should create an instance of DeleteSubscriptionItemsItemRequest" do
      # instance = Stripe::DeleteSubscriptionItemsItemRequest.new
      # (instance).should be_a(Stripe::DeleteSubscriptionItemsItemRequest)
    end
  end

  describe "test attribute 'clear_usage'" do
    it "should work" do
      # instance = Stripe::DeleteSubscriptionItemsItemRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'proration_behavior'" do
    it "should work" do
      # instance = Stripe::DeleteSubscriptionItemsItemRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::DeleteSubscriptionItemsItemRequest::ENUM_VALIDATOR_FOR_PRORATION_BEHAVIOR
      # validator.allowable_values.each do |value|
      #   instance.proration_behavior = value.as(String)
      # end
    end
  end

  describe "test attribute 'proration_date'" do
    it "should work" do
      # instance = Stripe::DeleteSubscriptionItemsItemRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
