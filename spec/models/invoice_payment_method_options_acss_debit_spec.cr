#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::InvoicePaymentMethodOptionsAcssDebit
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/invoice_payment_method_options_acss_debit"

describe Stripe::InvoicePaymentMethodOptionsAcssDebit do
  describe "test an instance of InvoicePaymentMethodOptionsAcssDebit" do
    it "should create an instance of InvoicePaymentMethodOptionsAcssDebit" do
      # instance = Stripe::InvoicePaymentMethodOptionsAcssDebit.new
      # (instance).should be_a(Stripe::InvoicePaymentMethodOptionsAcssDebit)
    end
  end

  describe "test attribute 'mandate_options'" do
    it "should work" do
      # instance = Stripe::InvoicePaymentMethodOptionsAcssDebit.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'verification_method'" do
    it "should work" do
      # instance = Stripe::InvoicePaymentMethodOptionsAcssDebit.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::InvoicePaymentMethodOptionsAcssDebit::ENUM_VALIDATOR_FOR_VERIFICATION_METHOD
      # validator.allowable_values.each do |value|
      #   instance.verification_method = value.as(String)
      # end
    end
  end
end
