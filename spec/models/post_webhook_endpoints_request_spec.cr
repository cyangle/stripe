#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::PostWebhookEndpointsRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::PostWebhookEndpointsRequest do
  describe "test an instance of PostWebhookEndpointsRequest" do
    it "should create an instance of PostWebhookEndpointsRequest" do
      # instance = Stripe::PostWebhookEndpointsRequest.new
      # (instance).should be_a(Stripe::PostWebhookEndpointsRequest)
    end
  end

  describe "test attribute 'api_version'" do
    it "should work" do
      # instance = Stripe::PostWebhookEndpointsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PostWebhookEndpointsRequest::ENUM_VALIDATOR_FOR_API_VERSION
      # validator.allowable_values.each do |value|
      #   instance.api_version = value.as(String)
      # end
    end
  end

  describe "test attribute 'connect'" do
    it "should work" do
      # instance = Stripe::PostWebhookEndpointsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'description'" do
    it "should work" do
      # instance = Stripe::PostWebhookEndpointsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'enabled_events'" do
    it "should work" do
      # instance = Stripe::PostWebhookEndpointsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PostWebhookEndpointsRequest::ENUM_VALIDATOR_FOR_ENABLED_EVENTS
      # validator.allowable_values.each do |value|
      #   instance.enabled_events = value.as(Array(String))
      # end
    end
  end

  describe "test attribute 'expand'" do
    it "should work" do
      # instance = Stripe::PostWebhookEndpointsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'metadata'" do
    it "should work" do
      # instance = Stripe::PostWebhookEndpointsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'url'" do
    it "should work" do
      # instance = Stripe::PostWebhookEndpointsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
