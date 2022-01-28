#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::IssuingCardApplePay
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::IssuingCardApplePay do
  describe "test an instance of IssuingCardApplePay" do
    it "should create an instance of IssuingCardApplePay" do
      # instance = Stripe::IssuingCardApplePay.new
      # expect(instance).to be_instance_of(Stripe::IssuingCardApplePay)
    end
  end

  describe "test attribute 'eligible'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'ineligible_reason'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Petstore::EnumTest::EnumAttributeValidator.new("String", ["missing_agreement", "missing_cardholder_contact", "unsupported_region"])
      # validator.allowable_values.each do |value|
      #   expect { instance.ineligible_reason = value }.not_to raise_error
      # end
    end
  end
end