#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::OutboundTransfersPaymentMethodDetails
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/outbound_transfers_payment_method_details"

describe Stripe::OutboundTransfersPaymentMethodDetails do
  describe "test an instance of OutboundTransfersPaymentMethodDetails" do
    it "should create an instance of OutboundTransfersPaymentMethodDetails" do
      # instance = Stripe::OutboundTransfersPaymentMethodDetails.new
      # (instance).should be_a(Stripe::OutboundTransfersPaymentMethodDetails)
    end
  end

  describe "test attribute 'billing_details'" do
    it "should work" do
      # instance = Stripe::OutboundTransfersPaymentMethodDetails.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute '_type'" do
    it "should work" do
      # instance = Stripe::OutboundTransfersPaymentMethodDetails.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::OutboundTransfersPaymentMethodDetails::ENUM_VALIDATOR_FOR__TYPE
      # validator.allowable_values.each do |value|
      #   instance._type = value.as(String)
      # end
    end
  end

  describe "test attribute 'us_bank_account'" do
    it "should work" do
      # instance = Stripe::OutboundTransfersPaymentMethodDetails.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
