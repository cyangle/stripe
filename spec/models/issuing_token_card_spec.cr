#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::IssuingTokenCard
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/issuing_token_card"

describe Stripe::IssuingTokenCard do
  describe "test an instance of IssuingTokenCard" do
    it "should create an instance of IssuingTokenCard" do
      # instance = Stripe::IssuingTokenCard.new
      # (instance).should be_a(Stripe::IssuingTokenCard)
    end
  end

  describe "test attribute 'brand'" do
    it "should work" do
      # instance = Stripe::IssuingTokenCard.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'cancellation_reason'" do
    it "should work" do
      # instance = Stripe::IssuingTokenCard.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::IssuingTokenCard::ENUM_VALIDATOR_FOR_CANCELLATION_REASON
      # validator.allowable_values.each do |value|
      #   instance.cancellation_reason = value.as(String)
      # end
    end
  end

  describe "test attribute 'cardholder'" do
    it "should work" do
      # instance = Stripe::IssuingTokenCard.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'created'" do
    it "should work" do
      # instance = Stripe::IssuingTokenCard.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'currency'" do
    it "should work" do
      # instance = Stripe::IssuingTokenCard.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'cvc'" do
    it "should work" do
      # instance = Stripe::IssuingTokenCard.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'exp_month'" do
    it "should work" do
      # instance = Stripe::IssuingTokenCard.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'exp_year'" do
    it "should work" do
      # instance = Stripe::IssuingTokenCard.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'financial_account'" do
    it "should work" do
      # instance = Stripe::IssuingTokenCard.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'id'" do
    it "should work" do
      # instance = Stripe::IssuingTokenCard.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'last4'" do
    it "should work" do
      # instance = Stripe::IssuingTokenCard.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'livemode'" do
    it "should work" do
      # instance = Stripe::IssuingTokenCard.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'metadata'" do
    it "should work" do
      # instance = Stripe::IssuingTokenCard.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'number'" do
    it "should work" do
      # instance = Stripe::IssuingTokenCard.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'object'" do
    it "should work" do
      # instance = Stripe::IssuingTokenCard.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::IssuingTokenCard::ENUM_VALIDATOR_FOR_OBJECT
      # validator.allowable_values.each do |value|
      #   instance.object = value.as(String)
      # end
    end
  end

  describe "test attribute 'personalization_design'" do
    it "should work" do
      # instance = Stripe::IssuingTokenCard.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'replaced_by'" do
    it "should work" do
      # instance = Stripe::IssuingTokenCard.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'replacement_for'" do
    it "should work" do
      # instance = Stripe::IssuingTokenCard.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'replacement_reason'" do
    it "should work" do
      # instance = Stripe::IssuingTokenCard.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::IssuingTokenCard::ENUM_VALIDATOR_FOR_REPLACEMENT_REASON
      # validator.allowable_values.each do |value|
      #   instance.replacement_reason = value.as(String)
      # end
    end
  end

  describe "test attribute 'shipping'" do
    it "should work" do
      # instance = Stripe::IssuingTokenCard.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'spending_controls'" do
    it "should work" do
      # instance = Stripe::IssuingTokenCard.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'status'" do
    it "should work" do
      # instance = Stripe::IssuingTokenCard.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::IssuingTokenCard::ENUM_VALIDATOR_FOR_STATUS
      # validator.allowable_values.each do |value|
      #   instance.status = value.as(String)
      # end
    end
  end

  describe "test attribute '_type'" do
    it "should work" do
      # instance = Stripe::IssuingTokenCard.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::IssuingTokenCard::ENUM_VALIDATOR_FOR__TYPE
      # validator.allowable_values.each do |value|
      #   instance._type = value.as(String)
      # end
    end
  end

  describe "test attribute 'wallets'" do
    it "should work" do
      # instance = Stripe::IssuingTokenCard.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
