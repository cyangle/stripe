#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::TaxProductResourceTaxSettingsDefaults
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/tax_product_resource_tax_settings_defaults"

describe Stripe::TaxProductResourceTaxSettingsDefaults do
  describe "test an instance of TaxProductResourceTaxSettingsDefaults" do
    it "should create an instance of TaxProductResourceTaxSettingsDefaults" do
      # instance = Stripe::TaxProductResourceTaxSettingsDefaults.new
      # (instance).should be_a(Stripe::TaxProductResourceTaxSettingsDefaults)
    end
  end

  describe "test attribute 'tax_behavior'" do
    it "should work" do
      # instance = Stripe::TaxProductResourceTaxSettingsDefaults.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::TaxProductResourceTaxSettingsDefaults::ENUM_VALIDATOR_FOR_TAX_BEHAVIOR
      # validator.allowable_values.each do |value|
      #   instance.tax_behavior = value.as(String)
      # end
    end
  end

  describe "test attribute 'tax_code'" do
    it "should work" do
      # instance = Stripe::TaxProductResourceTaxSettingsDefaults.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
