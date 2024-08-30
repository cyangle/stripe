#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"
require "../../src/stripe/api/shipping_rates_api"

# Unit tests for Stripe::ShippingRatesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "ShippingRatesApi" do
  describe "test an instance of ShippingRatesApi" do
    it "should create an instance of ShippingRatesApi" do
      api_instance = Stripe::ShippingRatesApi.new
      api_instance.should be_a(Stripe::ShippingRatesApi)
    end
  end

  # unit tests for get_shipping_rates
  # &lt;p&gt;Returns a list of your shipping rates.&lt;/p&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ending_before A cursor for use in pagination. &#x60;ending_before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with &#x60;obj_bar&#x60;, your subsequent call can include &#x60;ending_before&#x3D;obj_bar&#x60; in order to fetch the previous page of the list.
  # @option opts [String] :starting_after A cursor for use in pagination. &#x60;starting_after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with &#x60;obj_foo&#x60;, your subsequent call can include &#x60;starting_after&#x3D;obj_foo&#x60; in order to fetch the next page of the list.
  # @option opts [GetAccountsCreatedParameter] :created A filter on the list, based on the object &#x60;created&#x60; field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with a number of different query options.
  # @option opts [Int32] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  # @option opts [String] :currency Only return shipping rates for the given currency.
  # @option opts [Bool] :active Only return shipping rates that are active or inactive.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [ShippingResourcesShippingRateList]
  describe "get_shipping_rates test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_shipping_rates_shipping_rate_token
  # &lt;p&gt;Returns the shipping rate object with the given ID.&lt;/p&gt;
  # @param shipping_rate_token
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [ShippingRate]
  describe "get_shipping_rates_shipping_rate_token test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_shipping_rates
  # &lt;p&gt;Creates a new shipping rate object.&lt;/p&gt;
  # @param display_name The name of the shipping rate, meant to be displayable to the customer. This will appear on CheckoutSessions.
  # @param [Hash] opts the optional parameters
  # @option opts [DeliveryEstimate] :delivery_estimate
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [FixedAmount] :fixed_amount
  # @option opts [Hash(String, String)] :metadata
  # @option opts [String] :tax_behavior Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of &#x60;inclusive&#x60;, &#x60;exclusive&#x60;, or &#x60;unspecified&#x60;.
  # @option opts [String] :tax_code A [tax code](https://stripe.com/docs/tax/tax-categories) ID. The Shipping tax code is &#x60;txcd_92010001&#x60;.
  # @option opts [String] :_type The type of calculation to use on the shipping rate.
  # @return [ShippingRate]
  describe "post_shipping_rates test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_shipping_rates_shipping_rate_token
  # &lt;p&gt;Updates an existing shipping rate object.&lt;/p&gt;
  # @param shipping_rate_token
  # @param [Hash] opts the optional parameters
  # @option opts [Bool] :active Whether the shipping rate can be used for new purchases. Defaults to &#x60;true&#x60;.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [FixedAmountUpdate] :fixed_amount
  # @option opts [PostAccountsRequestMetadata] :metadata
  # @option opts [String] :tax_behavior Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of &#x60;inclusive&#x60;, &#x60;exclusive&#x60;, or &#x60;unspecified&#x60;.
  # @return [ShippingRate]
  describe "post_shipping_rates_shipping_rate_token test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
