#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::IssuingAuthorizationRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::IssuingAuthorizationRequest do
  describe "test an instance of IssuingAuthorizationRequest" do
    it "should create an instance of IssuingAuthorizationRequest" do
      # instance = Stripe::IssuingAuthorizationRequest.new
      # expect(instance).to be_instance_of(Stripe::IssuingAuthorizationRequest)
    end
  end

  describe "test attribute 'amount'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'amount_details'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'approved'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'created'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'currency'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'merchant_amount'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'merchant_currency'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'reason'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = EnumValidator.new("String", ["account_disabled", "card_active", "card_inactive", "cardholder_inactive", "cardholder_verification_required", "insufficient_funds", "not_allowed", "spending_controls", "suspected_fraud", "verification_failed", "webhook_approved", "webhook_declined", "webhook_timeout"])
      # validator.allowable_values.each do |value|
      #   expect { instance.reason = value }.not_to raise_error
      # end
    end
  end
end
