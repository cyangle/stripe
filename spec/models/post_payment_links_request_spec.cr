#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::PostPaymentLinksRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::PostPaymentLinksRequest do
  describe "test an instance of PostPaymentLinksRequest" do
    it "should create an instance of PostPaymentLinksRequest" do
      # instance = Stripe::PostPaymentLinksRequest.new
      # (instance).should be_a(Stripe::PostPaymentLinksRequest)
    end
  end

  describe "test attribute 'after_completion'" do
    it "should work" do
      # instance = Stripe::PostPaymentLinksRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'allow_promotion_codes'" do
    it "should work" do
      # instance = Stripe::PostPaymentLinksRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'application_fee_amount'" do
    it "should work" do
      # instance = Stripe::PostPaymentLinksRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'application_fee_percent'" do
    it "should work" do
      # instance = Stripe::PostPaymentLinksRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'automatic_tax'" do
    it "should work" do
      # instance = Stripe::PostPaymentLinksRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'billing_address_collection'" do
    it "should work" do
      # instance = Stripe::PostPaymentLinksRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PostPaymentLinksRequest::ENUM_VALIDATOR_FOR_BILLING_ADDRESS_COLLECTION
      # validator.allowable_values.each do |value|
      #   instance.billing_address_collection = value.as(String)
      # end
    end
  end

  describe "test attribute 'consent_collection'" do
    it "should work" do
      # instance = Stripe::PostPaymentLinksRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'currency'" do
    it "should work" do
      # instance = Stripe::PostPaymentLinksRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'custom_text'" do
    it "should work" do
      # instance = Stripe::PostPaymentLinksRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'customer_creation'" do
    it "should work" do
      # instance = Stripe::PostPaymentLinksRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PostPaymentLinksRequest::ENUM_VALIDATOR_FOR_CUSTOMER_CREATION
      # validator.allowable_values.each do |value|
      #   instance.customer_creation = value.as(String)
      # end
    end
  end

  describe "test attribute 'expand'" do
    it "should work" do
      # instance = Stripe::PostPaymentLinksRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'line_items'" do
    it "should work" do
      # instance = Stripe::PostPaymentLinksRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'metadata'" do
    it "should work" do
      # instance = Stripe::PostPaymentLinksRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'on_behalf_of'" do
    it "should work" do
      # instance = Stripe::PostPaymentLinksRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'payment_intent_data'" do
    it "should work" do
      # instance = Stripe::PostPaymentLinksRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'payment_method_collection'" do
    it "should work" do
      # instance = Stripe::PostPaymentLinksRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PostPaymentLinksRequest::ENUM_VALIDATOR_FOR_PAYMENT_METHOD_COLLECTION
      # validator.allowable_values.each do |value|
      #   instance.payment_method_collection = value.as(String)
      # end
    end
  end

  describe "test attribute 'payment_method_types'" do
    it "should work" do
      # instance = Stripe::PostPaymentLinksRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PostPaymentLinksRequest::ENUM_VALIDATOR_FOR_PAYMENT_METHOD_TYPES
      # validator.allowable_values.each do |value|
      #   instance.payment_method_types = value.as(Array(String))
      # end
    end
  end

  describe "test attribute 'phone_number_collection'" do
    it "should work" do
      # instance = Stripe::PostPaymentLinksRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'shipping_address_collection'" do
    it "should work" do
      # instance = Stripe::PostPaymentLinksRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'shipping_options'" do
    it "should work" do
      # instance = Stripe::PostPaymentLinksRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'submit_type'" do
    it "should work" do
      # instance = Stripe::PostPaymentLinksRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PostPaymentLinksRequest::ENUM_VALIDATOR_FOR_SUBMIT_TYPE
      # validator.allowable_values.each do |value|
      #   instance.submit_type = value.as(String)
      # end
    end
  end

  describe "test attribute 'subscription_data'" do
    it "should work" do
      # instance = Stripe::PostPaymentLinksRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'tax_id_collection'" do
    it "should work" do
      # instance = Stripe::PostPaymentLinksRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'transfer_data'" do
    it "should work" do
      # instance = Stripe::PostPaymentLinksRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
