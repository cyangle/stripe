#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::PaymentIntent
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/payment_intent"

describe Stripe::PaymentIntent do
  describe "test an instance of PaymentIntent" do
    it "should create an instance of PaymentIntent" do
      # instance = Stripe::PaymentIntent.new
      # (instance).should be_a(Stripe::PaymentIntent)
    end
  end

  describe "test attribute 'amount'" do
    it "should work" do
      # instance = Stripe::PaymentIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'amount_capturable'" do
    it "should work" do
      # instance = Stripe::PaymentIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'amount_details'" do
    it "should work" do
      # instance = Stripe::PaymentIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'amount_received'" do
    it "should work" do
      # instance = Stripe::PaymentIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'application'" do
    it "should work" do
      # instance = Stripe::PaymentIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'application_fee_amount'" do
    it "should work" do
      # instance = Stripe::PaymentIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'automatic_payment_methods'" do
    it "should work" do
      # instance = Stripe::PaymentIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'canceled_at'" do
    it "should work" do
      # instance = Stripe::PaymentIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'cancellation_reason'" do
    it "should work" do
      # instance = Stripe::PaymentIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentIntent::ENUM_VALIDATOR_FOR_CANCELLATION_REASON
      # validator.allowable_values.each do |value|
      #   instance.cancellation_reason = value.as(String)
      # end
    end
  end

  describe "test attribute 'capture_method'" do
    it "should work" do
      # instance = Stripe::PaymentIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentIntent::ENUM_VALIDATOR_FOR_CAPTURE_METHOD
      # validator.allowable_values.each do |value|
      #   instance.capture_method = value.as(String)
      # end
    end
  end

  describe "test attribute 'client_secret'" do
    it "should work" do
      # instance = Stripe::PaymentIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'confirmation_method'" do
    it "should work" do
      # instance = Stripe::PaymentIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentIntent::ENUM_VALIDATOR_FOR_CONFIRMATION_METHOD
      # validator.allowable_values.each do |value|
      #   instance.confirmation_method = value.as(String)
      # end
    end
  end

  describe "test attribute 'created'" do
    it "should work" do
      # instance = Stripe::PaymentIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'currency'" do
    it "should work" do
      # instance = Stripe::PaymentIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'customer'" do
    it "should work" do
      # instance = Stripe::PaymentIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'description'" do
    it "should work" do
      # instance = Stripe::PaymentIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'id'" do
    it "should work" do
      # instance = Stripe::PaymentIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'invoice'" do
    it "should work" do
      # instance = Stripe::PaymentIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'last_payment_error'" do
    it "should work" do
      # instance = Stripe::PaymentIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'latest_charge'" do
    it "should work" do
      # instance = Stripe::PaymentIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'livemode'" do
    it "should work" do
      # instance = Stripe::PaymentIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'metadata'" do
    it "should work" do
      # instance = Stripe::PaymentIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'next_action'" do
    it "should work" do
      # instance = Stripe::PaymentIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'object'" do
    it "should work" do
      # instance = Stripe::PaymentIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentIntent::ENUM_VALIDATOR_FOR_OBJECT
      # validator.allowable_values.each do |value|
      #   instance.object = value.as(String)
      # end
    end
  end

  describe "test attribute 'on_behalf_of'" do
    it "should work" do
      # instance = Stripe::PaymentIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'payment_method'" do
    it "should work" do
      # instance = Stripe::PaymentIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'payment_method_configuration_details'" do
    it "should work" do
      # instance = Stripe::PaymentIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'payment_method_options'" do
    it "should work" do
      # instance = Stripe::PaymentIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'payment_method_types'" do
    it "should work" do
      # instance = Stripe::PaymentIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'processing'" do
    it "should work" do
      # instance = Stripe::PaymentIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'receipt_email'" do
    it "should work" do
      # instance = Stripe::PaymentIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'review'" do
    it "should work" do
      # instance = Stripe::PaymentIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'setup_future_usage'" do
    it "should work" do
      # instance = Stripe::PaymentIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentIntent::ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE
      # validator.allowable_values.each do |value|
      #   instance.setup_future_usage = value.as(String)
      # end
    end
  end

  describe "test attribute 'shipping'" do
    it "should work" do
      # instance = Stripe::PaymentIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'source'" do
    it "should work" do
      # instance = Stripe::PaymentIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'statement_descriptor'" do
    it "should work" do
      # instance = Stripe::PaymentIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'statement_descriptor_suffix'" do
    it "should work" do
      # instance = Stripe::PaymentIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'status'" do
    it "should work" do
      # instance = Stripe::PaymentIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentIntent::ENUM_VALIDATOR_FOR_STATUS
      # validator.allowable_values.each do |value|
      #   instance.status = value.as(String)
      # end
    end
  end

  describe "test attribute 'transfer_data'" do
    it "should work" do
      # instance = Stripe::PaymentIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'transfer_group'" do
    it "should work" do
      # instance = Stripe::PaymentIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
