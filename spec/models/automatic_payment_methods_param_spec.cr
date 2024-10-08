#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::AutomaticPaymentMethodsParam
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/automatic_payment_methods_param"

describe Stripe::AutomaticPaymentMethodsParam do
  describe "test an instance of AutomaticPaymentMethodsParam" do
    it "should create an instance of AutomaticPaymentMethodsParam" do
      # instance = Stripe::AutomaticPaymentMethodsParam.new
      # (instance).should be_a(Stripe::AutomaticPaymentMethodsParam)
    end
  end

  describe "test attribute 'allow_redirects'" do
    it "should work" do
      # instance = Stripe::AutomaticPaymentMethodsParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::AutomaticPaymentMethodsParam::ENUM_VALIDATOR_FOR_ALLOW_REDIRECTS
      # validator.allowable_values.each do |value|
      #   instance.allow_redirects = value.as(String)
      # end
    end
  end

  describe "test attribute 'enabled'" do
    it "should work" do
      # instance = Stripe::AutomaticPaymentMethodsParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
