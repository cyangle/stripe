#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::PaymentIntentsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "PaymentIntentsApi" do
  describe "test an instance of PaymentIntentsApi" do
    it "should create an instance of PaymentIntentsApi" do
      api_instance = Stripe::PaymentIntentsApi.new
      api_instance.should be_a(Stripe::PaymentIntentsApi)
    end
  end

  # unit tests for get_payment_intents
  # &lt;p&gt;Returns a list of PaymentIntents.&lt;/p&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ending_before A cursor for use in pagination. &#x60;ending_before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with &#x60;obj_bar&#x60;, your subsequent call can include &#x60;ending_before&#x3D;obj_bar&#x60; in order to fetch the previous page of the list.
  # @option opts [String] :starting_after A cursor for use in pagination. &#x60;starting_after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with &#x60;obj_foo&#x60;, your subsequent call can include &#x60;starting_after&#x3D;obj_foo&#x60; in order to fetch the next page of the list.
  # @option opts [GetAccountsCreatedParameter] :created A filter on the list, based on the object &#x60;created&#x60; field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with a number of different query options.
  # @option opts [Int32] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  # @option opts [String] :customer Only return PaymentIntents for the customer specified by this customer ID.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [PaymentFlowsPaymentIntentList]
  describe "get_payment_intents test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_payment_intents_intent
  # &lt;p&gt;Retrieves the details of a PaymentIntent that has previously been created. &lt;/p&gt;  &lt;p&gt;Client-side retrieval using a publishable key is allowed when the &lt;code&gt;client_secret&lt;/code&gt; is provided in the query string. &lt;/p&gt;  &lt;p&gt;When retrieved with a publishable key, only a subset of properties will be returned. Please refer to the &lt;a href&#x3D;\&quot;#payment_intent_object\&quot;&gt;payment intent&lt;/a&gt; object reference for more details.&lt;/p&gt;
  # @param intent
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [String] :client_secret The client secret of the PaymentIntent. Required if a publishable key is used to retrieve the source.
  # @return [PaymentIntent]
  describe "get_payment_intents_intent test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_payment_intents_search
  # &lt;p&gt;Search for PaymentIntents you’ve previously created using Stripe’s &lt;a href&#x3D;\&quot;/docs/search#search-query-language\&quot;&gt;Search Query Language&lt;/a&gt;. Don’t use search in read-after-write flows where strict consistency is necessary. Under normal operating conditions, data is searchable in less than a minute. Occasionally, propagation of new or updated data can be up to an hour behind during outages. Search functionality is not available to merchants in India.&lt;/p&gt;
  # @param query The search query string. See [search query language](https://stripe.com/docs/search#search-query-language) and the list of supported [query fields for payment intents](https://stripe.com/docs/search#query-fields-for-payment-intents).
  # @param [Hash] opts the optional parameters
  # @option opts [String] :page A cursor for pagination across multiple pages of results. Don&#39;t include this parameter on the first call. Use the next_page value returned in a previous response to request subsequent results.
  # @option opts [Int32] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [SearchResult]
  describe "get_payment_intents_search test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_payment_intents
  # &lt;p&gt;Creates a PaymentIntent object.&lt;/p&gt;  &lt;p&gt;After the PaymentIntent is created, attach a payment method and &lt;a href&#x3D;\&quot;/docs/api/payment_intents/confirm\&quot;&gt;confirm&lt;/a&gt; to continue the payment. You can read more about the different payment flows available via the Payment Intents API &lt;a href&#x3D;\&quot;/docs/payments/payment-intents\&quot;&gt;here&lt;/a&gt;.&lt;/p&gt;  &lt;p&gt;When &lt;code&gt;confirm&#x3D;true&lt;/code&gt; is used during creation, it is equivalent to creating and confirming the PaymentIntent in the same call. You may use any parameters available in the &lt;a href&#x3D;\&quot;/docs/api/payment_intents/confirm\&quot;&gt;confirm API&lt;/a&gt; when &lt;code&gt;confirm&#x3D;true&lt;/code&gt; is supplied.&lt;/p&gt;
  # @param post_payment_intents_request
  # @param [Hash] opts the optional parameters
  # @return [PaymentIntent]
  describe "post_payment_intents test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_payment_intents_intent
  # &lt;p&gt;Updates properties on a PaymentIntent object without confirming.&lt;/p&gt;  &lt;p&gt;Depending on which properties you update, you may need to confirm the PaymentIntent again. For example, updating the &lt;code&gt;payment_method&lt;/code&gt; will always require you to confirm the PaymentIntent again. If you prefer to update and confirm at the same time, we recommend updating properties via the &lt;a href&#x3D;\&quot;/docs/api/payment_intents/confirm\&quot;&gt;confirm API&lt;/a&gt; instead.&lt;/p&gt;
  # @param intent
  # @param [Hash] opts the optional parameters
  # @option opts [PostPaymentIntentsIntentRequest] :post_payment_intents_intent_request
  # @return [PaymentIntent]
  describe "post_payment_intents_intent test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_payment_intents_intent_apply_customer_balance
  # &lt;p&gt;Manually reconcile the remaining amount for a customer_balance PaymentIntent.&lt;/p&gt;
  # @param intent
  # @param [Hash] opts the optional parameters
  # @option opts [PostPaymentIntentsIntentApplyCustomerBalanceRequest] :post_payment_intents_intent_apply_customer_balance_request
  # @return [PaymentIntent]
  describe "post_payment_intents_intent_apply_customer_balance test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_payment_intents_intent_cancel
  # &lt;p&gt;A PaymentIntent object can be canceled when it is in one of these statuses: &lt;code&gt;requires_payment_method&lt;/code&gt;, &lt;code&gt;requires_capture&lt;/code&gt;, &lt;code&gt;requires_confirmation&lt;/code&gt;, &lt;code&gt;requires_action&lt;/code&gt; or, &lt;a href&#x3D;\&quot;/docs/payments/intents\&quot;&gt;in rare cases&lt;/a&gt;, &lt;code&gt;processing&lt;/code&gt;. &lt;/p&gt;  &lt;p&gt;Once canceled, no additional charges will be made by the PaymentIntent and any operations on the PaymentIntent will fail with an error. For PaymentIntents with &lt;code&gt;status&#x3D;’requires_capture’&lt;/code&gt;, the remaining &lt;code&gt;amount_capturable&lt;/code&gt; will automatically be refunded. &lt;/p&gt;  &lt;p&gt;You cannot cancel the PaymentIntent for a Checkout Session. &lt;a href&#x3D;\&quot;/docs/api/checkout/sessions/expire\&quot;&gt;Expire the Checkout Session&lt;/a&gt; instead.&lt;/p&gt;
  # @param intent
  # @param [Hash] opts the optional parameters
  # @option opts [PostPaymentIntentsIntentCancelRequest] :post_payment_intents_intent_cancel_request
  # @return [PaymentIntent]
  describe "post_payment_intents_intent_cancel test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_payment_intents_intent_capture
  # &lt;p&gt;Capture the funds of an existing uncaptured PaymentIntent when its status is &lt;code&gt;requires_capture&lt;/code&gt;.&lt;/p&gt;  &lt;p&gt;Uncaptured PaymentIntents will be canceled a set number of days after they are created (7 by default).&lt;/p&gt;  &lt;p&gt;Learn more about &lt;a href&#x3D;\&quot;/docs/payments/capture-later\&quot;&gt;separate authorization and capture&lt;/a&gt;.&lt;/p&gt;
  # @param intent
  # @param [Hash] opts the optional parameters
  # @option opts [PostPaymentIntentsIntentCaptureRequest] :post_payment_intents_intent_capture_request
  # @return [PaymentIntent]
  describe "post_payment_intents_intent_capture test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_payment_intents_intent_confirm
  # &lt;p&gt;Confirm that your customer intends to pay with current or provided payment method. Upon confirmation, the PaymentIntent will attempt to initiate a payment. If the selected payment method requires additional authentication steps, the PaymentIntent will transition to the &lt;code&gt;requires_action&lt;/code&gt; status and suggest additional actions via &lt;code&gt;next_action&lt;/code&gt;. If payment fails, the PaymentIntent will transition to the &lt;code&gt;requires_payment_method&lt;/code&gt; status. If payment succeeds, the PaymentIntent will transition to the &lt;code&gt;succeeded&lt;/code&gt; status (or &lt;code&gt;requires_capture&lt;/code&gt;, if &lt;code&gt;capture_method&lt;/code&gt; is set to &lt;code&gt;manual&lt;/code&gt;). If the &lt;code&gt;confirmation_method&lt;/code&gt; is &lt;code&gt;automatic&lt;/code&gt;, payment may be attempted using our &lt;a href&#x3D;\&quot;/docs/stripe-js/reference#stripe-handle-card-payment\&quot;&gt;client SDKs&lt;/a&gt; and the PaymentIntent’s &lt;a href&#x3D;\&quot;#payment_intent_object-client_secret\&quot;&gt;client_secret&lt;/a&gt;. After &lt;code&gt;next_action&lt;/code&gt;s are handled by the client, no additional confirmation is required to complete the payment. If the &lt;code&gt;confirmation_method&lt;/code&gt; is &lt;code&gt;manual&lt;/code&gt;, all payment attempts must be initiated using a secret key. If any actions are required for the payment, the PaymentIntent will return to the &lt;code&gt;requires_confirmation&lt;/code&gt; state after those actions are completed. Your server needs to then explicitly re-confirm the PaymentIntent to initiate the next payment attempt. Read the &lt;a href&#x3D;\&quot;/docs/payments/payment-intents/web-manual\&quot;&gt;expanded documentation&lt;/a&gt; to learn more about manual confirmation.&lt;/p&gt;
  # @param intent
  # @param [Hash] opts the optional parameters
  # @option opts [PostPaymentIntentsIntentConfirmRequest] :post_payment_intents_intent_confirm_request
  # @return [PaymentIntent]
  describe "post_payment_intents_intent_confirm test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_payment_intents_intent_increment_authorization
  # &lt;p&gt;Perform an incremental authorization on an eligible &lt;a href&#x3D;\&quot;/docs/api/payment_intents/object\&quot;&gt;PaymentIntent&lt;/a&gt;. To be eligible, the PaymentIntent’s status must be &lt;code&gt;requires_capture&lt;/code&gt; and &lt;a href&#x3D;\&quot;/docs/api/charges/object#charge_object-payment_method_details-card_present-incremental_authorization_supported\&quot;&gt;incremental_authorization_supported&lt;/a&gt; must be &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt;  &lt;p&gt;Incremental authorizations attempt to increase the authorized amount on your customer’s card to the new, higher &lt;code&gt;amount&lt;/code&gt; provided. As with the initial authorization, incremental authorizations may be declined. A single PaymentIntent can call this endpoint multiple times to further increase the authorized amount.&lt;/p&gt;  &lt;p&gt;If the incremental authorization succeeds, the PaymentIntent object is returned with the updated &lt;a href&#x3D;\&quot;/docs/api/payment_intents/object#payment_intent_object-amount\&quot;&gt;amount&lt;/a&gt;. If the incremental authorization fails, a &lt;a href&#x3D;\&quot;/docs/error-codes#card-declined\&quot;&gt;card_declined&lt;/a&gt; error is returned, and no fields on the PaymentIntent or Charge are updated. The PaymentIntent object remains capturable for the previously authorized amount.&lt;/p&gt;  &lt;p&gt;Each PaymentIntent can have a maximum of 10 incremental authorization attempts, including declines. Once captured, a PaymentIntent can no longer be incremented.&lt;/p&gt;  &lt;p&gt;Learn more about &lt;a href&#x3D;\&quot;/docs/terminal/features/incremental-authorizations\&quot;&gt;incremental authorizations&lt;/a&gt;.&lt;/p&gt;
  # @param intent
  # @param post_payment_intents_intent_increment_authorization_request
  # @param [Hash] opts the optional parameters
  # @return [PaymentIntent]
  describe "post_payment_intents_intent_increment_authorization test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_payment_intents_intent_verify_microdeposits
  # &lt;p&gt;Verifies microdeposits on a PaymentIntent object.&lt;/p&gt;
  # @param intent
  # @param [Hash] opts the optional parameters
  # @option opts [PostPaymentIntentsIntentVerifyMicrodepositsRequest] :post_payment_intents_intent_verify_microdeposits_request
  # @return [PaymentIntent]
  describe "post_payment_intents_intent_verify_microdeposits test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
