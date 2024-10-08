#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::LinkedAccountOptionsUsBankAccount
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/linked_account_options_us_bank_account"

describe Stripe::LinkedAccountOptionsUsBankAccount do
  describe "test an instance of LinkedAccountOptionsUsBankAccount" do
    it "should create an instance of LinkedAccountOptionsUsBankAccount" do
      # instance = Stripe::LinkedAccountOptionsUsBankAccount.new
      # (instance).should be_a(Stripe::LinkedAccountOptionsUsBankAccount)
    end
  end

  describe "test attribute 'filters'" do
    it "should work" do
      # instance = Stripe::LinkedAccountOptionsUsBankAccount.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'permissions'" do
    it "should work" do
      # instance = Stripe::LinkedAccountOptionsUsBankAccount.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::LinkedAccountOptionsUsBankAccount::ENUM_VALIDATOR_FOR_PERMISSIONS
      # validator.allowable_values.each do |value|
      #   instance.permissions = value.as(Array(String))
      # end
    end
  end

  describe "test attribute 'prefetch'" do
    it "should work" do
      # instance = Stripe::LinkedAccountOptionsUsBankAccount.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::LinkedAccountOptionsUsBankAccount::ENUM_VALIDATOR_FOR_PREFETCH
      # validator.allowable_values.each do |value|
      #   instance.prefetch = value.as(Array(String))
      # end
    end
  end

  describe "test attribute 'return_url'" do
    it "should work" do
      # instance = Stripe::LinkedAccountOptionsUsBankAccount.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
