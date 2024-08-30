#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::EvidenceParamServiceNotAsDescribed
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/evidence_param_service_not_as_described"

describe Stripe::EvidenceParamServiceNotAsDescribed do
  describe "test an instance of EvidenceParamServiceNotAsDescribed" do
    it "should create an instance of EvidenceParamServiceNotAsDescribed" do
      # instance = Stripe::EvidenceParamServiceNotAsDescribed.new
      # (instance).should be_a(Stripe::EvidenceParamServiceNotAsDescribed)
    end
  end

  describe "test attribute 'additional_documentation'" do
    it "should work" do
      # instance = Stripe::EvidenceParamServiceNotAsDescribed.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::EvidenceParamServiceNotAsDescribed::ENUM_VALIDATOR_FOR_ADDITIONAL_DOCUMENTATION
      # validator.allowable_values.each do |value|
      #   instance.additional_documentation = value.as(String)
      # end
    end
  end

  describe "test attribute 'canceled_at'" do
    it "should work" do
      # instance = Stripe::EvidenceParamServiceNotAsDescribed.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'cancellation_reason'" do
    it "should work" do
      # instance = Stripe::EvidenceParamServiceNotAsDescribed.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::EvidenceParamServiceNotAsDescribed::ENUM_VALIDATOR_FOR_CANCELLATION_REASON
      # validator.allowable_values.each do |value|
      #   instance.cancellation_reason = value.as(String)
      # end
    end
  end

  describe "test attribute 'explanation'" do
    it "should work" do
      # instance = Stripe::EvidenceParamServiceNotAsDescribed.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::EvidenceParamServiceNotAsDescribed::ENUM_VALIDATOR_FOR_EXPLANATION
      # validator.allowable_values.each do |value|
      #   instance.explanation = value.as(String)
      # end
    end
  end

  describe "test attribute 'received_at'" do
    it "should work" do
      # instance = Stripe::EvidenceParamServiceNotAsDescribed.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
