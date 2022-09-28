#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-08-01
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::PostPaymentIntentsRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::PostPaymentIntentsRequest do
  describe "test an instance of PostPaymentIntentsRequest" do
    it "should create an instance of PostPaymentIntentsRequest" do
      # instance = Stripe::PostPaymentIntentsRequest.new
      # (instance).should be_a(Stripe::PostPaymentIntentsRequest)
    end
  end

  describe "test attribute 'amount'" do
    it "should work" do
      # instance = Stripe::PostPaymentIntentsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'application_fee_amount'" do
    it "should work" do
      # instance = Stripe::PostPaymentIntentsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'automatic_payment_methods'" do
    it "should work" do
      # instance = Stripe::PostPaymentIntentsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'capture_method'" do
    it "should work" do
      # instance = Stripe::PostPaymentIntentsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PostPaymentIntentsRequest::ENUM_VALIDATOR_FOR_CAPTURE_METHOD
      # validator.allowable_values.each do |value|
      #   instance.capture_method = value.as(String)
      # end
    end
  end

  describe "test attribute 'confirm'" do
    it "should work" do
      # instance = Stripe::PostPaymentIntentsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'confirmation_method'" do
    it "should work" do
      # instance = Stripe::PostPaymentIntentsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PostPaymentIntentsRequest::ENUM_VALIDATOR_FOR_CONFIRMATION_METHOD
      # validator.allowable_values.each do |value|
      #   instance.confirmation_method = value.as(String)
      # end
    end
  end

  describe "test attribute 'currency'" do
    it "should work" do
      # instance = Stripe::PostPaymentIntentsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'customer'" do
    it "should work" do
      # instance = Stripe::PostPaymentIntentsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'description'" do
    it "should work" do
      # instance = Stripe::PostPaymentIntentsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'error_on_requires_action'" do
    it "should work" do
      # instance = Stripe::PostPaymentIntentsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'expand'" do
    it "should work" do
      # instance = Stripe::PostPaymentIntentsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'mandate'" do
    it "should work" do
      # instance = Stripe::PostPaymentIntentsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'mandate_data'" do
    it "should work" do
      # instance = Stripe::PostPaymentIntentsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'metadata'" do
    it "should work" do
      # instance = Stripe::PostPaymentIntentsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'off_session'" do
    it "should work" do
      # instance = Stripe::PostPaymentIntentsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'on_behalf_of'" do
    it "should work" do
      # instance = Stripe::PostPaymentIntentsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'payment_method'" do
    it "should work" do
      # instance = Stripe::PostPaymentIntentsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'payment_method_data'" do
    it "should work" do
      # instance = Stripe::PostPaymentIntentsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'payment_method_options'" do
    it "should work" do
      # instance = Stripe::PostPaymentIntentsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'payment_method_types'" do
    it "should work" do
      # instance = Stripe::PostPaymentIntentsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'radar_options'" do
    it "should work" do
      # instance = Stripe::PostPaymentIntentsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'receipt_email'" do
    it "should work" do
      # instance = Stripe::PostPaymentIntentsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'return_url'" do
    it "should work" do
      # instance = Stripe::PostPaymentIntentsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'setup_future_usage'" do
    it "should work" do
      # instance = Stripe::PostPaymentIntentsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PostPaymentIntentsRequest::ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE
      # validator.allowable_values.each do |value|
      #   instance.setup_future_usage = value.as(String)
      # end
    end
  end

  describe "test attribute 'shipping'" do
    it "should work" do
      # instance = Stripe::PostPaymentIntentsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'statement_descriptor'" do
    it "should work" do
      # instance = Stripe::PostPaymentIntentsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'statement_descriptor_suffix'" do
    it "should work" do
      # instance = Stripe::PostPaymentIntentsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'transfer_data'" do
    it "should work" do
      # instance = Stripe::PostPaymentIntentsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'transfer_group'" do
    it "should work" do
      # instance = Stripe::PostPaymentIntentsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'use_stripe_sdk'" do
    it "should work" do
      # instance = Stripe::PostPaymentIntentsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
