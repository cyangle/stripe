#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::PaymentMethodDetailsIdeal
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/payment_method_details_ideal"

describe Stripe::PaymentMethodDetailsIdeal do
  describe "test an instance of PaymentMethodDetailsIdeal" do
    it "should create an instance of PaymentMethodDetailsIdeal" do
      # instance = Stripe::PaymentMethodDetailsIdeal.new
      # (instance).should be_a(Stripe::PaymentMethodDetailsIdeal)
    end
  end

  describe "test attribute 'bank'" do
    it "should work" do
      # instance = Stripe::PaymentMethodDetailsIdeal.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentMethodDetailsIdeal::ENUM_VALIDATOR_FOR_BANK
      # validator.allowable_values.each do |value|
      #   instance.bank = value.as(String)
      # end
    end
  end

  describe "test attribute 'bic'" do
    it "should work" do
      # instance = Stripe::PaymentMethodDetailsIdeal.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentMethodDetailsIdeal::ENUM_VALIDATOR_FOR_BIC
      # validator.allowable_values.each do |value|
      #   instance.bic = value.as(String)
      # end
    end
  end

  describe "test attribute 'generated_sepa_debit'" do
    it "should work" do
      # instance = Stripe::PaymentMethodDetailsIdeal.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'generated_sepa_debit_mandate'" do
    it "should work" do
      # instance = Stripe::PaymentMethodDetailsIdeal.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'iban_last4'" do
    it "should work" do
      # instance = Stripe::PaymentMethodDetailsIdeal.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'verified_name'" do
    it "should work" do
      # instance = Stripe::PaymentMethodDetailsIdeal.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
