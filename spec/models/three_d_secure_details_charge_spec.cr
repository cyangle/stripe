#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::ThreeDSecureDetailsCharge
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/three_d_secure_details_charge"

describe Stripe::ThreeDSecureDetailsCharge do
  describe "test an instance of ThreeDSecureDetailsCharge" do
    it "should create an instance of ThreeDSecureDetailsCharge" do
      # instance = Stripe::ThreeDSecureDetailsCharge.new
      # (instance).should be_a(Stripe::ThreeDSecureDetailsCharge)
    end
  end

  describe "test attribute 'authentication_flow'" do
    it "should work" do
      # instance = Stripe::ThreeDSecureDetailsCharge.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::ThreeDSecureDetailsCharge::ENUM_VALIDATOR_FOR_AUTHENTICATION_FLOW
      # validator.allowable_values.each do |value|
      #   instance.authentication_flow = value.as(String)
      # end
    end
  end

  describe "test attribute 'electronic_commerce_indicator'" do
    it "should work" do
      # instance = Stripe::ThreeDSecureDetailsCharge.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::ThreeDSecureDetailsCharge::ENUM_VALIDATOR_FOR_ELECTRONIC_COMMERCE_INDICATOR
      # validator.allowable_values.each do |value|
      #   instance.electronic_commerce_indicator = value.as(String)
      # end
    end
  end

  describe "test attribute 'exemption_indicator'" do
    it "should work" do
      # instance = Stripe::ThreeDSecureDetailsCharge.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::ThreeDSecureDetailsCharge::ENUM_VALIDATOR_FOR_EXEMPTION_INDICATOR
      # validator.allowable_values.each do |value|
      #   instance.exemption_indicator = value.as(String)
      # end
    end
  end

  describe "test attribute 'exemption_indicator_applied'" do
    it "should work" do
      # instance = Stripe::ThreeDSecureDetailsCharge.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'result'" do
    it "should work" do
      # instance = Stripe::ThreeDSecureDetailsCharge.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::ThreeDSecureDetailsCharge::ENUM_VALIDATOR_FOR_RESULT
      # validator.allowable_values.each do |value|
      #   instance.result = value.as(String)
      # end
    end
  end

  describe "test attribute 'result_reason'" do
    it "should work" do
      # instance = Stripe::ThreeDSecureDetailsCharge.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::ThreeDSecureDetailsCharge::ENUM_VALIDATOR_FOR_RESULT_REASON
      # validator.allowable_values.each do |value|
      #   instance.result_reason = value.as(String)
      # end
    end
  end

  describe "test attribute 'transaction_id'" do
    it "should work" do
      # instance = Stripe::ThreeDSecureDetailsCharge.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'version'" do
    it "should work" do
      # instance = Stripe::ThreeDSecureDetailsCharge.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::ThreeDSecureDetailsCharge::ENUM_VALIDATOR_FOR_VERSION
      # validator.allowable_values.each do |value|
      #   instance.version = value.as(String)
      # end
    end
  end
end
