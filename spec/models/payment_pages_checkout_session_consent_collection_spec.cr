#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::PaymentPagesCheckoutSessionConsentCollection
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/payment_pages_checkout_session_consent_collection"

describe Stripe::PaymentPagesCheckoutSessionConsentCollection do
  describe "test an instance of PaymentPagesCheckoutSessionConsentCollection" do
    it "should create an instance of PaymentPagesCheckoutSessionConsentCollection" do
      # instance = Stripe::PaymentPagesCheckoutSessionConsentCollection.new
      # (instance).should be_a(Stripe::PaymentPagesCheckoutSessionConsentCollection)
    end
  end

  describe "test attribute 'payment_method_reuse_agreement'" do
    it "should work" do
      # instance = Stripe::PaymentPagesCheckoutSessionConsentCollection.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'promotions'" do
    it "should work" do
      # instance = Stripe::PaymentPagesCheckoutSessionConsentCollection.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentPagesCheckoutSessionConsentCollection::ENUM_VALIDATOR_FOR_PROMOTIONS
      # validator.allowable_values.each do |value|
      #   instance.promotions = value.as(String)
      # end
    end
  end

  describe "test attribute 'terms_of_service'" do
    it "should work" do
      # instance = Stripe::PaymentPagesCheckoutSessionConsentCollection.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentPagesCheckoutSessionConsentCollection::ENUM_VALIDATOR_FOR_TERMS_OF_SERVICE
      # validator.allowable_values.each do |value|
      #   instance.terms_of_service = value.as(String)
      # end
    end
  end
end
