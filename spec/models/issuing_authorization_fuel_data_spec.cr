#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::IssuingAuthorizationFuelData
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/issuing_authorization_fuel_data"

describe Stripe::IssuingAuthorizationFuelData do
  describe "test an instance of IssuingAuthorizationFuelData" do
    it "should create an instance of IssuingAuthorizationFuelData" do
      # instance = Stripe::IssuingAuthorizationFuelData.new
      # (instance).should be_a(Stripe::IssuingAuthorizationFuelData)
    end
  end

  describe "test attribute 'industry_product_code'" do
    it "should work" do
      # instance = Stripe::IssuingAuthorizationFuelData.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'quantity_decimal'" do
    it "should work" do
      # instance = Stripe::IssuingAuthorizationFuelData.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute '_type'" do
    it "should work" do
      # instance = Stripe::IssuingAuthorizationFuelData.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::IssuingAuthorizationFuelData::ENUM_VALIDATOR_FOR__TYPE
      # validator.allowable_values.each do |value|
      #   instance._type = value.as(String)
      # end
    end
  end

  describe "test attribute 'unit'" do
    it "should work" do
      # instance = Stripe::IssuingAuthorizationFuelData.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::IssuingAuthorizationFuelData::ENUM_VALIDATOR_FOR_UNIT
      # validator.allowable_values.each do |value|
      #   instance.unit = value.as(String)
      # end
    end
  end

  describe "test attribute 'unit_cost_decimal'" do
    it "should work" do
      # instance = Stripe::IssuingAuthorizationFuelData.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
