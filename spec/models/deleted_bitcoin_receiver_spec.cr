#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::DeletedBitcoinReceiver
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::DeletedBitcoinReceiver do
  describe "test an instance of DeletedBitcoinReceiver" do
    it "should create an instance of DeletedBitcoinReceiver" do
      # instance = Stripe::DeletedBitcoinReceiver.new
      # expect(instance).to be_instance_of(Stripe::DeletedBitcoinReceiver)
    end
  end

  describe "test attribute 'deleted'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Petstore::EnumTest::EnumAttributeValidator.new("Bool", ["true"])
      # validator.allowable_values.each do |value|
      #   expect { instance.deleted = value }.not_to raise_error
      # end
    end
  end

  describe "test attribute 'id'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'object'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Petstore::EnumTest::EnumAttributeValidator.new("String", ["bitcoin_receiver"])
      # validator.allowable_values.each do |value|
      #   expect { instance.object = value }.not_to raise_error
      # end
    end
  end
end
