#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::PaymentIntentParam
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::PaymentIntentParam do
  describe "test an instance of PaymentIntentParam" do
    it "should create an instance of PaymentIntentParam" do
      # instance = Stripe::PaymentIntentParam.new
      # (instance).should be_a(Stripe::PaymentIntentParam)
    end
  end

  describe "test attribute 'capture_method'" do
    it "should work" do
      # instance = Stripe::PaymentIntentParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentIntentParam::ENUM_VALIDATOR_FOR_CAPTURE_METHOD
      # validator.allowable_values.each do |value|
      #   instance.capture_method = value.as(String)
      # end
    end
  end

  describe "test attribute 'cvc_token'" do
    it "should work" do
      # instance = Stripe::PaymentIntentParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'installments'" do
    it "should work" do
      # instance = Stripe::PaymentIntentParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'mandate_options'" do
    it "should work" do
      # instance = Stripe::PaymentIntentParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'network'" do
    it "should work" do
      # instance = Stripe::PaymentIntentParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentIntentParam::ENUM_VALIDATOR_FOR_NETWORK
      # validator.allowable_values.each do |value|
      #   instance.network = value.as(String)
      # end
    end
  end

  describe "test attribute 'request_three_d_secure'" do
    it "should work" do
      # instance = Stripe::PaymentIntentParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentIntentParam::ENUM_VALIDATOR_FOR_REQUEST_THREE_D_SECURE
      # validator.allowable_values.each do |value|
      #   instance.request_three_d_secure = value.as(String)
      # end
    end
  end

  describe "test attribute 'setup_future_usage'" do
    it "should work" do
      # instance = Stripe::PaymentIntentParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentIntentParam::ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE
      # validator.allowable_values.each do |value|
      #   instance.setup_future_usage = value.as(String)
      # end
    end
  end

  describe "test attribute 'statement_descriptor_suffix_kana'" do
    it "should work" do
      # instance = Stripe::PaymentIntentParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'statement_descriptor_suffix_kanji'" do
    it "should work" do
      # instance = Stripe::PaymentIntentParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
