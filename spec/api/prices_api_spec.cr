#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-08-01
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::PricesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "PricesApi" do
  describe "test an instance of PricesApi" do
    it "should create an instance of PricesApi" do
      api_instance = Stripe::PricesApi.new
      api_instance.should be_a(Stripe::PricesApi)
    end
  end

  # unit tests for get_prices
  # &lt;p&gt;Returns a list of your prices.&lt;/p&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ending_before A cursor for use in pagination. &#x60;ending_before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with &#x60;obj_bar&#x60;, your subsequent call can include &#x60;ending_before&#x3D;obj_bar&#x60; in order to fetch the previous page of the list.
  # @option opts [String] :starting_after A cursor for use in pagination. &#x60;starting_after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with &#x60;obj_foo&#x60;, your subsequent call can include &#x60;starting_after&#x3D;obj_foo&#x60; in order to fetch the next page of the list.
  # @option opts [GetAccountsCreatedParameter] :created A filter on the list, based on the object &#x60;created&#x60; field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with a number of different query options.
  # @option opts [Int32] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  # @option opts [String] :currency Only return prices for the given currency.
  # @option opts [String] :product Only return prices for the given product.
  # @option opts [String] :_type Only return prices of type &#x60;recurring&#x60; or &#x60;one_time&#x60;.
  # @option opts [Bool] :active Only return prices that are active or inactive (e.g., pass &#x60;false&#x60; to list all inactive prices).
  # @option opts [AllPricesRecurringParams] :recurring Only return prices with these recurring fields.
  # @option opts [Array(String)] :lookup_keys Only return the price with these lookup_keys, if any exist.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [PriceList]
  describe "get_prices test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_prices_price
  # &lt;p&gt;Retrieves the price with the given ID.&lt;/p&gt;
  # @param price
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [Price]
  describe "get_prices_price test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_prices_search
  # &lt;p&gt;Search for prices you’ve previously created using Stripe’s &lt;a href&#x3D;\&quot;/docs/search#search-query-language\&quot;&gt;Search Query Language&lt;/a&gt;. Don’t use search in read-after-write flows where strict consistency is necessary. Under normal operating conditions, data is searchable in less than a minute. Occasionally, propagation of new or updated data can be up to an hour behind during outages. Search functionality is not available to merchants in India.&lt;/p&gt;
  # @param query The search query string. See [search query language](https://stripe.com/docs/search#search-query-language) and the list of supported [query fields for prices](https://stripe.com/docs/search#query-fields-for-prices).
  # @param [Hash] opts the optional parameters
  # @option opts [String] :page A cursor for pagination across multiple pages of results. Don&#39;t include this parameter on the first call. Use the next_page value returned in a previous response to request subsequent results.
  # @option opts [Int32] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [SearchResult]
  describe "get_prices_search test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_prices
  # &lt;p&gt;Creates a new price for an existing product. The price can be recurring or one-time.&lt;/p&gt;
  # @param post_prices_request
  # @param [Hash] opts the optional parameters
  # @return [Price]
  describe "post_prices test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_prices_price
  # &lt;p&gt;Updates the specified price by setting the values of the parameters passed. Any parameters not provided are left unchanged.&lt;/p&gt;
  # @param price
  # @param [Hash] opts the optional parameters
  # @option opts [PostPricesPriceRequest] :post_prices_price_request
  # @return [Price]
  describe "post_prices_price test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
