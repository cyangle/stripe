#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::IssuingDisputeTransaction
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/issuing_dispute_transaction"

describe Stripe::IssuingDisputeTransaction do
  describe "test an instance of IssuingDisputeTransaction" do
    it "should create an instance of IssuingDisputeTransaction" do
      # instance = Stripe::IssuingDisputeTransaction.new
      # (instance).should be_a(Stripe::IssuingDisputeTransaction)
    end
  end

  describe "test attribute 'amount'" do
    it "should work" do
      # instance = Stripe::IssuingDisputeTransaction.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'amount_details'" do
    it "should work" do
      # instance = Stripe::IssuingDisputeTransaction.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'authorization'" do
    it "should work" do
      # instance = Stripe::IssuingDisputeTransaction.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'balance_transaction'" do
    it "should work" do
      # instance = Stripe::IssuingDisputeTransaction.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'card'" do
    it "should work" do
      # instance = Stripe::IssuingDisputeTransaction.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'cardholder'" do
    it "should work" do
      # instance = Stripe::IssuingDisputeTransaction.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'created'" do
    it "should work" do
      # instance = Stripe::IssuingDisputeTransaction.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'currency'" do
    it "should work" do
      # instance = Stripe::IssuingDisputeTransaction.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'dispute'" do
    it "should work" do
      # instance = Stripe::IssuingDisputeTransaction.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'id'" do
    it "should work" do
      # instance = Stripe::IssuingDisputeTransaction.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'livemode'" do
    it "should work" do
      # instance = Stripe::IssuingDisputeTransaction.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'merchant_amount'" do
    it "should work" do
      # instance = Stripe::IssuingDisputeTransaction.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'merchant_currency'" do
    it "should work" do
      # instance = Stripe::IssuingDisputeTransaction.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'merchant_data'" do
    it "should work" do
      # instance = Stripe::IssuingDisputeTransaction.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'metadata'" do
    it "should work" do
      # instance = Stripe::IssuingDisputeTransaction.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'network_data'" do
    it "should work" do
      # instance = Stripe::IssuingDisputeTransaction.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'object'" do
    it "should work" do
      # instance = Stripe::IssuingDisputeTransaction.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::IssuingDisputeTransaction::ENUM_VALIDATOR_FOR_OBJECT
      # validator.allowable_values.each do |value|
      #   instance.object = value.as(String)
      # end
    end
  end

  describe "test attribute 'purchase_details'" do
    it "should work" do
      # instance = Stripe::IssuingDisputeTransaction.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'token'" do
    it "should work" do
      # instance = Stripe::IssuingDisputeTransaction.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'treasury'" do
    it "should work" do
      # instance = Stripe::IssuingDisputeTransaction.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute '_type'" do
    it "should work" do
      # instance = Stripe::IssuingDisputeTransaction.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::IssuingDisputeTransaction::ENUM_VALIDATOR_FOR__TYPE
      # validator.allowable_values.each do |value|
      #   instance._type = value.as(String)
      # end
    end
  end

  describe "test attribute 'wallet'" do
    it "should work" do
      # instance = Stripe::IssuingDisputeTransaction.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::IssuingDisputeTransaction::ENUM_VALIDATOR_FOR_WALLET
      # validator.allowable_values.each do |value|
      #   instance.wallet = value.as(String)
      # end
    end
  end
end
