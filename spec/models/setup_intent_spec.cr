#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::SetupIntent
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/setup_intent"

describe Stripe::SetupIntent do
  describe "test an instance of SetupIntent" do
    it "should create an instance of SetupIntent" do
      # instance = Stripe::SetupIntent.new
      # (instance).should be_a(Stripe::SetupIntent)
    end
  end

  describe "test attribute 'application'" do
    it "should work" do
      # instance = Stripe::SetupIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'attach_to_self'" do
    it "should work" do
      # instance = Stripe::SetupIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'automatic_payment_methods'" do
    it "should work" do
      # instance = Stripe::SetupIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'cancellation_reason'" do
    it "should work" do
      # instance = Stripe::SetupIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::SetupIntent::ENUM_VALIDATOR_FOR_CANCELLATION_REASON
      # validator.allowable_values.each do |value|
      #   instance.cancellation_reason = value.as(String)
      # end
    end
  end

  describe "test attribute 'client_secret'" do
    it "should work" do
      # instance = Stripe::SetupIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'created'" do
    it "should work" do
      # instance = Stripe::SetupIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'customer'" do
    it "should work" do
      # instance = Stripe::SetupIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'description'" do
    it "should work" do
      # instance = Stripe::SetupIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'flow_directions'" do
    it "should work" do
      # instance = Stripe::SetupIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::SetupIntent::ENUM_VALIDATOR_FOR_FLOW_DIRECTIONS
      # validator.allowable_values.each do |value|
      #   instance.flow_directions = value.as(Array(String))
      # end
    end
  end

  describe "test attribute 'id'" do
    it "should work" do
      # instance = Stripe::SetupIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'last_setup_error'" do
    it "should work" do
      # instance = Stripe::SetupIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'latest_attempt'" do
    it "should work" do
      # instance = Stripe::SetupIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'livemode'" do
    it "should work" do
      # instance = Stripe::SetupIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'mandate'" do
    it "should work" do
      # instance = Stripe::SetupIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'metadata'" do
    it "should work" do
      # instance = Stripe::SetupIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'next_action'" do
    it "should work" do
      # instance = Stripe::SetupIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'object'" do
    it "should work" do
      # instance = Stripe::SetupIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::SetupIntent::ENUM_VALIDATOR_FOR_OBJECT
      # validator.allowable_values.each do |value|
      #   instance.object = value.as(String)
      # end
    end
  end

  describe "test attribute 'on_behalf_of'" do
    it "should work" do
      # instance = Stripe::SetupIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'payment_method'" do
    it "should work" do
      # instance = Stripe::SetupIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'payment_method_configuration_details'" do
    it "should work" do
      # instance = Stripe::SetupIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'payment_method_options'" do
    it "should work" do
      # instance = Stripe::SetupIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'payment_method_types'" do
    it "should work" do
      # instance = Stripe::SetupIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'single_use_mandate'" do
    it "should work" do
      # instance = Stripe::SetupIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'status'" do
    it "should work" do
      # instance = Stripe::SetupIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::SetupIntent::ENUM_VALIDATOR_FOR_STATUS
      # validator.allowable_values.each do |value|
      #   instance.status = value.as(String)
      # end
    end
  end

  describe "test attribute 'usage'" do
    it "should work" do
      # instance = Stripe::SetupIntent.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
