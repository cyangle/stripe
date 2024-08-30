#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::OutboundPaymentsPaymentMethodDetails
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/outbound_payments_payment_method_details"

describe Stripe::OutboundPaymentsPaymentMethodDetails do
  describe "test an instance of OutboundPaymentsPaymentMethodDetails" do
    it "should create an instance of OutboundPaymentsPaymentMethodDetails" do
      # instance = Stripe::OutboundPaymentsPaymentMethodDetails.new
      # (instance).should be_a(Stripe::OutboundPaymentsPaymentMethodDetails)
    end
  end

  describe "test attribute 'billing_details'" do
    it "should work" do
      # instance = Stripe::OutboundPaymentsPaymentMethodDetails.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'financial_account'" do
    it "should work" do
      # instance = Stripe::OutboundPaymentsPaymentMethodDetails.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute '_type'" do
    it "should work" do
      # instance = Stripe::OutboundPaymentsPaymentMethodDetails.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::OutboundPaymentsPaymentMethodDetails::ENUM_VALIDATOR_FOR__TYPE
      # validator.allowable_values.each do |value|
      #   instance._type = value.as(String)
      # end
    end
  end

  describe "test attribute 'us_bank_account'" do
    it "should work" do
      # instance = Stripe::OutboundPaymentsPaymentMethodDetails.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
