#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::CustomerTax
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/customer_tax"

describe Stripe::CustomerTax do
  describe "test an instance of CustomerTax" do
    it "should create an instance of CustomerTax" do
      # instance = Stripe::CustomerTax.new
      # (instance).should be_a(Stripe::CustomerTax)
    end
  end

  describe "test attribute 'automatic_tax'" do
    it "should work" do
      # instance = Stripe::CustomerTax.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::CustomerTax::ENUM_VALIDATOR_FOR_AUTOMATIC_TAX
      # validator.allowable_values.each do |value|
      #   instance.automatic_tax = value.as(String)
      # end
    end
  end

  describe "test attribute 'ip_address'" do
    it "should work" do
      # instance = Stripe::CustomerTax.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'location'" do
    it "should work" do
      # instance = Stripe::CustomerTax.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
