#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/invoice_payment_method_options_customer_balance_bank_transfer_eu_bank_transfer"

describe Stripe::InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer do
  describe "test an instance of InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer" do
    it "should create an instance of InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer" do
      # instance = Stripe::InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer.new
      # (instance).should be_a(Stripe::InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer)
    end
  end

  describe "test attribute 'country'" do
    it "should work" do
      # instance = Stripe::InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer::ENUM_VALIDATOR_FOR_COUNTRY
      # validator.allowable_values.each do |value|
      #   instance.country = value.as(String)
      # end
    end
  end
end
