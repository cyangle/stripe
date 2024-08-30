#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::PendingInvoiceItemIntervalParams
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/pending_invoice_item_interval_params"

describe Stripe::PendingInvoiceItemIntervalParams do
  describe "test an instance of PendingInvoiceItemIntervalParams" do
    it "should create an instance of PendingInvoiceItemIntervalParams" do
      # instance = Stripe::PendingInvoiceItemIntervalParams.new
      # (instance).should be_a(Stripe::PendingInvoiceItemIntervalParams)
    end
  end

  describe "test attribute 'interval'" do
    it "should work" do
      # instance = Stripe::PendingInvoiceItemIntervalParams.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PendingInvoiceItemIntervalParams::ENUM_VALIDATOR_FOR_INTERVAL
      # validator.allowable_values.each do |value|
      #   instance.interval = value.as(String)
      # end
    end
  end

  describe "test attribute 'interval_count'" do
    it "should work" do
      # instance = Stripe::PendingInvoiceItemIntervalParams.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
