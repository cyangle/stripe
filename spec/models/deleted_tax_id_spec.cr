#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::DeletedTaxId
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::DeletedTaxId do
  describe "test an instance of DeletedTaxId" do
    it "should create an instance of DeletedTaxId" do
      # instance = Stripe::DeletedTaxId.new
      # (instance).should be_a(Stripe::DeletedTaxId)
    end
  end

  describe "test attribute 'deleted'" do
    it "should work" do
      # instance = Stripe::DeletedTaxId.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::DeletedTaxId::ENUM_VALIDATOR_FOR_DELETED
      # validator.allowable_values.each do |value|
      #   instance.deleted = value.as(Bool)
      # end
    end
  end

  describe "test attribute 'id'" do
    it "should work" do
      # instance = Stripe::DeletedTaxId.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'object'" do
    it "should work" do
      # instance = Stripe::DeletedTaxId.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::DeletedTaxId::ENUM_VALIDATOR_FOR_OBJECT
      # validator.allowable_values.each do |value|
      #   instance.object = value.as(String)
      # end
    end
  end
end
