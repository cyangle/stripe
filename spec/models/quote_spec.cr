#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-08-01
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::Quote
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::Quote do
  describe "test an instance of Quote" do
    it "should create an instance of Quote" do
      # instance = Stripe::Quote.new
      # (instance).should be_a(Stripe::Quote)
    end
  end

  describe "test attribute 'amount_subtotal'" do
    it "should work" do
      # instance = Stripe::Quote.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'amount_total'" do
    it "should work" do
      # instance = Stripe::Quote.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'application'" do
    it "should work" do
      # instance = Stripe::Quote.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'application_fee_amount'" do
    it "should work" do
      # instance = Stripe::Quote.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'application_fee_percent'" do
    it "should work" do
      # instance = Stripe::Quote.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'automatic_tax'" do
    it "should work" do
      # instance = Stripe::Quote.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'collection_method'" do
    it "should work" do
      # instance = Stripe::Quote.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::Quote::ENUM_VALIDATOR_FOR_COLLECTION_METHOD
      # validator.allowable_values.each do |value|
      #   instance.collection_method = value.as(String)
      # end
    end
  end

  describe "test attribute 'computed'" do
    it "should work" do
      # instance = Stripe::Quote.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'created'" do
    it "should work" do
      # instance = Stripe::Quote.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'currency'" do
    it "should work" do
      # instance = Stripe::Quote.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'customer'" do
    it "should work" do
      # instance = Stripe::Quote.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'default_tax_rates'" do
    it "should work" do
      # instance = Stripe::Quote.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'description'" do
    it "should work" do
      # instance = Stripe::Quote.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'discounts'" do
    it "should work" do
      # instance = Stripe::Quote.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'expires_at'" do
    it "should work" do
      # instance = Stripe::Quote.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'footer'" do
    it "should work" do
      # instance = Stripe::Quote.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'from_quote'" do
    it "should work" do
      # instance = Stripe::Quote.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'header'" do
    it "should work" do
      # instance = Stripe::Quote.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'id'" do
    it "should work" do
      # instance = Stripe::Quote.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'invoice'" do
    it "should work" do
      # instance = Stripe::Quote.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'invoice_settings'" do
    it "should work" do
      # instance = Stripe::Quote.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'line_items'" do
    it "should work" do
      # instance = Stripe::Quote.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'livemode'" do
    it "should work" do
      # instance = Stripe::Quote.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'metadata'" do
    it "should work" do
      # instance = Stripe::Quote.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'number'" do
    it "should work" do
      # instance = Stripe::Quote.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'object'" do
    it "should work" do
      # instance = Stripe::Quote.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::Quote::ENUM_VALIDATOR_FOR_OBJECT
      # validator.allowable_values.each do |value|
      #   instance.object = value.as(String)
      # end
    end
  end

  describe "test attribute 'on_behalf_of'" do
    it "should work" do
      # instance = Stripe::Quote.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'status'" do
    it "should work" do
      # instance = Stripe::Quote.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::Quote::ENUM_VALIDATOR_FOR_STATUS
      # validator.allowable_values.each do |value|
      #   instance.status = value.as(String)
      # end
    end
  end

  describe "test attribute 'status_transitions'" do
    it "should work" do
      # instance = Stripe::Quote.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'subscription'" do
    it "should work" do
      # instance = Stripe::Quote.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'subscription_data'" do
    it "should work" do
      # instance = Stripe::Quote.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'subscription_schedule'" do
    it "should work" do
      # instance = Stripe::Quote.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'test_clock'" do
    it "should work" do
      # instance = Stripe::Quote.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'total_details'" do
    it "should work" do
      # instance = Stripe::Quote.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'transfer_data'" do
    it "should work" do
      # instance = Stripe::Quote.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
