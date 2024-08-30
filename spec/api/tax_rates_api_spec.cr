#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"
require "../../src/stripe/api/tax_rates_api"

# Unit tests for Stripe::TaxRatesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "TaxRatesApi" do
  describe "test an instance of TaxRatesApi" do
    it "should create an instance of TaxRatesApi" do
      api_instance = Stripe::TaxRatesApi.new
      api_instance.should be_a(Stripe::TaxRatesApi)
    end
  end

  # unit tests for get_tax_rates
  # &lt;p&gt;Returns a list of your tax rates. Tax rates are returned sorted by creation date, with the most recently created tax rates appearing first.&lt;/p&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ending_before A cursor for use in pagination. &#x60;ending_before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with &#x60;obj_bar&#x60;, your subsequent call can include &#x60;ending_before&#x3D;obj_bar&#x60; in order to fetch the previous page of the list.
  # @option opts [String] :starting_after A cursor for use in pagination. &#x60;starting_after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with &#x60;obj_foo&#x60;, your subsequent call can include &#x60;starting_after&#x3D;obj_foo&#x60; in order to fetch the next page of the list.
  # @option opts [Int32] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  # @option opts [Bool] :active Optional flag to filter by tax rates that are either active or inactive (archived).
  # @option opts [Bool] :inclusive Optional flag to filter by tax rates that are inclusive (or those that are not inclusive).
  # @option opts [GetAccountsCreatedParameter] :created Optional range for filtering created date.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [TaxRatesList]
  describe "get_tax_rates test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_tax_rates_tax_rate
  # &lt;p&gt;Retrieves a tax rate with the given ID&lt;/p&gt;
  # @param tax_rate
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [TaxRate]
  describe "get_tax_rates_tax_rate test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_tax_rates
  # &lt;p&gt;Creates a new tax rate.&lt;/p&gt;
  # @param display_name The display name of the tax rate, which will be shown to users.
  # @param inclusive This specifies if the tax rate is inclusive or exclusive.
  # @param percentage This represents the tax rate percent out of 100.
  # @param [Hash] opts the optional parameters
  # @option opts [Bool] :active Flag determining whether the tax rate is active or inactive (archived). Inactive tax rates cannot be used with new applications or Checkout Sessions, but will still work for subscriptions and invoices that already have it set.
  # @option opts [String] :country Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
  # @option opts [String] :description An arbitrary string attached to the tax rate for your internal use only. It will not be visible to your customers.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [String] :jurisdiction The jurisdiction for the tax rate. You can use this label field for tax reporting purposes. It also appears on your customer’s invoice.
  # @option opts [Hash(String, String)] :metadata
  # @option opts [String] :state [ISO 3166-2 subdivision code](https://en.wikipedia.org/wiki/ISO_3166-2:US), without country prefix. For example, \\\&quot;NY\\\&quot; for New York, United States.
  # @option opts [String] :tax_type The high-level tax type, such as &#x60;vat&#x60; or &#x60;sales_tax&#x60;.
  # @return [TaxRate]
  describe "post_tax_rates test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_tax_rates_tax_rate
  # &lt;p&gt;Updates an existing tax rate.&lt;/p&gt;
  # @param tax_rate
  # @param [Hash] opts the optional parameters
  # @option opts [Bool] :active Flag determining whether the tax rate is active or inactive (archived). Inactive tax rates cannot be used with new applications or Checkout Sessions, but will still work for subscriptions and invoices that already have it set.
  # @option opts [String] :country Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
  # @option opts [String] :description An arbitrary string attached to the tax rate for your internal use only. It will not be visible to your customers.
  # @option opts [String] :display_name The display name of the tax rate, which will be shown to users.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [String] :jurisdiction The jurisdiction for the tax rate. You can use this label field for tax reporting purposes. It also appears on your customer’s invoice.
  # @option opts [PostAccountsRequestMetadata] :metadata
  # @option opts [String] :state [ISO 3166-2 subdivision code](https://en.wikipedia.org/wiki/ISO_3166-2:US), without country prefix. For example, \\\&quot;NY\\\&quot; for New York, United States.
  # @option opts [String] :tax_type The high-level tax type, such as &#x60;vat&#x60; or &#x60;sales_tax&#x60;.
  # @return [TaxRate]
  describe "post_tax_rates_tax_rate test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
