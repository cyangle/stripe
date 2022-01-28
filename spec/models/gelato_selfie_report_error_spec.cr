#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::GelatoSelfieReportError
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::GelatoSelfieReportError do
  describe "test an instance of GelatoSelfieReportError" do
    it "should create an instance of GelatoSelfieReportError" do
      # instance = Stripe::GelatoSelfieReportError.new
      # expect(instance).to be_instance_of(Stripe::GelatoSelfieReportError)
    end
  end

  describe "test attribute 'code'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Petstore::EnumTest::EnumAttributeValidator.new("String", ["selfie_document_missing_photo", "selfie_face_mismatch", "selfie_manipulated", "selfie_unverified_other"])
      # validator.allowable_values.each do |value|
      #   expect { instance.code = value }.not_to raise_error
      # end
    end
  end

  describe "test attribute 'reason'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
