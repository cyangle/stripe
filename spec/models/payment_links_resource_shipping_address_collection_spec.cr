#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::PaymentLinksResourceShippingAddressCollection
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/payment_links_resource_shipping_address_collection"

describe Stripe::PaymentLinksResourceShippingAddressCollection do
  describe "test an instance of PaymentLinksResourceShippingAddressCollection" do
    it "should create an instance of PaymentLinksResourceShippingAddressCollection" do
      # instance = Stripe::PaymentLinksResourceShippingAddressCollection.new
      # (instance).should be_a(Stripe::PaymentLinksResourceShippingAddressCollection)
    end
  end

  describe "test attribute 'allowed_countries'" do
    it "should work" do
      # instance = Stripe::PaymentLinksResourceShippingAddressCollection.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PaymentLinksResourceShippingAddressCollection::ENUM_VALIDATOR_FOR_ALLOWED_COUNTRIES
      # validator.allowable_values.each do |value|
      #   instance.allowed_countries = value.as(Array(String))
      # end
    end
  end
end
