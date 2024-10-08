#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::TreasuryOutboundTransfer
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/treasury_outbound_transfer"

describe Stripe::TreasuryOutboundTransfer do
  describe "test an instance of TreasuryOutboundTransfer" do
    it "should create an instance of TreasuryOutboundTransfer" do
      # instance = Stripe::TreasuryOutboundTransfer.new
      # (instance).should be_a(Stripe::TreasuryOutboundTransfer)
    end
  end

  describe "test attribute 'amount'" do
    it "should work" do
      # instance = Stripe::TreasuryOutboundTransfer.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'cancelable'" do
    it "should work" do
      # instance = Stripe::TreasuryOutboundTransfer.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'created'" do
    it "should work" do
      # instance = Stripe::TreasuryOutboundTransfer.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'currency'" do
    it "should work" do
      # instance = Stripe::TreasuryOutboundTransfer.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'description'" do
    it "should work" do
      # instance = Stripe::TreasuryOutboundTransfer.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'destination_payment_method'" do
    it "should work" do
      # instance = Stripe::TreasuryOutboundTransfer.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'destination_payment_method_details'" do
    it "should work" do
      # instance = Stripe::TreasuryOutboundTransfer.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'expected_arrival_date'" do
    it "should work" do
      # instance = Stripe::TreasuryOutboundTransfer.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'financial_account'" do
    it "should work" do
      # instance = Stripe::TreasuryOutboundTransfer.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'hosted_regulatory_receipt_url'" do
    it "should work" do
      # instance = Stripe::TreasuryOutboundTransfer.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'id'" do
    it "should work" do
      # instance = Stripe::TreasuryOutboundTransfer.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'livemode'" do
    it "should work" do
      # instance = Stripe::TreasuryOutboundTransfer.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'metadata'" do
    it "should work" do
      # instance = Stripe::TreasuryOutboundTransfer.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'object'" do
    it "should work" do
      # instance = Stripe::TreasuryOutboundTransfer.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::TreasuryOutboundTransfer::ENUM_VALIDATOR_FOR_OBJECT
      # validator.allowable_values.each do |value|
      #   instance.object = value.as(String)
      # end
    end
  end

  describe "test attribute 'returned_details'" do
    it "should work" do
      # instance = Stripe::TreasuryOutboundTransfer.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'statement_descriptor'" do
    it "should work" do
      # instance = Stripe::TreasuryOutboundTransfer.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'status'" do
    it "should work" do
      # instance = Stripe::TreasuryOutboundTransfer.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::TreasuryOutboundTransfer::ENUM_VALIDATOR_FOR_STATUS
      # validator.allowable_values.each do |value|
      #   instance.status = value.as(String)
      # end
    end
  end

  describe "test attribute 'status_transitions'" do
    it "should work" do
      # instance = Stripe::TreasuryOutboundTransfer.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'tracking_details'" do
    it "should work" do
      # instance = Stripe::TreasuryOutboundTransfer.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'transaction'" do
    it "should work" do
      # instance = Stripe::TreasuryOutboundTransfer.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
