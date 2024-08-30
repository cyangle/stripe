#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::PostIssuingCardholdersCardholderRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/post_issuing_cardholders_cardholder_request"

describe Stripe::PostIssuingCardholdersCardholderRequest do
  describe "test an instance of PostIssuingCardholdersCardholderRequest" do
    it "should create an instance of PostIssuingCardholdersCardholderRequest" do
      # instance = Stripe::PostIssuingCardholdersCardholderRequest.new
      # (instance).should be_a(Stripe::PostIssuingCardholdersCardholderRequest)
    end
  end

  describe "test attribute 'billing'" do
    it "should work" do
      # instance = Stripe::PostIssuingCardholdersCardholderRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'company'" do
    it "should work" do
      # instance = Stripe::PostIssuingCardholdersCardholderRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'email'" do
    it "should work" do
      # instance = Stripe::PostIssuingCardholdersCardholderRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'expand'" do
    it "should work" do
      # instance = Stripe::PostIssuingCardholdersCardholderRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'individual'" do
    it "should work" do
      # instance = Stripe::PostIssuingCardholdersCardholderRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'metadata'" do
    it "should work" do
      # instance = Stripe::PostIssuingCardholdersCardholderRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'phone_number'" do
    it "should work" do
      # instance = Stripe::PostIssuingCardholdersCardholderRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'preferred_locales'" do
    it "should work" do
      # instance = Stripe::PostIssuingCardholdersCardholderRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PostIssuingCardholdersCardholderRequest::ENUM_VALIDATOR_FOR_PREFERRED_LOCALES
      # validator.allowable_values.each do |value|
      #   instance.preferred_locales = value.as(Array(String))
      # end
    end
  end

  describe "test attribute 'spending_controls'" do
    it "should work" do
      # instance = Stripe::PostIssuingCardholdersCardholderRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'status'" do
    it "should work" do
      # instance = Stripe::PostIssuingCardholdersCardholderRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PostIssuingCardholdersCardholderRequest::ENUM_VALIDATOR_FOR_STATUS
      # validator.allowable_values.each do |value|
      #   instance.status = value.as(String)
      # end
    end
  end
end
