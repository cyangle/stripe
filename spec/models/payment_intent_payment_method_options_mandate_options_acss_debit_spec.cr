#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::PaymentIntentPaymentMethodOptionsMandateOptionsAcssDebit
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::PaymentIntentPaymentMethodOptionsMandateOptionsAcssDebit do
  describe "test an instance of PaymentIntentPaymentMethodOptionsMandateOptionsAcssDebit" do
    it "should create an instance of PaymentIntentPaymentMethodOptionsMandateOptionsAcssDebit" do
      # instance = Stripe::PaymentIntentPaymentMethodOptionsMandateOptionsAcssDebit.new
      # expect(instance).to be_instance_of(Stripe::PaymentIntentPaymentMethodOptionsMandateOptionsAcssDebit)
    end
  end

  describe "test attribute 'custom_mandate_url'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'interval_description'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'payment_schedule'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Petstore::EnumTest::EnumAttributeValidator.new("String", ["combined", "interval", "sporadic"])
      # validator.allowable_values.each do |value|
      #   expect { instance.payment_schedule = value }.not_to raise_error
      # end
    end
  end

  describe "test attribute 'transaction_type'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Petstore::EnumTest::EnumAttributeValidator.new("String", ["business", "personal"])
      # validator.allowable_values.each do |value|
      #   expect { instance.transaction_type = value }.not_to raise_error
      # end
    end
  end
end