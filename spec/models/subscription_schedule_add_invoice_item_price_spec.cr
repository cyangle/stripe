#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::SubscriptionScheduleAddInvoiceItemPrice
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::SubscriptionScheduleAddInvoiceItemPrice do
  describe "test an instance of SubscriptionScheduleAddInvoiceItemPrice" do
    it "should create an instance of SubscriptionScheduleAddInvoiceItemPrice" do
      # instance = Stripe::SubscriptionScheduleAddInvoiceItemPrice.new
      # expect(instance).to be_instance_of(Stripe::SubscriptionScheduleAddInvoiceItemPrice)
    end
  end

  describe "test attribute 'active'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'billing_scheme'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = EnumValidator.new("String", ["per_unit", "tiered"])
      # validator.allowable_values.each do |value|
      #   expect { instance.billing_scheme = value }.not_to raise_error
      # end
    end
  end

  describe "test attribute 'created'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'currency'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'id'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'livemode'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'lookup_key'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'metadata'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'nickname'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'object'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = EnumValidator.new("String", ["price"])
      # validator.allowable_values.each do |value|
      #   expect { instance.object = value }.not_to raise_error
      # end
    end
  end

  describe "test attribute 'product'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'recurring'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'tax_behavior'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = EnumValidator.new("String", ["exclusive", "inclusive", "unspecified"])
      # validator.allowable_values.each do |value|
      #   expect { instance.tax_behavior = value }.not_to raise_error
      # end
    end
  end

  describe "test attribute 'tiers'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'tiers_mode'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = EnumValidator.new("String", ["graduated", "volume"])
      # validator.allowable_values.each do |value|
      #   expect { instance.tiers_mode = value }.not_to raise_error
      # end
    end
  end

  describe "test attribute 'transform_quantity'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute '_type'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = EnumValidator.new("String", ["one_time", "recurring"])
      # validator.allowable_values.each do |value|
      #   expect { instance._type = value }.not_to raise_error
      # end
    end
  end

  describe "test attribute 'unit_amount'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'unit_amount_decimal'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'deleted'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = EnumValidator.new("Bool", ["true"])
      # validator.allowable_values.each do |value|
      #   expect { instance.deleted = value }.not_to raise_error
      # end
    end
  end
end