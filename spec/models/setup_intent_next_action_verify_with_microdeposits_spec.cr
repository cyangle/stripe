#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::SetupIntentNextActionVerifyWithMicrodeposits
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/setup_intent_next_action_verify_with_microdeposits"

describe Stripe::SetupIntentNextActionVerifyWithMicrodeposits do
  describe "test an instance of SetupIntentNextActionVerifyWithMicrodeposits" do
    it "should create an instance of SetupIntentNextActionVerifyWithMicrodeposits" do
      # instance = Stripe::SetupIntentNextActionVerifyWithMicrodeposits.new
      # (instance).should be_a(Stripe::SetupIntentNextActionVerifyWithMicrodeposits)
    end
  end

  describe "test attribute 'arrival_date'" do
    it "should work" do
      # instance = Stripe::SetupIntentNextActionVerifyWithMicrodeposits.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'hosted_verification_url'" do
    it "should work" do
      # instance = Stripe::SetupIntentNextActionVerifyWithMicrodeposits.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'microdeposit_type'" do
    it "should work" do
      # instance = Stripe::SetupIntentNextActionVerifyWithMicrodeposits.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::SetupIntentNextActionVerifyWithMicrodeposits::ENUM_VALIDATOR_FOR_MICRODEPOSIT_TYPE
      # validator.allowable_values.each do |value|
      #   instance.microdeposit_type = value.as(String)
      # end
    end
  end
end
