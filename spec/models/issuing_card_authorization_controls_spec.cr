#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::IssuingCardAuthorizationControls
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/issuing_card_authorization_controls"

describe Stripe::IssuingCardAuthorizationControls do
  describe "test an instance of IssuingCardAuthorizationControls" do
    it "should create an instance of IssuingCardAuthorizationControls" do
      # instance = Stripe::IssuingCardAuthorizationControls.new
      # (instance).should be_a(Stripe::IssuingCardAuthorizationControls)
    end
  end

  describe "test attribute 'allowed_categories'" do
    it "should work" do
      # instance = Stripe::IssuingCardAuthorizationControls.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::IssuingCardAuthorizationControls::ENUM_VALIDATOR_FOR_ALLOWED_CATEGORIES
      # validator.allowable_values.each do |value|
      #   instance.allowed_categories = value.as(Array(String))
      # end
    end
  end

  describe "test attribute 'allowed_merchant_countries'" do
    it "should work" do
      # instance = Stripe::IssuingCardAuthorizationControls.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'blocked_categories'" do
    it "should work" do
      # instance = Stripe::IssuingCardAuthorizationControls.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::IssuingCardAuthorizationControls::ENUM_VALIDATOR_FOR_BLOCKED_CATEGORIES
      # validator.allowable_values.each do |value|
      #   instance.blocked_categories = value.as(Array(String))
      # end
    end
  end

  describe "test attribute 'blocked_merchant_countries'" do
    it "should work" do
      # instance = Stripe::IssuingCardAuthorizationControls.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'spending_limits'" do
    it "should work" do
      # instance = Stripe::IssuingCardAuthorizationControls.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'spending_limits_currency'" do
    it "should work" do
      # instance = Stripe::IssuingCardAuthorizationControls.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
