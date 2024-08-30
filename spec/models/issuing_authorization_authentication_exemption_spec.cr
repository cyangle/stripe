#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::IssuingAuthorizationAuthenticationExemption
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/issuing_authorization_authentication_exemption"

describe Stripe::IssuingAuthorizationAuthenticationExemption do
  describe "test an instance of IssuingAuthorizationAuthenticationExemption" do
    it "should create an instance of IssuingAuthorizationAuthenticationExemption" do
      # instance = Stripe::IssuingAuthorizationAuthenticationExemption.new
      # (instance).should be_a(Stripe::IssuingAuthorizationAuthenticationExemption)
    end
  end

  describe "test attribute 'claimed_by'" do
    it "should work" do
      # instance = Stripe::IssuingAuthorizationAuthenticationExemption.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::IssuingAuthorizationAuthenticationExemption::ENUM_VALIDATOR_FOR_CLAIMED_BY
      # validator.allowable_values.each do |value|
      #   instance.claimed_by = value.as(String)
      # end
    end
  end

  describe "test attribute '_type'" do
    it "should work" do
      # instance = Stripe::IssuingAuthorizationAuthenticationExemption.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::IssuingAuthorizationAuthenticationExemption::ENUM_VALIDATOR_FOR__TYPE
      # validator.allowable_values.each do |value|
      #   instance._type = value.as(String)
      # end
    end
  end
end
