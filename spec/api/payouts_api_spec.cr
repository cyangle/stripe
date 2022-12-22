#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::PayoutsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "PayoutsApi" do
  describe "test an instance of PayoutsApi" do
    it "should create an instance of PayoutsApi" do
      api_instance = Stripe::PayoutsApi.new
      api_instance.should be_a(Stripe::PayoutsApi)
    end
  end

  # unit tests for get_payouts
  # &lt;p&gt;Returns a list of existing payouts sent to third-party bank accounts or that Stripe has sent you. The payouts are returned in sorted order, with the most recently created payouts appearing first.&lt;/p&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ending_before A cursor for use in pagination. &#x60;ending_before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with &#x60;obj_bar&#x60;, your subsequent call can include &#x60;ending_before&#x3D;obj_bar&#x60; in order to fetch the previous page of the list.
  # @option opts [String] :starting_after A cursor for use in pagination. &#x60;starting_after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with &#x60;obj_foo&#x60;, your subsequent call can include &#x60;starting_after&#x3D;obj_foo&#x60; in order to fetch the next page of the list.
  # @option opts [Int32] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  # @option opts [String] :status Only return payouts that have the given status: &#x60;pending&#x60;, &#x60;paid&#x60;, &#x60;failed&#x60;, or &#x60;canceled&#x60;.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [String] :destination The ID of an external account - only return payouts sent to this external account.
  # @option opts [GetAccountsCreatedParameter] :arrival_date
  # @option opts [GetAccountsCreatedParameter] :created
  # @return [PayoutList]
  describe "get_payouts test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_payouts_payout
  # &lt;p&gt;Retrieves the details of an existing payout. Supply the unique payout ID from either a payout creation request or the payout list, and Stripe will return the corresponding payout information.&lt;/p&gt;
  # @param payout
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [Payout]
  describe "get_payouts_payout test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_payouts
  # &lt;p&gt;To send funds to your own bank account, you create a new payout object. Your &lt;a href&#x3D;\&quot;#balance\&quot;&gt;Stripe balance&lt;/a&gt; must be able to cover the payout amount, or you’ll receive an “Insufficient Funds” error.&lt;/p&gt;  &lt;p&gt;If your API key is in test mode, money won’t actually be sent, though everything else will occur as if in live mode.&lt;/p&gt;  &lt;p&gt;If you are creating a manual payout on a Stripe account that uses multiple payment source types, you’ll need to specify the source type balance that the payout should draw from. The &lt;a href&#x3D;\&quot;#balance_object\&quot;&gt;balance object&lt;/a&gt; details available and pending amounts by source type.&lt;/p&gt;
  # @param post_payouts_request
  # @param [Hash] opts the optional parameters
  # @return [Payout]
  describe "post_payouts test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_payouts_payout
  # &lt;p&gt;Updates the specified payout by setting the values of the parameters passed. Any parameters not provided will be left unchanged. This request accepts only the metadata as arguments.&lt;/p&gt;
  # @param payout
  # @param [Hash] opts the optional parameters
  # @option opts [PostApplicationFeesFeeRefundsIdRequest] :post_application_fees_fee_refunds_id_request
  # @return [Payout]
  describe "post_payouts_payout test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_payouts_payout_cancel
  # &lt;p&gt;A previously created payout can be canceled if it has not yet been paid out. Funds will be refunded to your available balance. You may not cancel automatic Stripe payouts.&lt;/p&gt;
  # @param payout
  # @param [Hash] opts the optional parameters
  # @option opts [PostAccountsAccountLoginLinksRequest] :post_accounts_account_login_links_request
  # @return [Payout]
  describe "post_payouts_payout_cancel test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_payouts_payout_reverse
  # &lt;p&gt;Reverses a payout by debiting the destination bank account. Only payouts for connected accounts to US bank accounts may be reversed at this time. If the payout is in the &lt;code&gt;pending&lt;/code&gt; status, &lt;code&gt;/v1/payouts/:id/cancel&lt;/code&gt; should be used instead.&lt;/p&gt;  &lt;p&gt;By requesting a reversal via &lt;code&gt;/v1/payouts/:id/reverse&lt;/code&gt;, you confirm that the authorized signatory of the selected bank account has authorized the debit on the bank account and that no other authorization is required.&lt;/p&gt;
  # @param payout
  # @param [Hash] opts the optional parameters
  # @option opts [PostPayoutsPayoutReverseRequest] :post_payouts_payout_reverse_request
  # @return [Payout]
  describe "post_payouts_payout_reverse test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
