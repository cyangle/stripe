#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::IssuingTransactionToken
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/issuing_transaction_token"

describe Stripe::IssuingTransactionToken do
  describe "test an instance of IssuingTransactionToken" do
    it "should create an instance of IssuingTransactionToken" do
      # instance = Stripe::IssuingTransactionToken.new
      # (instance).should be_a(Stripe::IssuingTransactionToken)
    end
  end

  describe "test attribute 'card'" do
    it "should work" do
      # instance = Stripe::IssuingTransactionToken.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'created'" do
    it "should work" do
      # instance = Stripe::IssuingTransactionToken.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'device_fingerprint'" do
    it "should work" do
      # instance = Stripe::IssuingTransactionToken.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'id'" do
    it "should work" do
      # instance = Stripe::IssuingTransactionToken.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'last4'" do
    it "should work" do
      # instance = Stripe::IssuingTransactionToken.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'livemode'" do
    it "should work" do
      # instance = Stripe::IssuingTransactionToken.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'network'" do
    it "should work" do
      # instance = Stripe::IssuingTransactionToken.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::IssuingTransactionToken::ENUM_VALIDATOR_FOR_NETWORK
      # validator.allowable_values.each do |value|
      #   instance.network = value.as(String)
      # end
    end
  end

  describe "test attribute 'network_data'" do
    it "should work" do
      # instance = Stripe::IssuingTransactionToken.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'network_updated_at'" do
    it "should work" do
      # instance = Stripe::IssuingTransactionToken.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'object'" do
    it "should work" do
      # instance = Stripe::IssuingTransactionToken.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::IssuingTransactionToken::ENUM_VALIDATOR_FOR_OBJECT
      # validator.allowable_values.each do |value|
      #   instance.object = value.as(String)
      # end
    end
  end

  describe "test attribute 'status'" do
    it "should work" do
      # instance = Stripe::IssuingTransactionToken.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::IssuingTransactionToken::ENUM_VALIDATOR_FOR_STATUS
      # validator.allowable_values.each do |value|
      #   instance.status = value.as(String)
      # end
    end
  end

  describe "test attribute 'wallet_provider'" do
    it "should work" do
      # instance = Stripe::IssuingTransactionToken.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::IssuingTransactionToken::ENUM_VALIDATOR_FOR_WALLET_PROVIDER
      # validator.allowable_values.each do |value|
      #   instance.wallet_provider = value.as(String)
      # end
    end
  end
end
