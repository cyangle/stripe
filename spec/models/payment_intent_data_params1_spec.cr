#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::PaymentIntentDataParams1
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::PaymentIntentDataParams1 do
  describe "test an instance of PaymentIntentDataParams1" do
    it "should create an instance of PaymentIntentDataParams1" do
      # instance = Stripe::PaymentIntentDataParams1.new
      # expect(instance).to be_instance_of(Stripe::PaymentIntentDataParams1)
    end
  end

  describe "test attribute 'capture_method'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = EnumValidator.new("String", ["automatic", "manual"])
      # validator.allowable_values.each do |value|
      #   expect { instance.capture_method = value }.not_to raise_error
      # end
    end
  end

  describe "test attribute 'setup_future_usage'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = EnumValidator.new("String", ["off_session", "on_session"])
      # validator.allowable_values.each do |value|
      #   expect { instance.setup_future_usage = value }.not_to raise_error
      # end
    end
  end
end
