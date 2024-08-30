#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::PaymentPagesCheckoutSessionCustomerDetails
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/payment_pages_checkout_session_customer_details"

describe Stripe::PaymentPagesCheckoutSessionCustomerDetails do
  describe "test an instance of PaymentPagesCheckoutSessionCustomerDetails" do
    it "should create an instance of PaymentPagesCheckoutSessionCustomerDetails" do
      # instance = Stripe::PaymentPagesCheckoutSessionCustomerDetails.new
      # (instance).should be_a(Stripe::PaymentPagesCheckoutSessionCustomerDetails)
    end
  end

  describe "test attribute 'address'" do
    it "should work" do
      # instance = Stripe::PaymentPagesCheckoutSessionCustomerDetails.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'email'" do
    it "should work" do
      # instance = Stripe::PaymentPagesCheckoutSessionCustomerDetails.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'name'" do
    it "should work" do
      # instance = Stripe::PaymentPagesCheckoutSessionCustomerDetails.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'phone'" do
    it "should work" do
      # instance = Stripe::PaymentPagesCheckoutSessionCustomerDetails.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'tax_exempt'" do
    it "should work" do
      # instance = Stripe::PaymentPagesCheckoutSessionCustomerDetails.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentPagesCheckoutSessionCustomerDetails::ENUM_VALIDATOR_FOR_TAX_EXEMPT
      # validator.allowable_values.each do |value|
      #   instance.tax_exempt = value.as(String)
      # end
    end
  end

  describe "test attribute 'tax_ids'" do
    it "should work" do
      # instance = Stripe::PaymentPagesCheckoutSessionCustomerDetails.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
