#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::TaxDetails
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::TaxDetails do
  describe "test an instance of TaxDetails" do
    it "should create an instance of TaxDetails" do
      # instance = Stripe::TaxDetails.new
      # expect(instance).to be_instance_of(Stripe::TaxDetails)
    end
  end

  describe "test attribute 'tax_exempt'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = EnumValidator.new("String", ["", "exempt", "none", "reverse"])
      # validator.allowable_values.each do |value|
      #   expect { instance.tax_exempt = value }.not_to raise_error
      # end
    end
  end

  describe "test attribute 'tax_ids'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
