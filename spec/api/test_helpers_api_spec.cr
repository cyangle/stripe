#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"
require "../../src/stripe/api/test_helpers_api"

# Unit tests for Stripe::TestHelpersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "TestHelpersApi" do
  describe "test an instance of TestHelpersApi" do
    it "should create an instance of TestHelpersApi" do
      api_instance = Stripe::TestHelpersApi.new
      api_instance.should be_a(Stripe::TestHelpersApi)
    end
  end

  # unit tests for delete_test_helpers_test_clocks_test_clock
  # &lt;p&gt;Deletes a test clock.&lt;/p&gt;
  # @param test_clock
  # @param [Hash] opts the optional parameters
  # @return [DeletedTestHelpersTestClock]
  describe "delete_test_helpers_test_clocks_test_clock test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_test_helpers_test_clocks
  # &lt;p&gt;Returns a list of your test clocks.&lt;/p&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ending_before A cursor for use in pagination. &#x60;ending_before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with &#x60;obj_bar&#x60;, your subsequent call can include &#x60;ending_before&#x3D;obj_bar&#x60; in order to fetch the previous page of the list.
  # @option opts [String] :starting_after A cursor for use in pagination. &#x60;starting_after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with &#x60;obj_foo&#x60;, your subsequent call can include &#x60;starting_after&#x3D;obj_foo&#x60; in order to fetch the next page of the list.
  # @option opts [Int32] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [BillingClocksResourceBillingClockList]
  describe "get_test_helpers_test_clocks test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_test_helpers_test_clocks_test_clock
  # &lt;p&gt;Retrieves a test clock.&lt;/p&gt;
  # @param test_clock
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [TestHelpersTestClock]
  describe "get_test_helpers_test_clocks_test_clock test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_test_helpers_confirmation_tokens
  # &lt;p&gt;Creates a test mode Confirmation Token server side for your integration tests.&lt;/p&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [String] :payment_method ID of an existing PaymentMethod.
  # @option opts [PaymentMethodDataParams] :payment_method_data
  # @option opts [String] :return_url Return URL used to confirm the Intent.
  # @option opts [String] :setup_future_usage Indicates that you intend to make future payments with this ConfirmationToken&#39;s payment method.  The presence of this property will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the PaymentIntent&#39;s Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete.
  # @option opts [RecipientShippingWithOptionalFieldsAddress] :shipping
  # @return [ConfirmationToken]
  describe "post_test_helpers_confirmation_tokens test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_test_helpers_issuing_authorizations
  # &lt;p&gt;Create a test-mode authorization.&lt;/p&gt;
  # @param amount The total amount to attempt to authorize. This amount is in the provided currency, or defaults to the card&#39;s currency, and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
  # @param card Card associated with this authorization.
  # @param [Hash] opts the optional parameters
  # @option opts [AmountDetailsSpecs] :amount_details
  # @option opts [String] :authorization_method How the card details were provided. Defaults to online.
  # @option opts [String] :currency The currency of the authorization. If not provided, defaults to the currency of the card. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [FleetTestmodeAuthorizationSpecs] :fleet
  # @option opts [FuelSpecs] :fuel
  # @option opts [Bool] :is_amount_controllable If set &#x60;true&#x60;, you may provide [amount](https://stripe.com/docs/api/issuing/authorizations/approve#approve_issuing_authorization-amount) to control how much to hold for the authorization.
  # @option opts [MerchantDataSpecs] :merchant_data
  # @option opts [NetworkDataSpecs] :network_data
  # @option opts [VerificationDataSpecs] :verification_data
  # @option opts [String] :wallet The digital wallet used for this transaction. One of &#x60;apple_pay&#x60;, &#x60;google_pay&#x60;, or &#x60;samsung_pay&#x60;. Will populate as &#x60;null&#x60; when no digital wallet was utilized.
  # @return [IssuingAuthorization]
  describe "post_test_helpers_issuing_authorizations test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_test_helpers_issuing_authorizations_authorization_capture
  # &lt;p&gt;Capture a test-mode authorization.&lt;/p&gt;
  # @param authorization
  # @param [Hash] opts the optional parameters
  # @option opts [Int32] :capture_amount The amount to capture from the authorization. If not provided, the full amount of the authorization will be captured. This amount is in the authorization currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
  # @option opts [Bool] :close_authorization Whether to close the authorization after capture. Defaults to true. Set to false to enable multi-capture flows.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [PurchaseDetailsSpecs] :purchase_details
  # @return [IssuingAuthorization]
  describe "post_test_helpers_issuing_authorizations_authorization_capture test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_test_helpers_issuing_authorizations_authorization_expire
  # &lt;p&gt;Expire a test-mode Authorization.&lt;/p&gt;
  # @param authorization
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [IssuingAuthorization]
  describe "post_test_helpers_issuing_authorizations_authorization_expire test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_test_helpers_issuing_authorizations_authorization_increment
  # &lt;p&gt;Increment a test-mode Authorization.&lt;/p&gt;
  # @param authorization
  # @param increment_amount The amount to increment the authorization by. This amount is in the authorization currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [Bool] :is_amount_controllable If set &#x60;true&#x60;, you may provide [amount](https://stripe.com/docs/api/issuing/authorizations/approve#approve_issuing_authorization-amount) to control how much to hold for the authorization.
  # @return [IssuingAuthorization]
  describe "post_test_helpers_issuing_authorizations_authorization_increment test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_test_helpers_issuing_authorizations_authorization_reverse
  # &lt;p&gt;Reverse a test-mode Authorization.&lt;/p&gt;
  # @param authorization
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [Int32] :reverse_amount The amount to reverse from the authorization. If not provided, the full amount of the authorization will be reversed. This amount is in the authorization currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
  # @return [IssuingAuthorization]
  describe "post_test_helpers_issuing_authorizations_authorization_reverse test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_test_helpers_issuing_cards_card_shipping_fail
  # &lt;p&gt;Updates the shipping status of the specified Issuing &lt;code&gt;Card&lt;/code&gt; object to &lt;code&gt;failure&lt;/code&gt;.&lt;/p&gt;
  # @param card
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [IssuingCard]
  describe "post_test_helpers_issuing_cards_card_shipping_fail test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_test_helpers_issuing_cards_card_shipping_return
  # &lt;p&gt;Updates the shipping status of the specified Issuing &lt;code&gt;Card&lt;/code&gt; object to &lt;code&gt;returned&lt;/code&gt;.&lt;/p&gt;
  # @param card
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [IssuingCard]
  describe "post_test_helpers_issuing_cards_card_shipping_return test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_test_helpers_issuing_cards_card_shipping_ship
  # &lt;p&gt;Updates the shipping status of the specified Issuing &lt;code&gt;Card&lt;/code&gt; object to &lt;code&gt;shipped&lt;/code&gt;.&lt;/p&gt;
  # @param card
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [IssuingCard]
  describe "post_test_helpers_issuing_cards_card_shipping_ship test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_test_helpers_issuing_personalization_designs_personalization_design_activate
  # &lt;p&gt;Updates the &lt;code&gt;status&lt;/code&gt; of the specified testmode personalization design object to &lt;code&gt;active&lt;/code&gt;.&lt;/p&gt;
  # @param personalization_design
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [IssuingPersonalizationDesign]
  describe "post_test_helpers_issuing_personalization_designs_personalization_design_activate test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_test_helpers_issuing_personalization_designs_personalization_design_deactivate
  # &lt;p&gt;Updates the &lt;code&gt;status&lt;/code&gt; of the specified testmode personalization design object to &lt;code&gt;inactive&lt;/code&gt;.&lt;/p&gt;
  # @param personalization_design
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [IssuingPersonalizationDesign]
  describe "post_test_helpers_issuing_personalization_designs_personalization_design_deactivate test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_test_helpers_issuing_personalization_designs_personalization_design_reject
  # &lt;p&gt;Updates the &lt;code&gt;status&lt;/code&gt; of the specified testmode personalization design object to &lt;code&gt;rejected&lt;/code&gt;.&lt;/p&gt;
  # @param personalization_design
  # @param rejection_reasons
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [IssuingPersonalizationDesign]
  describe "post_test_helpers_issuing_personalization_designs_personalization_design_reject test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_test_helpers_issuing_transactions_create_force_capture
  # &lt;p&gt;Allows the user to capture an arbitrary amount, also known as a forced capture.&lt;/p&gt;
  # @param amount The total amount to attempt to capture. This amount is in the provided currency, or defaults to the cards currency, and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
  # @param card Card associated with this transaction.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :currency The currency of the capture. If not provided, defaults to the currency of the card. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [MerchantDataSpecs] :merchant_data
  # @option opts [PurchaseDetailsSpecs] :purchase_details
  # @return [IssuingTransaction]
  describe "post_test_helpers_issuing_transactions_create_force_capture test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_test_helpers_issuing_transactions_create_unlinked_refund
  # &lt;p&gt;Allows the user to refund an arbitrary amount, also known as a unlinked refund.&lt;/p&gt;
  # @param amount The total amount to attempt to refund. This amount is in the provided currency, or defaults to the cards currency, and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
  # @param card Card associated with this unlinked refund transaction.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :currency The currency of the unlinked refund. If not provided, defaults to the currency of the card. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [MerchantDataSpecs] :merchant_data
  # @option opts [PurchaseDetailsSpecs] :purchase_details
  # @return [IssuingTransaction]
  describe "post_test_helpers_issuing_transactions_create_unlinked_refund test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_test_helpers_issuing_transactions_transaction_refund
  # &lt;p&gt;Refund a test-mode Transaction.&lt;/p&gt;
  # @param transaction
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [Int32] :refund_amount The total amount to attempt to refund. This amount is in the provided currency, or defaults to the cards currency, and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
  # @return [IssuingTransaction]
  describe "post_test_helpers_issuing_transactions_transaction_refund test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_test_helpers_terminal_readers_reader_present_payment_method
  # &lt;p&gt;Presents a payment method on a simulated reader. Can be used to simulate accepting a payment, saving a card or refunding a transaction.&lt;/p&gt;
  # @param reader
  # @param [Hash] opts the optional parameters
  # @option opts [Int32] :amount_tip Simulated on-reader tip amount.
  # @option opts [CardPresent] :card_present
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [InteracPresent] :interac_present
  # @option opts [String] :_type Simulated payment type.
  # @return [TerminalReader]
  describe "post_test_helpers_terminal_readers_reader_present_payment_method test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_test_helpers_test_clocks
  # &lt;p&gt;Creates a new test clock that can be attached to new customers and quotes.&lt;/p&gt;
  # @param frozen_time The initial frozen time for this test clock.
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [String] :name The name for this test clock.
  # @return [TestHelpersTestClock]
  describe "post_test_helpers_test_clocks test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_test_helpers_test_clocks_test_clock_advance
  # &lt;p&gt;Starts advancing a test clock to a specified time in the future. Advancement is done when status changes to &lt;code&gt;Ready&lt;/code&gt;.&lt;/p&gt;
  # @param test_clock
  # @param frozen_time The time to advance the test clock. Must be after the test clock&#39;s current frozen time. Cannot be more than two intervals in the future from the shortest subscription in this test clock. If there are no subscriptions in this test clock, it cannot be more than two years in the future.
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [TestHelpersTestClock]
  describe "post_test_helpers_test_clocks_test_clock_advance test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_test_helpers_treasury_inbound_transfers_id_fail
  # &lt;p&gt;Transitions a test mode created InboundTransfer to the &lt;code&gt;failed&lt;/code&gt; status. The InboundTransfer must already be in the &lt;code&gt;processing&lt;/code&gt; state.&lt;/p&gt;
  # @param id
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [FailureDetailsParams] :failure_details
  # @return [TreasuryInboundTransfer]
  describe "post_test_helpers_treasury_inbound_transfers_id_fail test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_test_helpers_treasury_inbound_transfers_id_succeed
  # &lt;p&gt;Transitions a test mode created InboundTransfer to the &lt;code&gt;succeeded&lt;/code&gt; status. The InboundTransfer must already be in the &lt;code&gt;processing&lt;/code&gt; state.&lt;/p&gt;
  # @param id
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [TreasuryInboundTransfer]
  describe "post_test_helpers_treasury_inbound_transfers_id_succeed test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_test_helpers_treasury_outbound_payments_id_fail
  # &lt;p&gt;Transitions a test mode created OutboundPayment to the &lt;code&gt;failed&lt;/code&gt; status. The OutboundPayment must already be in the &lt;code&gt;processing&lt;/code&gt; state.&lt;/p&gt;
  # @param id
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [TreasuryOutboundPayment]
  describe "post_test_helpers_treasury_outbound_payments_id_fail test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_test_helpers_treasury_outbound_payments_id_post
  # &lt;p&gt;Transitions a test mode created OutboundPayment to the &lt;code&gt;posted&lt;/code&gt; status. The OutboundPayment must already be in the &lt;code&gt;processing&lt;/code&gt; state.&lt;/p&gt;
  # @param id
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [TreasuryOutboundPayment]
  describe "post_test_helpers_treasury_outbound_payments_id_post test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_test_helpers_treasury_outbound_payments_id_return
  # &lt;p&gt;Transitions a test mode created OutboundPayment to the &lt;code&gt;returned&lt;/code&gt; status. The OutboundPayment must already be in the &lt;code&gt;processing&lt;/code&gt; state.&lt;/p&gt;
  # @param id
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [ReturnedDetailsParams] :returned_details
  # @return [TreasuryOutboundPayment]
  describe "post_test_helpers_treasury_outbound_payments_id_return test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_test_helpers_treasury_outbound_transfers_outbound_transfer_fail
  # &lt;p&gt;Transitions a test mode created OutboundTransfer to the &lt;code&gt;failed&lt;/code&gt; status. The OutboundTransfer must already be in the &lt;code&gt;processing&lt;/code&gt; state.&lt;/p&gt;
  # @param outbound_transfer
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [TreasuryOutboundTransfer]
  describe "post_test_helpers_treasury_outbound_transfers_outbound_transfer_fail test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_test_helpers_treasury_outbound_transfers_outbound_transfer_post
  # &lt;p&gt;Transitions a test mode created OutboundTransfer to the &lt;code&gt;posted&lt;/code&gt; status. The OutboundTransfer must already be in the &lt;code&gt;processing&lt;/code&gt; state.&lt;/p&gt;
  # @param outbound_transfer
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [TreasuryOutboundTransfer]
  describe "post_test_helpers_treasury_outbound_transfers_outbound_transfer_post test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_test_helpers_treasury_outbound_transfers_outbound_transfer_return
  # &lt;p&gt;Transitions a test mode created OutboundTransfer to the &lt;code&gt;returned&lt;/code&gt; status. The OutboundTransfer must already be in the &lt;code&gt;processing&lt;/code&gt; state.&lt;/p&gt;
  # @param outbound_transfer
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [ReturnedDetailsParams] :returned_details
  # @return [TreasuryOutboundTransfer]
  describe "post_test_helpers_treasury_outbound_transfers_outbound_transfer_return test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_test_helpers_treasury_received_credits
  # &lt;p&gt;Use this endpoint to simulate a test mode ReceivedCredit initiated by a third party. In live mode, you can’t directly create ReceivedCredits initiated by third parties.&lt;/p&gt;
  # @param amount Amount (in cents) to be transferred.
  # @param currency Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  # @param financial_account The FinancialAccount to send funds to.
  # @param network Specifies the network rails to be used. If not set, will default to the PaymentMethod&#39;s preferred network. See the [docs](https://stripe.com/docs/treasury/money-movement/timelines) to learn more about money movement timelines for each network type.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :description An arbitrary string attached to the object. Often useful for displaying to users.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [SourceParams] :initiating_payment_method_details
  # @return [TreasuryReceivedCredit]
  describe "post_test_helpers_treasury_received_credits test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_test_helpers_treasury_received_debits
  # &lt;p&gt;Use this endpoint to simulate a test mode ReceivedDebit initiated by a third party. In live mode, you can’t directly create ReceivedDebits initiated by third parties.&lt;/p&gt;
  # @param amount Amount (in cents) to be transferred.
  # @param currency Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  # @param financial_account The FinancialAccount to pull funds from.
  # @param network Specifies the network rails to be used. If not set, will default to the PaymentMethod&#39;s preferred network. See the [docs](https://stripe.com/docs/treasury/money-movement/timelines) to learn more about money movement timelines for each network type.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :description An arbitrary string attached to the object. Often useful for displaying to users.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [SourceParams] :initiating_payment_method_details
  # @return [TreasuryReceivedDebit]
  describe "post_test_helpers_treasury_received_debits test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
