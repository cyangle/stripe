#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::SetupIntentNextActionVerifyWithMicrodeposits
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::SetupIntentNextActionVerifyWithMicrodeposits do
  describe "test an instance of SetupIntentNextActionVerifyWithMicrodeposits" do
    it "should create an instance of SetupIntentNextActionVerifyWithMicrodeposits" do
      # instance = Stripe::SetupIntentNextActionVerifyWithMicrodeposits.new
      # expect(instance).to be_instance_of(Stripe::SetupIntentNextActionVerifyWithMicrodeposits)
    end
  end

  describe "test attribute 'arrival_date'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'hosted_verification_url'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'microdeposit_type'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = EnumValidator.new("String", ["amounts", "descriptor_code"])
      # validator.allowable_values.each do |value|
      #   expect { instance.microdeposit_type = value }.not_to raise_error
      # end
    end
  end
end
