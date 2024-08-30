#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::PostFinancialConnectionsSessionsRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/post_financial_connections_sessions_request"

describe Stripe::PostFinancialConnectionsSessionsRequest do
  describe "test an instance of PostFinancialConnectionsSessionsRequest" do
    it "should create an instance of PostFinancialConnectionsSessionsRequest" do
      # instance = Stripe::PostFinancialConnectionsSessionsRequest.new
      # (instance).should be_a(Stripe::PostFinancialConnectionsSessionsRequest)
    end
  end

  describe "test attribute 'account_holder'" do
    it "should work" do
      # instance = Stripe::PostFinancialConnectionsSessionsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'expand'" do
    it "should work" do
      # instance = Stripe::PostFinancialConnectionsSessionsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'filters'" do
    it "should work" do
      # instance = Stripe::PostFinancialConnectionsSessionsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'permissions'" do
    it "should work" do
      # instance = Stripe::PostFinancialConnectionsSessionsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PostFinancialConnectionsSessionsRequest::ENUM_VALIDATOR_FOR_PERMISSIONS
      # validator.allowable_values.each do |value|
      #   instance.permissions = value.as(Array(String))
      # end
    end
  end

  describe "test attribute 'prefetch'" do
    it "should work" do
      # instance = Stripe::PostFinancialConnectionsSessionsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PostFinancialConnectionsSessionsRequest::ENUM_VALIDATOR_FOR_PREFETCH
      # validator.allowable_values.each do |value|
      #   instance.prefetch = value.as(Array(String))
      # end
    end
  end

  describe "test attribute 'return_url'" do
    it "should work" do
      # instance = Stripe::PostFinancialConnectionsSessionsRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
