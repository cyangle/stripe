#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::SetupIntentTypeSpecificPaymentMethodOptionsClient
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::SetupIntentTypeSpecificPaymentMethodOptionsClient do
  describe "test an instance of SetupIntentTypeSpecificPaymentMethodOptionsClient" do
    it "should create an instance of SetupIntentTypeSpecificPaymentMethodOptionsClient" do
      # instance = Stripe::SetupIntentTypeSpecificPaymentMethodOptionsClient.new
      # (instance).should be_a(Stripe::SetupIntentTypeSpecificPaymentMethodOptionsClient)
    end
  end

  describe "test attribute 'verification_method'" do
    it "should work" do
      # instance = Stripe::SetupIntentTypeSpecificPaymentMethodOptionsClient.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::SetupIntentTypeSpecificPaymentMethodOptionsClient::ENUM_VALIDATOR_FOR_VERIFICATION_METHOD
      # validator.allowable_values.each do |value|
      #   instance.verification_method = value.as(String)
      # end
    end
  end
end
