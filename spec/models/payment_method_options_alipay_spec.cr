#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::PaymentMethodOptionsAlipay
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::PaymentMethodOptionsAlipay do
  describe "test an instance of PaymentMethodOptionsAlipay" do
    it "should create an instance of PaymentMethodOptionsAlipay" do
      # instance = Stripe::PaymentMethodOptionsAlipay.new
      # expect(instance).to be_instance_of(Stripe::PaymentMethodOptionsAlipay)
    end
  end

  describe "test attribute 'setup_future_usage'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = EnumValidator.new("String", ["none", "off_session"])
      # validator.allowable_values.each do |value|
      #   expect { instance.setup_future_usage = value }.not_to raise_error
      # end
    end
  end
end
