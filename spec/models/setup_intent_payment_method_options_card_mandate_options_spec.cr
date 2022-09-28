#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-08-01
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::SetupIntentPaymentMethodOptionsCardMandateOptions
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::SetupIntentPaymentMethodOptionsCardMandateOptions do
  describe "test an instance of SetupIntentPaymentMethodOptionsCardMandateOptions" do
    it "should create an instance of SetupIntentPaymentMethodOptionsCardMandateOptions" do
      # instance = Stripe::SetupIntentPaymentMethodOptionsCardMandateOptions.new
      # (instance).should be_a(Stripe::SetupIntentPaymentMethodOptionsCardMandateOptions)
    end
  end

  describe "test attribute 'amount'" do
    it "should work" do
      # instance = Stripe::SetupIntentPaymentMethodOptionsCardMandateOptions.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'amount_type'" do
    it "should work" do
      # instance = Stripe::SetupIntentPaymentMethodOptionsCardMandateOptions.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::SetupIntentPaymentMethodOptionsCardMandateOptions::ENUM_VALIDATOR_FOR_AMOUNT_TYPE
      # validator.allowable_values.each do |value|
      #   instance.amount_type = value.as(String)
      # end
    end
  end

  describe "test attribute 'currency'" do
    it "should work" do
      # instance = Stripe::SetupIntentPaymentMethodOptionsCardMandateOptions.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'description'" do
    it "should work" do
      # instance = Stripe::SetupIntentPaymentMethodOptionsCardMandateOptions.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'end_date'" do
    it "should work" do
      # instance = Stripe::SetupIntentPaymentMethodOptionsCardMandateOptions.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'interval'" do
    it "should work" do
      # instance = Stripe::SetupIntentPaymentMethodOptionsCardMandateOptions.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::SetupIntentPaymentMethodOptionsCardMandateOptions::ENUM_VALIDATOR_FOR_INTERVAL
      # validator.allowable_values.each do |value|
      #   instance.interval = value.as(String)
      # end
    end
  end

  describe "test attribute 'interval_count'" do
    it "should work" do
      # instance = Stripe::SetupIntentPaymentMethodOptionsCardMandateOptions.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'reference'" do
    it "should work" do
      # instance = Stripe::SetupIntentPaymentMethodOptionsCardMandateOptions.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'start_date'" do
    it "should work" do
      # instance = Stripe::SetupIntentPaymentMethodOptionsCardMandateOptions.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'supported_types'" do
    it "should work" do
      # instance = Stripe::SetupIntentPaymentMethodOptionsCardMandateOptions.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::SetupIntentPaymentMethodOptionsCardMandateOptions::ENUM_VALIDATOR_FOR_SUPPORTED_TYPES
      # validator.allowable_values.each do |value|
      #   instance.supported_types = value.as(Array(String))
      # end
    end
  end
end
