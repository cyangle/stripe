#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::PaymentPagesCheckoutSessionAutomaticTax
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/payment_pages_checkout_session_automatic_tax"

describe Stripe::PaymentPagesCheckoutSessionAutomaticTax do
  describe "test an instance of PaymentPagesCheckoutSessionAutomaticTax" do
    it "should create an instance of PaymentPagesCheckoutSessionAutomaticTax" do
      # instance = Stripe::PaymentPagesCheckoutSessionAutomaticTax.new
      # (instance).should be_a(Stripe::PaymentPagesCheckoutSessionAutomaticTax)
    end
  end

  describe "test attribute 'enabled'" do
    it "should work" do
      # instance = Stripe::PaymentPagesCheckoutSessionAutomaticTax.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'liability'" do
    it "should work" do
      # instance = Stripe::PaymentPagesCheckoutSessionAutomaticTax.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'status'" do
    it "should work" do
      # instance = Stripe::PaymentPagesCheckoutSessionAutomaticTax.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentPagesCheckoutSessionAutomaticTax::ENUM_VALIDATOR_FOR_STATUS
      # validator.allowable_values.each do |value|
      #   instance.status = value.as(String)
      # end
    end
  end
end
