#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::QuotesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "QuotesApi" do
  describe "test an instance of QuotesApi" do
    it "should create an instance of QuotesApi" do
      api_instance = Stripe::QuotesApi.new
      api_instance.should be_a(Stripe::QuotesApi)
    end
  end

  # unit tests for get_quotes
  # &lt;p&gt;Returns a list of your quotes.&lt;/p&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ending_before A cursor for use in pagination. &#x60;ending_before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with &#x60;obj_bar&#x60;, your subsequent call can include &#x60;ending_before&#x3D;obj_bar&#x60; in order to fetch the previous page of the list.
  # @option opts [String] :starting_after A cursor for use in pagination. &#x60;starting_after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with &#x60;obj_foo&#x60;, your subsequent call can include &#x60;starting_after&#x3D;obj_foo&#x60; in order to fetch the next page of the list.
  # @option opts [Int32] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  # @option opts [String] :test_clock Provides a list of quotes that are associated with the specified test clock. The response will not include quotes with test clocks if this and the customer parameter is not set.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [String] :customer The ID of the customer whose quotes will be retrieved.
  # @option opts [String] :status The status of the quote.
  # @return [QuotesResourceQuoteList]
  describe "get_quotes test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_quotes_quote
  # &lt;p&gt;Retrieves the quote with the given ID.&lt;/p&gt;
  # @param quote
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [Quote]
  describe "get_quotes_quote test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_quotes_quote_computed_upfront_line_items
  # &lt;p&gt;When retrieving a quote, there is an includable &lt;a href&#x3D;\&quot;https://stripe.com/docs/api/quotes/object#quote_object-computed-upfront-line_items\&quot;&gt;&lt;strong&gt;computed.upfront.line_items&lt;/strong&gt;&lt;/a&gt; property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of upfront line items.&lt;/p&gt;
  # @param quote
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ending_before A cursor for use in pagination. &#x60;ending_before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with &#x60;obj_bar&#x60;, your subsequent call can include &#x60;ending_before&#x3D;obj_bar&#x60; in order to fetch the previous page of the list.
  # @option opts [String] :starting_after A cursor for use in pagination. &#x60;starting_after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with &#x60;obj_foo&#x60;, your subsequent call can include &#x60;starting_after&#x3D;obj_foo&#x60; in order to fetch the next page of the list.
  # @option opts [Int32] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [QuotesResourceListLineItems]
  describe "get_quotes_quote_computed_upfront_line_items test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_quotes_quote_line_items
  # &lt;p&gt;When retrieving a quote, there is an includable &lt;strong&gt;line_items&lt;/strong&gt; property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.&lt;/p&gt;
  # @param quote
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ending_before A cursor for use in pagination. &#x60;ending_before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with &#x60;obj_bar&#x60;, your subsequent call can include &#x60;ending_before&#x3D;obj_bar&#x60; in order to fetch the previous page of the list.
  # @option opts [String] :starting_after A cursor for use in pagination. &#x60;starting_after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with &#x60;obj_foo&#x60;, your subsequent call can include &#x60;starting_after&#x3D;obj_foo&#x60; in order to fetch the next page of the list.
  # @option opts [Int32] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [QuotesResourceListLineItems]
  describe "get_quotes_quote_line_items test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_quotes_quote_pdf
  # &lt;p&gt;Download the PDF for a finalized quote&lt;/p&gt;
  # @param quote
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [::File]
  describe "get_quotes_quote_pdf test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_quotes
  # &lt;p&gt;A quote models prices and services for a customer. Default options for &lt;code&gt;header&lt;/code&gt;, &lt;code&gt;description&lt;/code&gt;, &lt;code&gt;footer&lt;/code&gt;, and &lt;code&gt;expires_at&lt;/code&gt; can be set in the dashboard via the &lt;a href&#x3D;\&quot;https://dashboard.stripe.com/settings/billing/quote\&quot;&gt;quote template&lt;/a&gt;.&lt;/p&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [PostQuotesRequest] :post_quotes_request
  # @return [Quote]
  describe "post_quotes test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_quotes_quote
  # &lt;p&gt;A quote models prices and services for a customer.&lt;/p&gt;
  # @param quote
  # @param [Hash] opts the optional parameters
  # @option opts [PostQuotesQuoteRequest] :post_quotes_quote_request
  # @return [Quote]
  describe "post_quotes_quote test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_quotes_quote_accept
  # &lt;p&gt;Accepts the specified quote.&lt;/p&gt;
  # @param quote
  # @param [Hash] opts the optional parameters
  # @option opts [PostAccountsAccountLoginLinksRequest] :post_accounts_account_login_links_request
  # @return [Quote]
  describe "post_quotes_quote_accept test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_quotes_quote_cancel
  # &lt;p&gt;Cancels the quote.&lt;/p&gt;
  # @param quote
  # @param [Hash] opts the optional parameters
  # @option opts [PostAccountsAccountLoginLinksRequest] :post_accounts_account_login_links_request
  # @return [Quote]
  describe "post_quotes_quote_cancel test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_quotes_quote_finalize
  # &lt;p&gt;Finalizes the quote.&lt;/p&gt;
  # @param quote
  # @param [Hash] opts the optional parameters
  # @option opts [PostQuotesQuoteFinalizeRequest] :post_quotes_quote_finalize_request
  # @return [Quote]
  describe "post_quotes_quote_finalize test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
