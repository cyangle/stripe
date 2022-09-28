#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-08-01
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::MandateOptionsParam
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::MandateOptionsParam do
  describe "test an instance of MandateOptionsParam" do
    it "should create an instance of MandateOptionsParam" do
      # instance = Stripe::MandateOptionsParam.new
      # (instance).should be_a(Stripe::MandateOptionsParam)
    end
  end

  describe "test attribute 'custom_mandate_url'" do
    it "should work" do
      # instance = Stripe::MandateOptionsParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'default_for'" do
    it "should work" do
      # instance = Stripe::MandateOptionsParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::MandateOptionsParam::ENUM_VALIDATOR_FOR_DEFAULT_FOR
      # validator.allowable_values.each do |value|
      #   instance.default_for = value.as(Array(String))
      # end
    end
  end

  describe "test attribute 'interval_description'" do
    it "should work" do
      # instance = Stripe::MandateOptionsParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'payment_schedule'" do
    it "should work" do
      # instance = Stripe::MandateOptionsParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::MandateOptionsParam::ENUM_VALIDATOR_FOR_PAYMENT_SCHEDULE
      # validator.allowable_values.each do |value|
      #   instance.payment_schedule = value.as(String)
      # end
    end
  end

  describe "test attribute 'transaction_type'" do
    it "should work" do
      # instance = Stripe::MandateOptionsParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::MandateOptionsParam::ENUM_VALIDATOR_FOR_TRANSACTION_TYPE
      # validator.allowable_values.each do |value|
      #   instance.transaction_type = value.as(String)
      # end
    end
  end
end
