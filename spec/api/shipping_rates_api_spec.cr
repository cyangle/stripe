#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

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
  # @param post_shipping_rates_request
  # @param [Hash] opts the optional parameters
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
  # @option opts [PostShippingRatesShippingRateTokenRequest] :post_shipping_rates_shipping_rate_token_request
  # @return [ShippingRate]
  describe "post_shipping_rates_shipping_rate_token test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
