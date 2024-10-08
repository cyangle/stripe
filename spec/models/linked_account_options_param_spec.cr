#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::LinkedAccountOptionsParam
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/linked_account_options_param"

describe Stripe::LinkedAccountOptionsParam do
  describe "test an instance of LinkedAccountOptionsParam" do
    it "should create an instance of LinkedAccountOptionsParam" do
      # instance = Stripe::LinkedAccountOptionsParam.new
      # (instance).should be_a(Stripe::LinkedAccountOptionsParam)
    end
  end

  describe "test attribute 'filters'" do
    it "should work" do
      # instance = Stripe::LinkedAccountOptionsParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'permissions'" do
    it "should work" do
      # instance = Stripe::LinkedAccountOptionsParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::LinkedAccountOptionsParam::ENUM_VALIDATOR_FOR_PERMISSIONS
      # validator.allowable_values.each do |value|
      #   instance.permissions = value.as(Array(String))
      # end
    end
  end

  describe "test attribute 'prefetch'" do
    it "should work" do
      # instance = Stripe::LinkedAccountOptionsParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::LinkedAccountOptionsParam::ENUM_VALIDATOR_FOR_PREFETCH
      # validator.allowable_values.each do |value|
      #   instance.prefetch = value.as(Array(String))
      # end
    end
  end

  describe "test attribute 'return_url'" do
    it "should work" do
      # instance = Stripe::LinkedAccountOptionsParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
