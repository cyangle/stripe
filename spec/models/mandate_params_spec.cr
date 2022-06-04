#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::MandateParams
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::MandateParams do
  describe "test an instance of MandateParams" do
    it "should create an instance of MandateParams" do
      # instance = Stripe::MandateParams.new
      # expect(instance).to be_instance_of(Stripe::MandateParams)
    end
  end

  describe "test attribute 'acceptance'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'amount'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'currency'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'interval'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = EnumValidator.new("String", ["one_time", "scheduled", "variable"])
      # validator.allowable_values.each do |value|
      #   expect { instance.interval = value }.not_to raise_error
      # end
    end
  end

  describe "test attribute 'notification_method'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = EnumValidator.new("String", ["deprecated_none", "email", "manual", "none", "stripe_email"])
      # validator.allowable_values.each do |value|
      #   expect { instance.notification_method = value }.not_to raise_error
      # end
    end
  end
end