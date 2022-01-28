#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::CustomerTax
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::CustomerTax do
  describe "test an instance of CustomerTax" do
    it "should create an instance of CustomerTax" do
      # instance = Stripe::CustomerTax.new
      # expect(instance).to be_instance_of(Stripe::CustomerTax)
    end
  end

  describe "test attribute 'automatic_tax'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Petstore::EnumTest::EnumAttributeValidator.new("String", ["failed", "not_collecting", "supported", "unrecognized_location"])
      # validator.allowable_values.each do |value|
      #   expect { instance.automatic_tax = value }.not_to raise_error
      # end
    end
  end

  describe "test attribute 'ip_address'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'location'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end