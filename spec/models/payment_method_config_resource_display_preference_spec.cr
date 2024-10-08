#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::PaymentMethodConfigResourceDisplayPreference
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/payment_method_config_resource_display_preference"

describe Stripe::PaymentMethodConfigResourceDisplayPreference do
  describe "test an instance of PaymentMethodConfigResourceDisplayPreference" do
    it "should create an instance of PaymentMethodConfigResourceDisplayPreference" do
      # instance = Stripe::PaymentMethodConfigResourceDisplayPreference.new
      # (instance).should be_a(Stripe::PaymentMethodConfigResourceDisplayPreference)
    end
  end

  describe "test attribute 'overridable'" do
    it "should work" do
      # instance = Stripe::PaymentMethodConfigResourceDisplayPreference.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'preference'" do
    it "should work" do
      # instance = Stripe::PaymentMethodConfigResourceDisplayPreference.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentMethodConfigResourceDisplayPreference::ENUM_VALIDATOR_FOR_PREFERENCE
      # validator.allowable_values.each do |value|
      #   instance.preference = value.as(String)
      # end
    end
  end

  describe "test attribute 'value'" do
    it "should work" do
      # instance = Stripe::PaymentMethodConfigResourceDisplayPreference.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentMethodConfigResourceDisplayPreference::ENUM_VALIDATOR_FOR_VALUE
      # validator.allowable_values.each do |value|
      #   instance.value = value.as(String)
      # end
    end
  end
end
