#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::AccountRequirementsError
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/account_requirements_error"

describe Stripe::AccountRequirementsError do
  describe "test an instance of AccountRequirementsError" do
    it "should create an instance of AccountRequirementsError" do
      # instance = Stripe::AccountRequirementsError.new
      # (instance).should be_a(Stripe::AccountRequirementsError)
    end
  end

  describe "test attribute 'code'" do
    it "should work" do
      # instance = Stripe::AccountRequirementsError.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::AccountRequirementsError::ENUM_VALIDATOR_FOR_CODE
      # validator.allowable_values.each do |value|
      #   instance.code = value.as(String)
      # end
    end
  end

  describe "test attribute 'reason'" do
    it "should work" do
      # instance = Stripe::AccountRequirementsError.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'requirement'" do
    it "should work" do
      # instance = Stripe::AccountRequirementsError.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
