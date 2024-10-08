#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::ShippingCost
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/shipping_cost"

describe Stripe::ShippingCost do
  describe "test an instance of ShippingCost" do
    it "should create an instance of ShippingCost" do
      # instance = Stripe::ShippingCost.new
      # (instance).should be_a(Stripe::ShippingCost)
    end
  end

  describe "test attribute 'amount'" do
    it "should work" do
      # instance = Stripe::ShippingCost.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'shipping_rate'" do
    it "should work" do
      # instance = Stripe::ShippingCost.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'shipping_rate_data'" do
    it "should work" do
      # instance = Stripe::ShippingCost.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'tax_behavior'" do
    it "should work" do
      # instance = Stripe::ShippingCost.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::ShippingCost::ENUM_VALIDATOR_FOR_TAX_BEHAVIOR
      # validator.allowable_values.each do |value|
      #   instance.tax_behavior = value.as(String)
      # end
    end
  end

  describe "test attribute 'tax_code'" do
    it "should work" do
      # instance = Stripe::ShippingCost.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
