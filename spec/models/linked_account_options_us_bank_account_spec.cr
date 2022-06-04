#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::LinkedAccountOptionsUsBankAccount
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::LinkedAccountOptionsUsBankAccount do
  describe "test an instance of LinkedAccountOptionsUsBankAccount" do
    it "should create an instance of LinkedAccountOptionsUsBankAccount" do
      # instance = Stripe::LinkedAccountOptionsUsBankAccount.new
      # expect(instance).to be_instance_of(Stripe::LinkedAccountOptionsUsBankAccount)
    end
  end

  describe "test attribute 'permissions'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = EnumValidator.new("Array(String)", ["balances", "ownership", "payment_method", "transactions"])
      # validator.allowable_values.each do |value|
      #   expect { instance.permissions = value }.not_to raise_error
      # end
    end
  end

  describe "test attribute 'return_url'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end