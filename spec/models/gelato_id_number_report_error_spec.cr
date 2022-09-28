#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-08-01
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::GelatoIdNumberReportError
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::GelatoIdNumberReportError do
  describe "test an instance of GelatoIdNumberReportError" do
    it "should create an instance of GelatoIdNumberReportError" do
      # instance = Stripe::GelatoIdNumberReportError.new
      # (instance).should be_a(Stripe::GelatoIdNumberReportError)
    end
  end

  describe "test attribute 'code'" do
    it "should work" do
      # instance = Stripe::GelatoIdNumberReportError.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::GelatoIdNumberReportError::ENUM_VALIDATOR_FOR_CODE
      # validator.allowable_values.each do |value|
      #   instance.code = value.as(String)
      # end
    end
  end

  describe "test attribute 'reason'" do
    it "should work" do
      # instance = Stripe::GelatoIdNumberReportError.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
