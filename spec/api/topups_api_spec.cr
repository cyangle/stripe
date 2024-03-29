#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::TopupsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "TopupsApi" do
  describe "test an instance of TopupsApi" do
    it "should create an instance of TopupsApi" do
      api_instance = Stripe::TopupsApi.new
      api_instance.should be_a(Stripe::TopupsApi)
    end
  end

  # unit tests for get_topups
  # &lt;p&gt;Returns a list of top-ups.&lt;/p&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ending_before A cursor for use in pagination. &#x60;ending_before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with &#x60;obj_bar&#x60;, your subsequent call can include &#x60;ending_before&#x3D;obj_bar&#x60; in order to fetch the previous page of the list.
  # @option opts [String] :starting_after A cursor for use in pagination. &#x60;starting_after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with &#x60;obj_foo&#x60;, your subsequent call can include &#x60;starting_after&#x3D;obj_foo&#x60; in order to fetch the next page of the list.
  # @option opts [GetAccountsCreatedParameter] :created A filter on the list, based on the object &#x60;created&#x60; field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with a number of different query options.
  # @option opts [Int32] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  # @option opts [GetAccountsCreatedParameter] :amount A positive integer representing how much to transfer.
  # @option opts [String] :status Only return top-ups that have the given status. One of &#x60;canceled&#x60;, &#x60;failed&#x60;, &#x60;pending&#x60; or &#x60;succeeded&#x60;.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [TopupList]
  describe "get_topups test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_topups_topup
  # &lt;p&gt;Retrieves the details of a top-up that has previously been created. Supply the unique top-up ID that was returned from your previous request, and Stripe will return the corresponding top-up information.&lt;/p&gt;
  # @param topup
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [Topup]
  describe "get_topups_topup test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_topups
  # &lt;p&gt;Top up the balance of an account&lt;/p&gt;
  # @param post_topups_request
  # @param [Hash] opts the optional parameters
  # @return [Topup]
  describe "post_topups test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_topups_topup
  # &lt;p&gt;Updates the metadata of a top-up. Other top-up details are not editable by design.&lt;/p&gt;
  # @param topup
  # @param [Hash] opts the optional parameters
  # @option opts [PostTopupsTopupRequest] :post_topups_topup_request
  # @return [Topup]
  describe "post_topups_topup test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_topups_topup_cancel
  # &lt;p&gt;Cancels a top-up. Only pending top-ups can be canceled.&lt;/p&gt;
  # @param topup
  # @param [Hash] opts the optional parameters
  # @option opts [PostAccountsAccountLoginLinksRequest] :post_accounts_account_login_links_request
  # @return [Topup]
  describe "post_topups_topup_cancel test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
