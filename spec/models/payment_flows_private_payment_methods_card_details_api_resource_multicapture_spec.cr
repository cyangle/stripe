#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticapture
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/payment_flows_private_payment_methods_card_details_api_resource_multicapture"

describe Stripe::PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticapture do
  describe "test an instance of PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticapture" do
    it "should create an instance of PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticapture" do
      # instance = Stripe::PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticapture.new
      # (instance).should be_a(Stripe::PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticapture)
    end
  end

  describe "test attribute 'status'" do
    it "should work" do
      # instance = Stripe::PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticapture.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticapture::ENUM_VALIDATOR_FOR_STATUS
      # validator.allowable_values.each do |value|
      #   instance.status = value.as(String)
      # end
    end
  end
end
