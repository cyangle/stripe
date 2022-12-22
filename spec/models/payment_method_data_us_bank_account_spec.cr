#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::PaymentMethodDataUsBankAccount
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::PaymentMethodDataUsBankAccount do
  describe "test an instance of PaymentMethodDataUsBankAccount" do
    it "should create an instance of PaymentMethodDataUsBankAccount" do
      # instance = Stripe::PaymentMethodDataUsBankAccount.new
      # (instance).should be_a(Stripe::PaymentMethodDataUsBankAccount)
    end
  end

  describe "test attribute 'account_holder_type'" do
    it "should work" do
      # instance = Stripe::PaymentMethodDataUsBankAccount.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentMethodDataUsBankAccount::ENUM_VALIDATOR_FOR_ACCOUNT_HOLDER_TYPE
      # validator.allowable_values.each do |value|
      #   instance.account_holder_type = value.as(String)
      # end
    end
  end

  describe "test attribute 'account_number'" do
    it "should work" do
      # instance = Stripe::PaymentMethodDataUsBankAccount.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'account_type'" do
    it "should work" do
      # instance = Stripe::PaymentMethodDataUsBankAccount.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentMethodDataUsBankAccount::ENUM_VALIDATOR_FOR_ACCOUNT_TYPE
      # validator.allowable_values.each do |value|
      #   instance.account_type = value.as(String)
      # end
    end
  end

  describe "test attribute 'financial_connections_account'" do
    it "should work" do
      # instance = Stripe::PaymentMethodDataUsBankAccount.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'routing_number'" do
    it "should work" do
      # instance = Stripe::PaymentMethodDataUsBankAccount.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
