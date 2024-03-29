#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::AuthorizationControlsParam
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::AuthorizationControlsParam do
  describe "test an instance of AuthorizationControlsParam" do
    it "should create an instance of AuthorizationControlsParam" do
      # instance = Stripe::AuthorizationControlsParam.new
      # (instance).should be_a(Stripe::AuthorizationControlsParam)
    end
  end

  describe "test attribute 'allowed_categories'" do
    it "should work" do
      # instance = Stripe::AuthorizationControlsParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::AuthorizationControlsParam::ENUM_VALIDATOR_FOR_ALLOWED_CATEGORIES
      # validator.allowable_values.each do |value|
      #   instance.allowed_categories = value.as(Array(String))
      # end
    end
  end

  describe "test attribute 'blocked_categories'" do
    it "should work" do
      # instance = Stripe::AuthorizationControlsParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::AuthorizationControlsParam::ENUM_VALIDATOR_FOR_BLOCKED_CATEGORIES
      # validator.allowable_values.each do |value|
      #   instance.blocked_categories = value.as(Array(String))
      # end
    end
  end

  describe "test attribute 'spending_limits'" do
    it "should work" do
      # instance = Stripe::AuthorizationControlsParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
