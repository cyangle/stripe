#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::PaymentMethodOptionsCustomerBalanceBankTransfer
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::PaymentMethodOptionsCustomerBalanceBankTransfer do
  describe "test an instance of PaymentMethodOptionsCustomerBalanceBankTransfer" do
    it "should create an instance of PaymentMethodOptionsCustomerBalanceBankTransfer" do
      # instance = Stripe::PaymentMethodOptionsCustomerBalanceBankTransfer.new
      # expect(instance).to be_instance_of(Stripe::PaymentMethodOptionsCustomerBalanceBankTransfer)
    end
  end

  describe "test attribute 'requested_address_types'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = EnumValidator.new("Array(String)", ["zengin"])
      # validator.allowable_values.each do |value|
      #   expect { instance.requested_address_types = value }.not_to raise_error
      # end
    end
  end

  describe "test attribute '_type'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = EnumValidator.new("String", ["jp_bank_transfer"])
      # validator.allowable_values.each do |value|
      #   expect { instance._type = value }.not_to raise_error
      # end
    end
  end
end
