#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::AccountholderParams1
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::AccountholderParams1 do
  describe "test an instance of AccountholderParams1" do
    it "should create an instance of AccountholderParams1" do
      # instance = Stripe::AccountholderParams1.new
      # expect(instance).to be_instance_of(Stripe::AccountholderParams1)
    end
  end

  describe "test attribute 'account'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'customer'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute '_type'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = EnumValidator.new("String", ["account", "customer"])
      # validator.allowable_values.each do |value|
      #   expect { instance._type = value }.not_to raise_error
      # end
    end
  end
end