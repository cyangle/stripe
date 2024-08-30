#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::ConsentCollectionParams
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/consent_collection_params"

describe Stripe::ConsentCollectionParams do
  describe "test an instance of ConsentCollectionParams" do
    it "should create an instance of ConsentCollectionParams" do
      # instance = Stripe::ConsentCollectionParams.new
      # (instance).should be_a(Stripe::ConsentCollectionParams)
    end
  end

  describe "test attribute 'payment_method_reuse_agreement'" do
    it "should work" do
      # instance = Stripe::ConsentCollectionParams.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'promotions'" do
    it "should work" do
      # instance = Stripe::ConsentCollectionParams.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::ConsentCollectionParams::ENUM_VALIDATOR_FOR_PROMOTIONS
      # validator.allowable_values.each do |value|
      #   instance.promotions = value.as(String)
      # end
    end
  end

  describe "test attribute 'terms_of_service'" do
    it "should work" do
      # instance = Stripe::ConsentCollectionParams.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::ConsentCollectionParams::ENUM_VALIDATOR_FOR_TERMS_OF_SERVICE
      # validator.allowable_values.each do |value|
      #   instance.terms_of_service = value.as(String)
      # end
    end
  end
end
