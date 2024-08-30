#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/setup_intent_payment_method_options_mandate_options_acss_debit"

describe Stripe::SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit do
  describe "test an instance of SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit" do
    it "should create an instance of SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit" do
      # instance = Stripe::SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit.new
      # (instance).should be_a(Stripe::SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit)
    end
  end

  describe "test attribute 'custom_mandate_url'" do
    it "should work" do
      # instance = Stripe::SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'default_for'" do
    it "should work" do
      # instance = Stripe::SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit::ENUM_VALIDATOR_FOR_DEFAULT_FOR
      # validator.allowable_values.each do |value|
      #   instance.default_for = value.as(Array(String))
      # end
    end
  end

  describe "test attribute 'interval_description'" do
    it "should work" do
      # instance = Stripe::SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'payment_schedule'" do
    it "should work" do
      # instance = Stripe::SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit::ENUM_VALIDATOR_FOR_PAYMENT_SCHEDULE
      # validator.allowable_values.each do |value|
      #   instance.payment_schedule = value.as(String)
      # end
    end
  end

  describe "test attribute 'transaction_type'" do
    it "should work" do
      # instance = Stripe::SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit::ENUM_VALIDATOR_FOR_TRANSACTION_TYPE
      # validator.allowable_values.each do |value|
      #   instance.transaction_type = value.as(String)
      # end
    end
  end
end
