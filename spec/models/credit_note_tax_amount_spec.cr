#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::CreditNoteTaxAmount
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/credit_note_tax_amount"

describe Stripe::CreditNoteTaxAmount do
  describe "test an instance of CreditNoteTaxAmount" do
    it "should create an instance of CreditNoteTaxAmount" do
      # instance = Stripe::CreditNoteTaxAmount.new
      # (instance).should be_a(Stripe::CreditNoteTaxAmount)
    end
  end

  describe "test attribute 'amount'" do
    it "should work" do
      # instance = Stripe::CreditNoteTaxAmount.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'inclusive'" do
    it "should work" do
      # instance = Stripe::CreditNoteTaxAmount.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'tax_rate'" do
    it "should work" do
      # instance = Stripe::CreditNoteTaxAmount.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'taxability_reason'" do
    it "should work" do
      # instance = Stripe::CreditNoteTaxAmount.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::CreditNoteTaxAmount::ENUM_VALIDATOR_FOR_TAXABILITY_REASON
      # validator.allowable_values.each do |value|
      #   instance.taxability_reason = value.as(String)
      # end
    end
  end

  describe "test attribute 'taxable_amount'" do
    it "should work" do
      # instance = Stripe::CreditNoteTaxAmount.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
