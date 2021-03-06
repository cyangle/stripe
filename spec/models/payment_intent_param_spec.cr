#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::PaymentIntentParam
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::PaymentIntentParam do
  describe "test an instance of PaymentIntentParam" do
    it "should create an instance of PaymentIntentParam" do
      # instance = Stripe::PaymentIntentParam.new
      # expect(instance).to be_instance_of(Stripe::PaymentIntentParam)
    end
  end

  describe "test attribute 'capture_method'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = EnumValidator.new("String", ["", "manual"])
      # validator.allowable_values.each do |value|
      #   expect { instance.capture_method = value }.not_to raise_error
      # end
    end
  end

  describe "test attribute 'cvc_token'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'installments'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'mandate_options'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'network'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = EnumValidator.new("String", ["amex", "cartes_bancaires", "diners", "discover", "interac", "jcb", "mastercard", "unionpay", "unknown", "visa"])
      # validator.allowable_values.each do |value|
      #   expect { instance.network = value }.not_to raise_error
      # end
    end
  end

  describe "test attribute 'request_three_d_secure'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = EnumValidator.new("String", ["any", "automatic"])
      # validator.allowable_values.each do |value|
      #   expect { instance.request_three_d_secure = value }.not_to raise_error
      # end
    end
  end

  describe "test attribute 'setup_future_usage'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = EnumValidator.new("String", ["", "none", "off_session", "on_session"])
      # validator.allowable_values.each do |value|
      #   expect { instance.setup_future_usage = value }.not_to raise_error
      # end
    end
  end
end
