#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::GelatoReportDocumentOptions
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::GelatoReportDocumentOptions do
  describe "test an instance of GelatoReportDocumentOptions" do
    it "should create an instance of GelatoReportDocumentOptions" do
      # instance = Stripe::GelatoReportDocumentOptions.new
      # (instance).should be_a(Stripe::GelatoReportDocumentOptions)
    end
  end

  describe "test attribute 'allowed_types'" do
    it "should work" do
      # instance = Stripe::GelatoReportDocumentOptions.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::GelatoReportDocumentOptions::ENUM_VALIDATOR_FOR_ALLOWED_TYPES
      # validator.allowable_values.each do |value|
      #   instance.allowed_types = value.as(Array(String))
      # end
    end
  end

  describe "test attribute 'require_id_number'" do
    it "should work" do
      # instance = Stripe::GelatoReportDocumentOptions.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'require_live_capture'" do
    it "should work" do
      # instance = Stripe::GelatoReportDocumentOptions.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'require_matching_selfie'" do
    it "should work" do
      # instance = Stripe::GelatoReportDocumentOptions.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
