#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::SavedPaymentMethodOptionsParam
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/saved_payment_method_options_param"

describe Stripe::SavedPaymentMethodOptionsParam do
  describe "test an instance of SavedPaymentMethodOptionsParam" do
    it "should create an instance of SavedPaymentMethodOptionsParam" do
      # instance = Stripe::SavedPaymentMethodOptionsParam.new
      # (instance).should be_a(Stripe::SavedPaymentMethodOptionsParam)
    end
  end

  describe "test attribute 'allow_redisplay_filters'" do
    it "should work" do
      # instance = Stripe::SavedPaymentMethodOptionsParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::SavedPaymentMethodOptionsParam::ENUM_VALIDATOR_FOR_ALLOW_REDISPLAY_FILTERS
      # validator.allowable_values.each do |value|
      #   instance.allow_redisplay_filters = value.as(Array(String))
      # end
    end
  end

  describe "test attribute 'payment_method_save'" do
    it "should work" do
      # instance = Stripe::SavedPaymentMethodOptionsParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::SavedPaymentMethodOptionsParam::ENUM_VALIDATOR_FOR_PAYMENT_METHOD_SAVE
      # validator.allowable_values.each do |value|
      #   instance.payment_method_save = value.as(String)
      # end
    end
  end
end
