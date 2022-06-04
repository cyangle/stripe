#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::AccountServiceResourceFinancialAddress
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::AccountServiceResourceFinancialAddress do
  describe "test an instance of AccountServiceResourceFinancialAddress" do
    it "should create an instance of AccountServiceResourceFinancialAddress" do
      # instance = Stripe::AccountServiceResourceFinancialAddress.new
      # expect(instance).to be_instance_of(Stripe::AccountServiceResourceFinancialAddress)
    end
  end

  describe "test attribute 'aba'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'supported_networks'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = EnumValidator.new("Array(String)", ["ach", "us_domestic_wire"])
      # validator.allowable_values.each do |value|
      #   expect { instance.supported_networks = value }.not_to raise_error
      # end
    end
  end

  describe "test attribute '_type'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = EnumValidator.new("String", ["aba"])
      # validator.allowable_values.each do |value|
      #   expect { instance._type = value }.not_to raise_error
      # end
    end
  end
end