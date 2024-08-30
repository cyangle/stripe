#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::TreasuryFinancialAccountsResourcePlatformRestrictions
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/treasury_financial_accounts_resource_platform_restrictions"

describe Stripe::TreasuryFinancialAccountsResourcePlatformRestrictions do
  describe "test an instance of TreasuryFinancialAccountsResourcePlatformRestrictions" do
    it "should create an instance of TreasuryFinancialAccountsResourcePlatformRestrictions" do
      # instance = Stripe::TreasuryFinancialAccountsResourcePlatformRestrictions.new
      # (instance).should be_a(Stripe::TreasuryFinancialAccountsResourcePlatformRestrictions)
    end
  end

  describe "test attribute 'inbound_flows'" do
    it "should work" do
      # instance = Stripe::TreasuryFinancialAccountsResourcePlatformRestrictions.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::TreasuryFinancialAccountsResourcePlatformRestrictions::ENUM_VALIDATOR_FOR_INBOUND_FLOWS
      # validator.allowable_values.each do |value|
      #   instance.inbound_flows = value.as(String)
      # end
    end
  end

  describe "test attribute 'outbound_flows'" do
    it "should work" do
      # instance = Stripe::TreasuryFinancialAccountsResourcePlatformRestrictions.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::TreasuryFinancialAccountsResourcePlatformRestrictions::ENUM_VALIDATOR_FOR_OUTBOUND_FLOWS
      # validator.allowable_values.each do |value|
      #   instance.outbound_flows = value.as(String)
      # end
    end
  end
end
