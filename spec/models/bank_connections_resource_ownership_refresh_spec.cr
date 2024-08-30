#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::BankConnectionsResourceOwnershipRefresh
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/bank_connections_resource_ownership_refresh"

describe Stripe::BankConnectionsResourceOwnershipRefresh do
  describe "test an instance of BankConnectionsResourceOwnershipRefresh" do
    it "should create an instance of BankConnectionsResourceOwnershipRefresh" do
      # instance = Stripe::BankConnectionsResourceOwnershipRefresh.new
      # (instance).should be_a(Stripe::BankConnectionsResourceOwnershipRefresh)
    end
  end

  describe "test attribute 'last_attempted_at'" do
    it "should work" do
      # instance = Stripe::BankConnectionsResourceOwnershipRefresh.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'next_refresh_available_at'" do
    it "should work" do
      # instance = Stripe::BankConnectionsResourceOwnershipRefresh.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'status'" do
    it "should work" do
      # instance = Stripe::BankConnectionsResourceOwnershipRefresh.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::BankConnectionsResourceOwnershipRefresh::ENUM_VALIDATOR_FOR_STATUS
      # validator.allowable_values.each do |value|
      #   instance.status = value.as(String)
      # end
    end
  end
end
