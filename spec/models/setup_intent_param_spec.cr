#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::SetupIntentParam
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/setup_intent_param"

describe Stripe::SetupIntentParam do
  describe "test an instance of SetupIntentParam" do
    it "should create an instance of SetupIntentParam" do
      # instance = Stripe::SetupIntentParam.new
      # (instance).should be_a(Stripe::SetupIntentParam)
    end
  end

  describe "test attribute 'mandate_options'" do
    it "should work" do
      # instance = Stripe::SetupIntentParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'moto'" do
    it "should work" do
      # instance = Stripe::SetupIntentParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'network'" do
    it "should work" do
      # instance = Stripe::SetupIntentParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::SetupIntentParam::ENUM_VALIDATOR_FOR_NETWORK
      # validator.allowable_values.each do |value|
      #   instance.network = value.as(String)
      # end
    end
  end

  describe "test attribute 'request_three_d_secure'" do
    it "should work" do
      # instance = Stripe::SetupIntentParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::SetupIntentParam::ENUM_VALIDATOR_FOR_REQUEST_THREE_D_SECURE
      # validator.allowable_values.each do |value|
      #   instance.request_three_d_secure = value.as(String)
      # end
    end
  end

  describe "test attribute 'three_d_secure'" do
    it "should work" do
      # instance = Stripe::SetupIntentParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
