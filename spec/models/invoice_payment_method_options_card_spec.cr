#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::InvoicePaymentMethodOptionsCard
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/invoice_payment_method_options_card"

describe Stripe::InvoicePaymentMethodOptionsCard do
  describe "test an instance of InvoicePaymentMethodOptionsCard" do
    it "should create an instance of InvoicePaymentMethodOptionsCard" do
      # instance = Stripe::InvoicePaymentMethodOptionsCard.new
      # (instance).should be_a(Stripe::InvoicePaymentMethodOptionsCard)
    end
  end

  describe "test attribute 'installments'" do
    it "should work" do
      # instance = Stripe::InvoicePaymentMethodOptionsCard.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'request_three_d_secure'" do
    it "should work" do
      # instance = Stripe::InvoicePaymentMethodOptionsCard.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::InvoicePaymentMethodOptionsCard::ENUM_VALIDATOR_FOR_REQUEST_THREE_D_SECURE
      # validator.allowable_values.each do |value|
      #   instance.request_three_d_secure = value.as(String)
      # end
    end
  end
end
