#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::InvoicePaymentMethodOptionsBancontact
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/invoice_payment_method_options_bancontact"

describe Stripe::InvoicePaymentMethodOptionsBancontact do
  describe "test an instance of InvoicePaymentMethodOptionsBancontact" do
    it "should create an instance of InvoicePaymentMethodOptionsBancontact" do
      # instance = Stripe::InvoicePaymentMethodOptionsBancontact.new
      # (instance).should be_a(Stripe::InvoicePaymentMethodOptionsBancontact)
    end
  end

  describe "test attribute 'preferred_language'" do
    it "should work" do
      # instance = Stripe::InvoicePaymentMethodOptionsBancontact.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::InvoicePaymentMethodOptionsBancontact::ENUM_VALIDATOR_FOR_PREFERRED_LANGUAGE
      # validator.allowable_values.each do |value|
      #   instance.preferred_language = value.as(String)
      # end
    end
  end
end
