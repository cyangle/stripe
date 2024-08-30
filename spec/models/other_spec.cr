#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::Other
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/other"

describe Stripe::Other do
  describe "test an instance of Other" do
    it "should create an instance of Other" do
      # instance = Stripe::Other.new
      # (instance).should be_a(Stripe::Other)
    end
  end

  describe "test attribute 'additional_documentation'" do
    it "should work" do
      # instance = Stripe::Other.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::Other::ENUM_VALIDATOR_FOR_ADDITIONAL_DOCUMENTATION
      # validator.allowable_values.each do |value|
      #   instance.additional_documentation = value.as(String)
      # end
    end
  end

  describe "test attribute 'explanation'" do
    it "should work" do
      # instance = Stripe::Other.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::Other::ENUM_VALIDATOR_FOR_EXPLANATION
      # validator.allowable_values.each do |value|
      #   instance.explanation = value.as(String)
      # end
    end
  end

  describe "test attribute 'product_description'" do
    it "should work" do
      # instance = Stripe::Other.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::Other::ENUM_VALIDATOR_FOR_PRODUCT_DESCRIPTION
      # validator.allowable_values.each do |value|
      #   instance.product_description = value.as(String)
      # end
    end
  end

  describe "test attribute 'product_type'" do
    it "should work" do
      # instance = Stripe::Other.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::Other::ENUM_VALIDATOR_FOR_PRODUCT_TYPE
      # validator.allowable_values.each do |value|
      #   instance.product_type = value.as(String)
      # end
    end
  end
end
