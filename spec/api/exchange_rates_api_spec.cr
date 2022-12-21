#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-08-01
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::ExchangeRatesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "ExchangeRatesApi" do
  describe "test an instance of ExchangeRatesApi" do
    it "should create an instance of ExchangeRatesApi" do
      api_instance = Stripe::ExchangeRatesApi.new
      api_instance.should be_a(Stripe::ExchangeRatesApi)
    end
  end

  # unit tests for get_exchange_rates
  # &lt;p&gt;Returns a list of objects that contain the rates at which foreign currencies are converted to one another. Only shows the currencies for which Stripe supports.&lt;/p&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ending_before A cursor for use in pagination. &#x60;ending_before&#x60; is the currency that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with the exchange rate for currency X your subsequent call can include &#x60;ending_before&#x3D;obj_bar&#x60; in order to fetch the previous page of the list.
  # @option opts [String] :starting_after A cursor for use in pagination. &#x60;starting_after&#x60; is the currency that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with the exchange rate for currency X, your subsequent call can include &#x60;starting_after&#x3D;X&#x60; in order to fetch the next page of the list.
  # @option opts [Int32] :limit A limit on the number of objects to be returned. Limit can range between 1 and total number of supported payout currencies, and the default is the max.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [ExchangeRateList]
  describe "get_exchange_rates test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_exchange_rates_rate_id
  # &lt;p&gt;Retrieves the exchange rates from the given currency to every supported currency.&lt;/p&gt;
  # @param rate_id
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [ExchangeRate]
  describe "get_exchange_rates_rate_id test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end