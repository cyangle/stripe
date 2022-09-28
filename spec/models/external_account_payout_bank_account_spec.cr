#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-08-01
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::ExternalAccountPayoutBankAccount
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::ExternalAccountPayoutBankAccount do
  describe "test an instance of ExternalAccountPayoutBankAccount" do
    it "should create an instance of ExternalAccountPayoutBankAccount" do
      # instance = Stripe::ExternalAccountPayoutBankAccount.new
      # (instance).should be_a(Stripe::ExternalAccountPayoutBankAccount)
    end
  end

  describe "test attribute 'account_holder_name'" do
    it "should work" do
      # instance = Stripe::ExternalAccountPayoutBankAccount.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'account_holder_type'" do
    it "should work" do
      # instance = Stripe::ExternalAccountPayoutBankAccount.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::ExternalAccountPayoutBankAccount::ENUM_VALIDATOR_FOR_ACCOUNT_HOLDER_TYPE
      # validator.allowable_values.each do |value|
      #   instance.account_holder_type = value.as(String)
      # end
    end
  end

  describe "test attribute 'account_number'" do
    it "should work" do
      # instance = Stripe::ExternalAccountPayoutBankAccount.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'account_type'" do
    it "should work" do
      # instance = Stripe::ExternalAccountPayoutBankAccount.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::ExternalAccountPayoutBankAccount::ENUM_VALIDATOR_FOR_ACCOUNT_TYPE
      # validator.allowable_values.each do |value|
      #   instance.account_type = value.as(String)
      # end
    end
  end

  describe "test attribute 'country'" do
    it "should work" do
      # instance = Stripe::ExternalAccountPayoutBankAccount.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'currency'" do
    it "should work" do
      # instance = Stripe::ExternalAccountPayoutBankAccount.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'object'" do
    it "should work" do
      # instance = Stripe::ExternalAccountPayoutBankAccount.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::ExternalAccountPayoutBankAccount::ENUM_VALIDATOR_FOR_OBJECT
      # validator.allowable_values.each do |value|
      #   instance.object = value.as(String)
      # end
    end
  end

  describe "test attribute 'routing_number'" do
    it "should work" do
      # instance = Stripe::ExternalAccountPayoutBankAccount.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
