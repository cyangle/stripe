#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::ClimateOrder
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/climate_order"

describe Stripe::ClimateOrder do
  describe "test an instance of ClimateOrder" do
    it "should create an instance of ClimateOrder" do
      # instance = Stripe::ClimateOrder.new
      # (instance).should be_a(Stripe::ClimateOrder)
    end
  end

  describe "test attribute 'amount_fees'" do
    it "should work" do
      # instance = Stripe::ClimateOrder.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'amount_subtotal'" do
    it "should work" do
      # instance = Stripe::ClimateOrder.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'amount_total'" do
    it "should work" do
      # instance = Stripe::ClimateOrder.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'beneficiary'" do
    it "should work" do
      # instance = Stripe::ClimateOrder.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'canceled_at'" do
    it "should work" do
      # instance = Stripe::ClimateOrder.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'cancellation_reason'" do
    it "should work" do
      # instance = Stripe::ClimateOrder.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::ClimateOrder::ENUM_VALIDATOR_FOR_CANCELLATION_REASON
      # validator.allowable_values.each do |value|
      #   instance.cancellation_reason = value.as(String)
      # end
    end
  end

  describe "test attribute 'certificate'" do
    it "should work" do
      # instance = Stripe::ClimateOrder.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'confirmed_at'" do
    it "should work" do
      # instance = Stripe::ClimateOrder.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'created'" do
    it "should work" do
      # instance = Stripe::ClimateOrder.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'currency'" do
    it "should work" do
      # instance = Stripe::ClimateOrder.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'delayed_at'" do
    it "should work" do
      # instance = Stripe::ClimateOrder.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'delivered_at'" do
    it "should work" do
      # instance = Stripe::ClimateOrder.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'delivery_details'" do
    it "should work" do
      # instance = Stripe::ClimateOrder.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'expected_delivery_year'" do
    it "should work" do
      # instance = Stripe::ClimateOrder.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'id'" do
    it "should work" do
      # instance = Stripe::ClimateOrder.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'livemode'" do
    it "should work" do
      # instance = Stripe::ClimateOrder.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'metadata'" do
    it "should work" do
      # instance = Stripe::ClimateOrder.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'metric_tons'" do
    it "should work" do
      # instance = Stripe::ClimateOrder.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'object'" do
    it "should work" do
      # instance = Stripe::ClimateOrder.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::ClimateOrder::ENUM_VALIDATOR_FOR_OBJECT
      # validator.allowable_values.each do |value|
      #   instance.object = value.as(String)
      # end
    end
  end

  describe "test attribute 'product'" do
    it "should work" do
      # instance = Stripe::ClimateOrder.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'product_substituted_at'" do
    it "should work" do
      # instance = Stripe::ClimateOrder.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'status'" do
    it "should work" do
      # instance = Stripe::ClimateOrder.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::ClimateOrder::ENUM_VALIDATOR_FOR_STATUS
      # validator.allowable_values.each do |value|
      #   instance.status = value.as(String)
      # end
    end
  end
end
