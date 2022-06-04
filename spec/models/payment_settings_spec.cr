#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::PaymentSettings
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::PaymentSettings do
  describe "test an instance of PaymentSettings" do
    it "should create an instance of PaymentSettings" do
      # instance = Stripe::PaymentSettings.new
      # expect(instance).to be_instance_of(Stripe::PaymentSettings)
    end
  end

  describe "test attribute 'payment_method_options'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'payment_method_types'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'save_default_payment_method'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = EnumValidator.new("String", ["off", "on_subscription"])
      # validator.allowable_values.each do |value|
      #   expect { instance.save_default_payment_method = value }.not_to raise_error
      # end
    end
  end
end