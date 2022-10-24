#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-08-01
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::ApplicationFeesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "ApplicationFeesApi" do
  describe "test an instance of ApplicationFeesApi" do
    it "should create an instance of ApplicationFeesApi" do
      api_instance = Stripe::ApplicationFeesApi.new
      api_instance.should be_a(Stripe::ApplicationFeesApi)
    end
  end

  # unit tests for get_application_fees
  # &lt;p&gt;Returns a list of application fees you’ve previously collected. The application fees are returned in sorted order, with the most recent fees appearing first.&lt;/p&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ending_before A cursor for use in pagination. &#x60;ending_before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with &#x60;obj_bar&#x60;, your subsequent call can include &#x60;ending_before&#x3D;obj_bar&#x60; in order to fetch the previous page of the list.
  # @option opts [String] :starting_after A cursor for use in pagination. &#x60;starting_after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with &#x60;obj_foo&#x60;, your subsequent call can include &#x60;starting_after&#x3D;obj_foo&#x60; in order to fetch the next page of the list.
  # @option opts [Int32] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  # @option opts [String] :charge Only return application fees for the charge specified by this charge ID.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [GetAccountsCreatedParameter] :created
  # @return [PlatformEarningList]
  describe "get_application_fees test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_application_fees_fee_refunds_id
  # &lt;p&gt;By default, you can see the 10 most recent refunds stored directly on the application fee object, but you can also retrieve details about a specific refund stored on the application fee.&lt;/p&gt;
  # @param fee
  # @param id
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [FeeRefund]
  describe "get_application_fees_fee_refunds_id test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_application_fees_id
  # &lt;p&gt;Retrieves the details of an application fee that your account has collected. The same information is returned when refunding the application fee.&lt;/p&gt;
  # @param id
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [ApplicationFee]
  describe "get_application_fees_id test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_application_fees_id_refunds
  # &lt;p&gt;You can see a list of the refunds belonging to a specific application fee. Note that the 10 most recent refunds are always available by default on the application fee object. If you need more than those 10, you can use this API method and the &lt;code&gt;limit&lt;/code&gt; and &lt;code&gt;starting_after&lt;/code&gt; parameters to page through additional refunds.&lt;/p&gt;
  # @param id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ending_before A cursor for use in pagination. &#x60;ending_before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with &#x60;obj_bar&#x60;, your subsequent call can include &#x60;ending_before&#x3D;obj_bar&#x60; in order to fetch the previous page of the list.
  # @option opts [String] :starting_after A cursor for use in pagination. &#x60;starting_after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with &#x60;obj_foo&#x60;, your subsequent call can include &#x60;starting_after&#x3D;obj_foo&#x60; in order to fetch the next page of the list.
  # @option opts [Int32] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [FeeRefundList]
  describe "get_application_fees_id_refunds test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_application_fees_fee_refunds_id
  # &lt;p&gt;Updates the specified application fee refund by setting the values of the parameters passed. Any parameters not provided will be left unchanged.&lt;/p&gt;  &lt;p&gt;This request only accepts metadata as an argument.&lt;/p&gt;
  # @param fee
  # @param id
  # @param [Hash] opts the optional parameters
  # @option opts [PostApplicationFeesFeeRefundsIdRequest] :post_application_fees_fee_refunds_id_request
  # @return [FeeRefund]
  describe "post_application_fees_fee_refunds_id test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_application_fees_id_refund
  #
  # @param id
  # @param [Hash] opts the optional parameters
  # @option opts [PostApplicationFeesIdRefundRequest] :post_application_fees_id_refund_request
  # @return [ApplicationFee]
  describe "post_application_fees_id_refund test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_application_fees_id_refunds
  # &lt;p&gt;Refunds an application fee that has previously been collected but not yet refunded. Funds will be refunded to the Stripe account from which the fee was originally collected.&lt;/p&gt;  &lt;p&gt;You can optionally refund only part of an application fee. You can do so multiple times, until the entire fee has been refunded.&lt;/p&gt;  &lt;p&gt;Once entirely refunded, an application fee can’t be refunded again. This method will raise an error when called on an already-refunded application fee, or when trying to refund more money than is left on an application fee.&lt;/p&gt;
  # @param id
  # @param [Hash] opts the optional parameters
  # @option opts [PostApplicationFeesIdRefundsRequest] :post_application_fees_id_refunds_request
  # @return [FeeRefund]
  describe "post_application_fees_id_refunds test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
