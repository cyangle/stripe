#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::TaxTransactionLineItem
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/tax_transaction_line_item"

describe Stripe::TaxTransactionLineItem do
  describe "test an instance of TaxTransactionLineItem" do
    it "should create an instance of TaxTransactionLineItem" do
      # instance = Stripe::TaxTransactionLineItem.new
      # (instance).should be_a(Stripe::TaxTransactionLineItem)
    end
  end

  describe "test attribute 'amount'" do
    it "should work" do
      # instance = Stripe::TaxTransactionLineItem.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'amount_tax'" do
    it "should work" do
      # instance = Stripe::TaxTransactionLineItem.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'id'" do
    it "should work" do
      # instance = Stripe::TaxTransactionLineItem.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'livemode'" do
    it "should work" do
      # instance = Stripe::TaxTransactionLineItem.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'metadata'" do
    it "should work" do
      # instance = Stripe::TaxTransactionLineItem.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'object'" do
    it "should work" do
      # instance = Stripe::TaxTransactionLineItem.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::TaxTransactionLineItem::ENUM_VALIDATOR_FOR_OBJECT
      # validator.allowable_values.each do |value|
      #   instance.object = value.as(String)
      # end
    end
  end

  describe "test attribute 'product'" do
    it "should work" do
      # instance = Stripe::TaxTransactionLineItem.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'quantity'" do
    it "should work" do
      # instance = Stripe::TaxTransactionLineItem.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'reference'" do
    it "should work" do
      # instance = Stripe::TaxTransactionLineItem.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'reversal'" do
    it "should work" do
      # instance = Stripe::TaxTransactionLineItem.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'tax_behavior'" do
    it "should work" do
      # instance = Stripe::TaxTransactionLineItem.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::TaxTransactionLineItem::ENUM_VALIDATOR_FOR_TAX_BEHAVIOR
      # validator.allowable_values.each do |value|
      #   instance.tax_behavior = value.as(String)
      # end
    end
  end

  describe "test attribute 'tax_code'" do
    it "should work" do
      # instance = Stripe::TaxTransactionLineItem.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute '_type'" do
    it "should work" do
      # instance = Stripe::TaxTransactionLineItem.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::TaxTransactionLineItem::ENUM_VALIDATOR_FOR__TYPE
      # validator.allowable_values.each do |value|
      #   instance._type = value.as(String)
      # end
    end
  end
end
