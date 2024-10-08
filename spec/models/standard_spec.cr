#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::Standard
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/standard"

describe Stripe::Standard do
  describe "test an instance of Standard" do
    it "should create an instance of Standard" do
      # instance = Stripe::Standard.new
      # (instance).should be_a(Stripe::Standard)
    end
  end

  describe "test attribute 'place_of_supply_scheme'" do
    it "should work" do
      # instance = Stripe::Standard.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::Standard::ENUM_VALIDATOR_FOR_PLACE_OF_SUPPLY_SCHEME
      # validator.allowable_values.each do |value|
      #   instance.place_of_supply_scheme = value.as(String)
      # end
    end
  end
end
