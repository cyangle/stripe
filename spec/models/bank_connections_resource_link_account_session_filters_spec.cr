#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::BankConnectionsResourceLinkAccountSessionFilters
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/bank_connections_resource_link_account_session_filters"

describe Stripe::BankConnectionsResourceLinkAccountSessionFilters do
  describe "test an instance of BankConnectionsResourceLinkAccountSessionFilters" do
    it "should create an instance of BankConnectionsResourceLinkAccountSessionFilters" do
      # instance = Stripe::BankConnectionsResourceLinkAccountSessionFilters.new
      # (instance).should be_a(Stripe::BankConnectionsResourceLinkAccountSessionFilters)
    end
  end

  describe "test attribute 'account_subcategories'" do
    it "should work" do
      # instance = Stripe::BankConnectionsResourceLinkAccountSessionFilters.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::BankConnectionsResourceLinkAccountSessionFilters::ENUM_VALIDATOR_FOR_ACCOUNT_SUBCATEGORIES
      # validator.allowable_values.each do |value|
      #   instance.account_subcategories = value.as(Array(String))
      # end
    end
  end

  describe "test attribute 'countries'" do
    it "should work" do
      # instance = Stripe::BankConnectionsResourceLinkAccountSessionFilters.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
