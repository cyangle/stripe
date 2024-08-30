#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::UsBankAccountNetworks
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/us_bank_account_networks"

describe Stripe::UsBankAccountNetworks do
  describe "test an instance of UsBankAccountNetworks" do
    it "should create an instance of UsBankAccountNetworks" do
      # instance = Stripe::UsBankAccountNetworks.new
      # (instance).should be_a(Stripe::UsBankAccountNetworks)
    end
  end

  describe "test attribute 'preferred'" do
    it "should work" do
      # instance = Stripe::UsBankAccountNetworks.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'supported'" do
    it "should work" do
      # instance = Stripe::UsBankAccountNetworks.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::UsBankAccountNetworks::ENUM_VALIDATOR_FOR_SUPPORTED
      # validator.allowable_values.each do |value|
      #   instance.supported = value.as(Array(String))
      # end
    end
  end
end
