#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsFilters
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/invoice_payment_method_options_us_bank_account_linked_account_options_filters"

describe Stripe::InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsFilters do
  describe "test an instance of InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsFilters" do
    it "should create an instance of InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsFilters" do
      # instance = Stripe::InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsFilters.new
      # (instance).should be_a(Stripe::InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsFilters)
    end
  end

  describe "test attribute 'account_subcategories'" do
    it "should work" do
      # instance = Stripe::InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsFilters.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptionsFilters::ENUM_VALIDATOR_FOR_ACCOUNT_SUBCATEGORIES
      # validator.allowable_values.each do |value|
      #   instance.account_subcategories = value.as(Array(String))
      # end
    end
  end
end
