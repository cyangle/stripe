#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::PaymentPagesCheckoutSessionPaymentMethodReuseAgreement
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/payment_pages_checkout_session_payment_method_reuse_agreement"

describe Stripe::PaymentPagesCheckoutSessionPaymentMethodReuseAgreement do
  describe "test an instance of PaymentPagesCheckoutSessionPaymentMethodReuseAgreement" do
    it "should create an instance of PaymentPagesCheckoutSessionPaymentMethodReuseAgreement" do
      # instance = Stripe::PaymentPagesCheckoutSessionPaymentMethodReuseAgreement.new
      # (instance).should be_a(Stripe::PaymentPagesCheckoutSessionPaymentMethodReuseAgreement)
    end
  end

  describe "test attribute 'position'" do
    it "should work" do
      # instance = Stripe::PaymentPagesCheckoutSessionPaymentMethodReuseAgreement.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentPagesCheckoutSessionPaymentMethodReuseAgreement::ENUM_VALIDATOR_FOR_POSITION
      # validator.allowable_values.each do |value|
      #   instance.position = value.as(String)
      # end
    end
  end
end
