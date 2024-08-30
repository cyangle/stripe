#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::TaxProductResourceTaxCalculationShippingCost
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/tax_product_resource_tax_calculation_shipping_cost"

describe Stripe::TaxProductResourceTaxCalculationShippingCost do
  describe "test an instance of TaxProductResourceTaxCalculationShippingCost" do
    it "should create an instance of TaxProductResourceTaxCalculationShippingCost" do
      # instance = Stripe::TaxProductResourceTaxCalculationShippingCost.new
      # (instance).should be_a(Stripe::TaxProductResourceTaxCalculationShippingCost)
    end
  end

  describe "test attribute 'amount'" do
    it "should work" do
      # instance = Stripe::TaxProductResourceTaxCalculationShippingCost.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'amount_tax'" do
    it "should work" do
      # instance = Stripe::TaxProductResourceTaxCalculationShippingCost.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'shipping_rate'" do
    it "should work" do
      # instance = Stripe::TaxProductResourceTaxCalculationShippingCost.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'tax_behavior'" do
    it "should work" do
      # instance = Stripe::TaxProductResourceTaxCalculationShippingCost.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::TaxProductResourceTaxCalculationShippingCost::ENUM_VALIDATOR_FOR_TAX_BEHAVIOR
      # validator.allowable_values.each do |value|
      #   instance.tax_behavior = value.as(String)
      # end
    end
  end

  describe "test attribute 'tax_breakdown'" do
    it "should work" do
      # instance = Stripe::TaxProductResourceTaxCalculationShippingCost.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'tax_code'" do
    it "should work" do
      # instance = Stripe::TaxProductResourceTaxCalculationShippingCost.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end