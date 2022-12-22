#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::ProductsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "ProductsApi" do
  describe "test an instance of ProductsApi" do
    it "should create an instance of ProductsApi" do
      api_instance = Stripe::ProductsApi.new
      api_instance.should be_a(Stripe::ProductsApi)
    end
  end

  # unit tests for delete_products_id
  # &lt;p&gt;Delete a product. Deleting a product is only possible if it has no prices associated with it. Additionally, deleting a product with &lt;code&gt;type&#x3D;good&lt;/code&gt; is only possible if it has no SKUs associated with it.&lt;/p&gt;
  # @param id
  # @param [Hash] opts the optional parameters
  # @return [DeletedProduct]
  describe "delete_products_id test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_products
  # &lt;p&gt;Returns a list of your products. The products are returned sorted by creation date, with the most recently created products appearing first.&lt;/p&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ending_before A cursor for use in pagination. &#x60;ending_before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with &#x60;obj_bar&#x60;, your subsequent call can include &#x60;ending_before&#x3D;obj_bar&#x60; in order to fetch the previous page of the list.
  # @option opts [String] :starting_after A cursor for use in pagination. &#x60;starting_after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with &#x60;obj_foo&#x60;, your subsequent call can include &#x60;starting_after&#x3D;obj_foo&#x60; in order to fetch the next page of the list.
  # @option opts [Int32] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  # @option opts [Bool] :active Only return products that are active or inactive (e.g., pass &#x60;false&#x60; to list all inactive products).
  # @option opts [Bool] :shippable Only return products that can be shipped (i.e., physical, not digital products).
  # @option opts [GetAccountsCreatedParameter] :created Only return products that were created during the given date interval.
  # @option opts [Array(String)] :ids Only return products with the given IDs. Cannot be used with [starting_after](https://stripe.com/docs/api#list_products-starting_after) or [ending_before](https://stripe.com/docs/api#list_products-ending_before).
  # @option opts [String] :url Only return products with the given url.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [ProductList]
  describe "get_products test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_products_id
  # &lt;p&gt;Retrieves the details of an existing product. Supply the unique product ID from either a product creation request or the product list, and Stripe will return the corresponding product information.&lt;/p&gt;
  # @param id
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [Product]
  describe "get_products_id test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_products_search
  # &lt;p&gt;Search for products you’ve previously created using Stripe’s &lt;a href&#x3D;\&quot;/docs/search#search-query-language\&quot;&gt;Search Query Language&lt;/a&gt;. Don’t use search in read-after-write flows where strict consistency is necessary. Under normal operating conditions, data is searchable in less than a minute. Occasionally, propagation of new or updated data can be up to an hour behind during outages. Search functionality is not available to merchants in India.&lt;/p&gt;
  # @param query The search query string. See [search query language](https://stripe.com/docs/search#search-query-language) and the list of supported [query fields for products](https://stripe.com/docs/search#query-fields-for-products).
  # @param [Hash] opts the optional parameters
  # @option opts [String] :page A cursor for pagination across multiple pages of results. Don&#39;t include this parameter on the first call. Use the next_page value returned in a previous response to request subsequent results.
  # @option opts [Int32] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [SearchResult]
  describe "get_products_search test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_products
  # &lt;p&gt;Creates a new product object.&lt;/p&gt;
  # @param post_products_request
  # @param [Hash] opts the optional parameters
  # @return [Product]
  describe "post_products test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_products_id
  # &lt;p&gt;Updates the specific product by setting the values of the parameters passed. Any parameters not provided will be left unchanged.&lt;/p&gt;
  # @param id
  # @param [Hash] opts the optional parameters
  # @option opts [PostProductsIdRequest] :post_products_id_request
  # @return [Product]
  describe "post_products_id test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
