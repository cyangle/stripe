#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::OutboundTransfersPaymentMethodDetailsUsBankAccount
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/outbound_transfers_payment_method_details_us_bank_account"

describe Stripe::OutboundTransfersPaymentMethodDetailsUsBankAccount do
  describe "test an instance of OutboundTransfersPaymentMethodDetailsUsBankAccount" do
    it "should create an instance of OutboundTransfersPaymentMethodDetailsUsBankAccount" do
      # instance = Stripe::OutboundTransfersPaymentMethodDetailsUsBankAccount.new
      # (instance).should be_a(Stripe::OutboundTransfersPaymentMethodDetailsUsBankAccount)
    end
  end

  describe "test attribute 'account_holder_type'" do
    it "should work" do
      # instance = Stripe::OutboundTransfersPaymentMethodDetailsUsBankAccount.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::OutboundTransfersPaymentMethodDetailsUsBankAccount::ENUM_VALIDATOR_FOR_ACCOUNT_HOLDER_TYPE
      # validator.allowable_values.each do |value|
      #   instance.account_holder_type = value.as(String)
      # end
    end
  end

  describe "test attribute 'account_type'" do
    it "should work" do
      # instance = Stripe::OutboundTransfersPaymentMethodDetailsUsBankAccount.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::OutboundTransfersPaymentMethodDetailsUsBankAccount::ENUM_VALIDATOR_FOR_ACCOUNT_TYPE
      # validator.allowable_values.each do |value|
      #   instance.account_type = value.as(String)
      # end
    end
  end

  describe "test attribute 'bank_name'" do
    it "should work" do
      # instance = Stripe::OutboundTransfersPaymentMethodDetailsUsBankAccount.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'fingerprint'" do
    it "should work" do
      # instance = Stripe::OutboundTransfersPaymentMethodDetailsUsBankAccount.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'last4'" do
    it "should work" do
      # instance = Stripe::OutboundTransfersPaymentMethodDetailsUsBankAccount.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'mandate'" do
    it "should work" do
      # instance = Stripe::OutboundTransfersPaymentMethodDetailsUsBankAccount.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'network'" do
    it "should work" do
      # instance = Stripe::OutboundTransfersPaymentMethodDetailsUsBankAccount.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::OutboundTransfersPaymentMethodDetailsUsBankAccount::ENUM_VALIDATOR_FOR_NETWORK
      # validator.allowable_values.each do |value|
      #   instance.network = value.as(String)
      # end
    end
  end

  describe "test attribute 'routing_number'" do
    it "should work" do
      # instance = Stripe::OutboundTransfersPaymentMethodDetailsUsBankAccount.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
