#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::MandateBacsDebit
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/mandate_bacs_debit"

describe Stripe::MandateBacsDebit do
  describe "test an instance of MandateBacsDebit" do
    it "should create an instance of MandateBacsDebit" do
      # instance = Stripe::MandateBacsDebit.new
      # (instance).should be_a(Stripe::MandateBacsDebit)
    end
  end

  describe "test attribute 'network_status'" do
    it "should work" do
      # instance = Stripe::MandateBacsDebit.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::MandateBacsDebit::ENUM_VALIDATOR_FOR_NETWORK_STATUS
      # validator.allowable_values.each do |value|
      #   instance.network_status = value.as(String)
      # end
    end
  end

  describe "test attribute 'reference'" do
    it "should work" do
      # instance = Stripe::MandateBacsDebit.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'revocation_reason'" do
    it "should work" do
      # instance = Stripe::MandateBacsDebit.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::MandateBacsDebit::ENUM_VALIDATOR_FOR_REVOCATION_REASON
      # validator.allowable_values.each do |value|
      #   instance.revocation_reason = value.as(String)
      # end
    end
  end

  describe "test attribute 'url'" do
    it "should work" do
      # instance = Stripe::MandateBacsDebit.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
