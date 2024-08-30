#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::PostIssuingCardsRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/post_issuing_cards_request"

describe Stripe::PostIssuingCardsRequest do
  describe "test an instance of PostIssuingCardsRequest" do
    it "should create an instance of PostIssuingCardsRequest" do
      # instance = Stripe::PostIssuingCardsRequest.new
      # (instance).should be_a(Stripe::PostIssuingCardsRequest)
    end
  end

  describe "test attribute 'cardholder'" do
    it "should work" do
      # instance = Stripe::PostIssuingCardsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'currency'" do
    it "should work" do
      # instance = Stripe::PostIssuingCardsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'expand'" do
    it "should work" do
      # instance = Stripe::PostIssuingCardsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'financial_account'" do
    it "should work" do
      # instance = Stripe::PostIssuingCardsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'metadata'" do
    it "should work" do
      # instance = Stripe::PostIssuingCardsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'personalization_design'" do
    it "should work" do
      # instance = Stripe::PostIssuingCardsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'pin'" do
    it "should work" do
      # instance = Stripe::PostIssuingCardsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'replacement_for'" do
    it "should work" do
      # instance = Stripe::PostIssuingCardsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'replacement_reason'" do
    it "should work" do
      # instance = Stripe::PostIssuingCardsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PostIssuingCardsRequest::ENUM_VALIDATOR_FOR_REPLACEMENT_REASON
      # validator.allowable_values.each do |value|
      #   instance.replacement_reason = value.as(String)
      # end
    end
  end

  describe "test attribute 'second_line'" do
    it "should work" do
      # instance = Stripe::PostIssuingCardsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PostIssuingCardsRequest::ENUM_VALIDATOR_FOR_SECOND_LINE
      # validator.allowable_values.each do |value|
      #   instance.second_line = value.as(String)
      # end
    end
  end

  describe "test attribute 'shipping'" do
    it "should work" do
      # instance = Stripe::PostIssuingCardsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'spending_controls'" do
    it "should work" do
      # instance = Stripe::PostIssuingCardsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'status'" do
    it "should work" do
      # instance = Stripe::PostIssuingCardsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PostIssuingCardsRequest::ENUM_VALIDATOR_FOR_STATUS
      # validator.allowable_values.each do |value|
      #   instance.status = value.as(String)
      # end
    end
  end

  describe "test attribute '_type'" do
    it "should work" do
      # instance = Stripe::PostIssuingCardsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PostIssuingCardsRequest::ENUM_VALIDATOR_FOR__TYPE
      # validator.allowable_values.each do |value|
      #   instance._type = value.as(String)
      # end
    end
  end
end
