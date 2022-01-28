#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::PaymentPagesCheckoutSessionCustomerDetails
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::PaymentPagesCheckoutSessionCustomerDetails do
  describe "test an instance of PaymentPagesCheckoutSessionCustomerDetails" do
    it "should create an instance of PaymentPagesCheckoutSessionCustomerDetails" do
      # instance = Stripe::PaymentPagesCheckoutSessionCustomerDetails.new
      # expect(instance).to be_instance_of(Stripe::PaymentPagesCheckoutSessionCustomerDetails)
    end
  end

  describe "test attribute 'email'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'phone'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'tax_exempt'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Petstore::EnumTest::EnumAttributeValidator.new("String", ["exempt", "none", "reverse"])
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
