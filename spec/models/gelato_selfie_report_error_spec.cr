#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::GelatoSelfieReportError
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/gelato_selfie_report_error"

describe Stripe::GelatoSelfieReportError do
  describe "test an instance of GelatoSelfieReportError" do
    it "should create an instance of GelatoSelfieReportError" do
      # instance = Stripe::GelatoSelfieReportError.new
      # (instance).should be_a(Stripe::GelatoSelfieReportError)
    end
  end

  describe "test attribute 'code'" do
    it "should work" do
      # instance = Stripe::GelatoSelfieReportError.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::GelatoSelfieReportError::ENUM_VALIDATOR_FOR_CODE
      # validator.allowable_values.each do |value|
      #   instance.code = value.as(String)
      # end
    end
  end

  describe "test attribute 'reason'" do
    it "should work" do
      # instance = Stripe::GelatoSelfieReportError.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
