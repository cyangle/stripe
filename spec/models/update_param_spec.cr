#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-08-01
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::UpdateParam
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::UpdateParam do
  describe "test an instance of UpdateParam" do
    it "should create an instance of UpdateParam" do
      # instance = Stripe::UpdateParam.new
      # (instance).should be_a(Stripe::UpdateParam)
    end
  end

  describe "test attribute 'account_holder_type'" do
    it "should work" do
      # instance = Stripe::UpdateParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::UpdateParam::ENUM_VALIDATOR_FOR_ACCOUNT_HOLDER_TYPE
      # validator.allowable_values.each do |value|
      #   instance.account_holder_type = value.as(String)
      # end
    end
  end
end
