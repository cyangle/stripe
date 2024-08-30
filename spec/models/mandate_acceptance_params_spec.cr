#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::MandateAcceptanceParams
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/mandate_acceptance_params"

describe Stripe::MandateAcceptanceParams do
  describe "test an instance of MandateAcceptanceParams" do
    it "should create an instance of MandateAcceptanceParams" do
      # instance = Stripe::MandateAcceptanceParams.new
      # (instance).should be_a(Stripe::MandateAcceptanceParams)
    end
  end

  describe "test attribute 'date'" do
    it "should work" do
      # instance = Stripe::MandateAcceptanceParams.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'ip'" do
    it "should work" do
      # instance = Stripe::MandateAcceptanceParams.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'offline'" do
    it "should work" do
      # instance = Stripe::MandateAcceptanceParams.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'online'" do
    it "should work" do
      # instance = Stripe::MandateAcceptanceParams.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'status'" do
    it "should work" do
      # instance = Stripe::MandateAcceptanceParams.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::MandateAcceptanceParams::ENUM_VALIDATOR_FOR_STATUS
      # validator.allowable_values.each do |value|
      #   instance.status = value.as(String)
      # end
    end
  end

  describe "test attribute '_type'" do
    it "should work" do
      # instance = Stripe::MandateAcceptanceParams.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::MandateAcceptanceParams::ENUM_VALIDATOR_FOR__TYPE
      # validator.allowable_values.each do |value|
      #   instance._type = value.as(String)
      # end
    end
  end

  describe "test attribute 'user_agent'" do
    it "should work" do
      # instance = Stripe::MandateAcceptanceParams.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
