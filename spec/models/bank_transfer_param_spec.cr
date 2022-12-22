#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::BankTransferParam
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::BankTransferParam do
  describe "test an instance of BankTransferParam" do
    it "should create an instance of BankTransferParam" do
      # instance = Stripe::BankTransferParam.new
      # (instance).should be_a(Stripe::BankTransferParam)
    end
  end

  describe "test attribute 'eu_bank_transfer'" do
    it "should work" do
      # instance = Stripe::BankTransferParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'requested_address_types'" do
    it "should work" do
      # instance = Stripe::BankTransferParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::BankTransferParam::ENUM_VALIDATOR_FOR_REQUESTED_ADDRESS_TYPES
      # validator.allowable_values.each do |value|
      #   instance.requested_address_types = value.as(Array(String))
      # end
    end
  end

  describe "test attribute '_type'" do
    it "should work" do
      # instance = Stripe::BankTransferParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::BankTransferParam::ENUM_VALIDATOR_FOR__TYPE
      # validator.allowable_values.each do |value|
      #   instance._type = value.as(String)
      # end
    end
  end
end
