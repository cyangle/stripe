#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::MandateBacsDebit
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::MandateBacsDebit do
  describe "test an instance of MandateBacsDebit" do
    it "should create an instance of MandateBacsDebit" do
      # instance = Stripe::MandateBacsDebit.new
      # expect(instance).to be_instance_of(Stripe::MandateBacsDebit)
    end
  end

  describe "test attribute 'network_status'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = EnumValidator.new("String", ["accepted", "pending", "refused", "revoked"])
      # validator.allowable_values.each do |value|
      #   expect { instance.network_status = value }.not_to raise_error
      # end
    end
  end

  describe "test attribute 'reference'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'url'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
