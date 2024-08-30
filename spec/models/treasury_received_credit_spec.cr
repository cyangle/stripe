#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::TreasuryReceivedCredit
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/treasury_received_credit"

describe Stripe::TreasuryReceivedCredit do
  describe "test an instance of TreasuryReceivedCredit" do
    it "should create an instance of TreasuryReceivedCredit" do
      # instance = Stripe::TreasuryReceivedCredit.new
      # (instance).should be_a(Stripe::TreasuryReceivedCredit)
    end
  end

  describe "test attribute 'amount'" do
    it "should work" do
      # instance = Stripe::TreasuryReceivedCredit.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'created'" do
    it "should work" do
      # instance = Stripe::TreasuryReceivedCredit.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'currency'" do
    it "should work" do
      # instance = Stripe::TreasuryReceivedCredit.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'description'" do
    it "should work" do
      # instance = Stripe::TreasuryReceivedCredit.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'failure_code'" do
    it "should work" do
      # instance = Stripe::TreasuryReceivedCredit.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::TreasuryReceivedCredit::ENUM_VALIDATOR_FOR_FAILURE_CODE
      # validator.allowable_values.each do |value|
      #   instance.failure_code = value.as(String)
      # end
    end
  end

  describe "test attribute 'financial_account'" do
    it "should work" do
      # instance = Stripe::TreasuryReceivedCredit.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'hosted_regulatory_receipt_url'" do
    it "should work" do
      # instance = Stripe::TreasuryReceivedCredit.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'id'" do
    it "should work" do
      # instance = Stripe::TreasuryReceivedCredit.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'initiating_payment_method_details'" do
    it "should work" do
      # instance = Stripe::TreasuryReceivedCredit.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'linked_flows'" do
    it "should work" do
      # instance = Stripe::TreasuryReceivedCredit.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'livemode'" do
    it "should work" do
      # instance = Stripe::TreasuryReceivedCredit.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'network'" do
    it "should work" do
      # instance = Stripe::TreasuryReceivedCredit.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::TreasuryReceivedCredit::ENUM_VALIDATOR_FOR_NETWORK
      # validator.allowable_values.each do |value|
      #   instance.network = value.as(String)
      # end
    end
  end

  describe "test attribute 'object'" do
    it "should work" do
      # instance = Stripe::TreasuryReceivedCredit.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::TreasuryReceivedCredit::ENUM_VALIDATOR_FOR_OBJECT
      # validator.allowable_values.each do |value|
      #   instance.object = value.as(String)
      # end
    end
  end

  describe "test attribute 'reversal_details'" do
    it "should work" do
      # instance = Stripe::TreasuryReceivedCredit.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'status'" do
    it "should work" do
      # instance = Stripe::TreasuryReceivedCredit.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::TreasuryReceivedCredit::ENUM_VALIDATOR_FOR_STATUS
      # validator.allowable_values.each do |value|
      #   instance.status = value.as(String)
      # end
    end
  end

  describe "test attribute 'transaction'" do
    it "should work" do
      # instance = Stripe::TreasuryReceivedCredit.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
