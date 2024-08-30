#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::DefaultSettingsParams
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/default_settings_params"

describe Stripe::DefaultSettingsParams do
  describe "test an instance of DefaultSettingsParams" do
    it "should create an instance of DefaultSettingsParams" do
      # instance = Stripe::DefaultSettingsParams.new
      # (instance).should be_a(Stripe::DefaultSettingsParams)
    end
  end

  describe "test attribute 'application_fee_percent'" do
    it "should work" do
      # instance = Stripe::DefaultSettingsParams.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'automatic_tax'" do
    it "should work" do
      # instance = Stripe::DefaultSettingsParams.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'billing_cycle_anchor'" do
    it "should work" do
      # instance = Stripe::DefaultSettingsParams.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::DefaultSettingsParams::ENUM_VALIDATOR_FOR_BILLING_CYCLE_ANCHOR
      # validator.allowable_values.each do |value|
      #   instance.billing_cycle_anchor = value.as(String)
      # end
    end
  end

  describe "test attribute 'billing_thresholds'" do
    it "should work" do
      # instance = Stripe::DefaultSettingsParams.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'collection_method'" do
    it "should work" do
      # instance = Stripe::DefaultSettingsParams.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::DefaultSettingsParams::ENUM_VALIDATOR_FOR_COLLECTION_METHOD
      # validator.allowable_values.each do |value|
      #   instance.collection_method = value.as(String)
      # end
    end
  end

  describe "test attribute 'default_payment_method'" do
    it "should work" do
      # instance = Stripe::DefaultSettingsParams.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'description'" do
    it "should work" do
      # instance = Stripe::DefaultSettingsParams.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::DefaultSettingsParams::ENUM_VALIDATOR_FOR_DESCRIPTION
      # validator.allowable_values.each do |value|
      #   instance.description = value.as(String)
      # end
    end
  end

  describe "test attribute 'invoice_settings'" do
    it "should work" do
      # instance = Stripe::DefaultSettingsParams.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'on_behalf_of'" do
    it "should work" do
      # instance = Stripe::DefaultSettingsParams.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::DefaultSettingsParams::ENUM_VALIDATOR_FOR_ON_BEHALF_OF
      # validator.allowable_values.each do |value|
      #   instance.on_behalf_of = value.as(String)
      # end
    end
  end

  describe "test attribute 'transfer_data'" do
    it "should work" do
      # instance = Stripe::DefaultSettingsParams.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
