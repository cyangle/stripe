#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::AccountDeclineChargeOn
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/account_decline_charge_on"

describe Stripe::AccountDeclineChargeOn do
  describe "test an instance of AccountDeclineChargeOn" do
    it "should create an instance of AccountDeclineChargeOn" do
      # instance = Stripe::AccountDeclineChargeOn.new
      # (instance).should be_a(Stripe::AccountDeclineChargeOn)
    end
  end

  describe "test attribute 'avs_failure'" do
    it "should work" do
      # instance = Stripe::AccountDeclineChargeOn.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'cvc_failure'" do
    it "should work" do
      # instance = Stripe::AccountDeclineChargeOn.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
