#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::RefundsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "RefundsApi" do
  describe "test an instance of RefundsApi" do
    it "should create an instance of RefundsApi" do
      api_instance = Stripe::RefundsApi.new
      api_instance.should be_a(Stripe::RefundsApi)
    end
  end

  # unit tests for get_refunds
  # &lt;p&gt;Returns a list of all refunds you’ve previously created. The refunds are returned in sorted order, with the most recent refunds appearing first. For convenience, the 10 most recent refunds are always available by default on the charge object.&lt;/p&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ending_before A cursor for use in pagination. &#x60;ending_before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with &#x60;obj_bar&#x60;, your subsequent call can include &#x60;ending_before&#x3D;obj_bar&#x60; in order to fetch the previous page of the list.
  # @option opts [String] :starting_after A cursor for use in pagination. &#x60;starting_after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with &#x60;obj_foo&#x60;, your subsequent call can include &#x60;starting_after&#x3D;obj_foo&#x60; in order to fetch the next page of the list.
  # @option opts [Int32] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  # @option opts [String] :payment_intent Only return refunds for the PaymentIntent specified by this ID.
  # @option opts [String] :charge Only return refunds for the charge specified by this charge ID.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [GetAccountsCreatedParameter] :created
  # @return [ApiMethodRefundList]
  describe "get_refunds test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_refunds_refund
  # &lt;p&gt;Retrieves the details of an existing refund.&lt;/p&gt;
  # @param refund
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [Refund]
  describe "get_refunds_refund test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_refunds
  # &lt;p&gt;Create a refund.&lt;/p&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [PostRefundsRequest] :post_refunds_request
  # @return [Refund]
  describe "post_refunds test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_refunds_refund
  # &lt;p&gt;Updates the specified refund by setting the values of the parameters passed. Any parameters not provided will be left unchanged.&lt;/p&gt;  &lt;p&gt;This request only accepts &lt;code&gt;metadata&lt;/code&gt; as an argument.&lt;/p&gt;
  # @param refund
  # @param [Hash] opts the optional parameters
  # @option opts [PostApplicationFeesFeeRefundsIdRequest] :post_application_fees_fee_refunds_id_request
  # @return [Refund]
  describe "post_refunds_refund test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
