#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::CustomerMappingParam
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/customer_mapping_param"

describe Stripe::CustomerMappingParam do
  describe "test an instance of CustomerMappingParam" do
    it "should create an instance of CustomerMappingParam" do
      # instance = Stripe::CustomerMappingParam.new
      # (instance).should be_a(Stripe::CustomerMappingParam)
    end
  end

  describe "test attribute 'event_payload_key'" do
    it "should work" do
      # instance = Stripe::CustomerMappingParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute '_type'" do
    it "should work" do
      # instance = Stripe::CustomerMappingParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::CustomerMappingParam::ENUM_VALIDATOR_FOR__TYPE
      # validator.allowable_values.each do |value|
      #   instance._type = value.as(String)
      # end
    end
  end
end
