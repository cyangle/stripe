#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::IssuingAuthorizationVerificationData
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::IssuingAuthorizationVerificationData do
  describe "test an instance of IssuingAuthorizationVerificationData" do
    it "should create an instance of IssuingAuthorizationVerificationData" do
      # instance = Stripe::IssuingAuthorizationVerificationData.new
      # (instance).should be_a(Stripe::IssuingAuthorizationVerificationData)
    end
  end

  describe "test attribute 'address_line1_check'" do
    it "should work" do
      # instance = Stripe::IssuingAuthorizationVerificationData.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::IssuingAuthorizationVerificationData::ENUM_VALIDATOR_FOR_ADDRESS_LINE1_CHECK
      # validator.allowable_values.each do |value|
      #   instance.address_line1_check = value.as(String)
      # end
    end
  end

  describe "test attribute 'address_postal_code_check'" do
    it "should work" do
      # instance = Stripe::IssuingAuthorizationVerificationData.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::IssuingAuthorizationVerificationData::ENUM_VALIDATOR_FOR_ADDRESS_POSTAL_CODE_CHECK
      # validator.allowable_values.each do |value|
      #   instance.address_postal_code_check = value.as(String)
      # end
    end
  end

  describe "test attribute 'cvc_check'" do
    it "should work" do
      # instance = Stripe::IssuingAuthorizationVerificationData.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::IssuingAuthorizationVerificationData::ENUM_VALIDATOR_FOR_CVC_CHECK
      # validator.allowable_values.each do |value|
      #   instance.cvc_check = value.as(String)
      # end
    end
  end

  describe "test attribute 'expiry_check'" do
    it "should work" do
      # instance = Stripe::IssuingAuthorizationVerificationData.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::IssuingAuthorizationVerificationData::ENUM_VALIDATOR_FOR_EXPIRY_CHECK
      # validator.allowable_values.each do |value|
      #   instance.expiry_check = value.as(String)
      # end
    end
  end
end
