#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::PaymentLink
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/payment_link"

describe Stripe::PaymentLink do
  describe "test an instance of PaymentLink" do
    it "should create an instance of PaymentLink" do
      # instance = Stripe::PaymentLink.new
      # (instance).should be_a(Stripe::PaymentLink)
    end
  end

  describe "test attribute 'active'" do
    it "should work" do
      # instance = Stripe::PaymentLink.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'after_completion'" do
    it "should work" do
      # instance = Stripe::PaymentLink.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'allow_promotion_codes'" do
    it "should work" do
      # instance = Stripe::PaymentLink.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'application'" do
    it "should work" do
      # instance = Stripe::PaymentLink.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'application_fee_amount'" do
    it "should work" do
      # instance = Stripe::PaymentLink.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'application_fee_percent'" do
    it "should work" do
      # instance = Stripe::PaymentLink.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'automatic_tax'" do
    it "should work" do
      # instance = Stripe::PaymentLink.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'billing_address_collection'" do
    it "should work" do
      # instance = Stripe::PaymentLink.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentLink::ENUM_VALIDATOR_FOR_BILLING_ADDRESS_COLLECTION
      # validator.allowable_values.each do |value|
      #   instance.billing_address_collection = value.as(String)
      # end
    end
  end

  describe "test attribute 'consent_collection'" do
    it "should work" do
      # instance = Stripe::PaymentLink.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'currency'" do
    it "should work" do
      # instance = Stripe::PaymentLink.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'custom_fields'" do
    it "should work" do
      # instance = Stripe::PaymentLink.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'custom_text'" do
    it "should work" do
      # instance = Stripe::PaymentLink.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'customer_creation'" do
    it "should work" do
      # instance = Stripe::PaymentLink.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentLink::ENUM_VALIDATOR_FOR_CUSTOMER_CREATION
      # validator.allowable_values.each do |value|
      #   instance.customer_creation = value.as(String)
      # end
    end
  end

  describe "test attribute 'id'" do
    it "should work" do
      # instance = Stripe::PaymentLink.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'inactive_message'" do
    it "should work" do
      # instance = Stripe::PaymentLink.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'invoice_creation'" do
    it "should work" do
      # instance = Stripe::PaymentLink.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'line_items'" do
    it "should work" do
      # instance = Stripe::PaymentLink.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'livemode'" do
    it "should work" do
      # instance = Stripe::PaymentLink.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'metadata'" do
    it "should work" do
      # instance = Stripe::PaymentLink.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'object'" do
    it "should work" do
      # instance = Stripe::PaymentLink.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentLink::ENUM_VALIDATOR_FOR_OBJECT
      # validator.allowable_values.each do |value|
      #   instance.object = value.as(String)
      # end
    end
  end

  describe "test attribute 'on_behalf_of'" do
    it "should work" do
      # instance = Stripe::PaymentLink.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'payment_intent_data'" do
    it "should work" do
      # instance = Stripe::PaymentLink.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'payment_method_collection'" do
    it "should work" do
      # instance = Stripe::PaymentLink.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentLink::ENUM_VALIDATOR_FOR_PAYMENT_METHOD_COLLECTION
      # validator.allowable_values.each do |value|
      #   instance.payment_method_collection = value.as(String)
      # end
    end
  end

  describe "test attribute 'payment_method_types'" do
    it "should work" do
      # instance = Stripe::PaymentLink.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentLink::ENUM_VALIDATOR_FOR_PAYMENT_METHOD_TYPES
      # validator.allowable_values.each do |value|
      #   instance.payment_method_types = value.as(Array(String))
      # end
    end
  end

  describe "test attribute 'phone_number_collection'" do
    it "should work" do
      # instance = Stripe::PaymentLink.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'restrictions'" do
    it "should work" do
      # instance = Stripe::PaymentLink.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'shipping_address_collection'" do
    it "should work" do
      # instance = Stripe::PaymentLink.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'shipping_options'" do
    it "should work" do
      # instance = Stripe::PaymentLink.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'submit_type'" do
    it "should work" do
      # instance = Stripe::PaymentLink.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentLink::ENUM_VALIDATOR_FOR_SUBMIT_TYPE
      # validator.allowable_values.each do |value|
      #   instance.submit_type = value.as(String)
      # end
    end
  end

  describe "test attribute 'subscription_data'" do
    it "should work" do
      # instance = Stripe::PaymentLink.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'tax_id_collection'" do
    it "should work" do
      # instance = Stripe::PaymentLink.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'transfer_data'" do
    it "should work" do
      # instance = Stripe::PaymentLink.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'url'" do
    it "should work" do
      # instance = Stripe::PaymentLink.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
