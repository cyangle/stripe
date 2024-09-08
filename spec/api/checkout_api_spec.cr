#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"
require "../../src/stripe/api/checkout_api"

# Unit tests for Stripe::CheckoutApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "CheckoutApi" do
  describe "test an instance of CheckoutApi" do
    it "should create an instance of CheckoutApi" do
      api_instance = Stripe::CheckoutApi.new
      api_instance.should be_a(Stripe::CheckoutApi)
    end
  end

  # unit tests for get_checkout_sessions
  # &lt;p&gt;Returns a list of Checkout Sessions.&lt;/p&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ending_before A cursor for use in pagination. &#x60;ending_before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with &#x60;obj_bar&#x60;, your subsequent call can include &#x60;ending_before&#x3D;obj_bar&#x60; in order to fetch the previous page of the list.
  # @option opts [String] :starting_after A cursor for use in pagination. &#x60;starting_after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with &#x60;obj_foo&#x60;, your subsequent call can include &#x60;starting_after&#x3D;obj_foo&#x60; in order to fetch the next page of the list.
  # @option opts [Int32] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  # @option opts [GetAccountsCreatedParameter] :created Only return Checkout Sessions that were created during the given date interval.
  # @option opts [String] :payment_intent Only return the Checkout Session for the PaymentIntent specified.
  # @option opts [String] :subscription Only return the Checkout Session for the subscription specified.
  # @option opts [CustomerDetailsParams] :customer_details Only return the Checkout Sessions for the Customer details specified.
  # @option opts [String] :customer Only return the Checkout Sessions for the Customer specified.
  # @option opts [String] :payment_link Only return the Checkout Sessions for the Payment Link specified.
  # @option opts [String] :status Only return the Checkout Sessions matching the given status.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [PaymentPagesCheckoutSessionList]
  describe "get_checkout_sessions test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_checkout_sessions_session
  # &lt;p&gt;Retrieves a Session object.&lt;/p&gt;
  # @param session
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [CheckoutSession]
  describe "get_checkout_sessions_session test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_checkout_sessions_session_line_items
  # &lt;p&gt;When retrieving a Checkout Session, there is an includable &lt;strong&gt;line_items&lt;/strong&gt; property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.&lt;/p&gt;
  # @param session
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ending_before A cursor for use in pagination. &#x60;ending_before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with &#x60;obj_bar&#x60;, your subsequent call can include &#x60;ending_before&#x3D;obj_bar&#x60; in order to fetch the previous page of the list.
  # @option opts [String] :starting_after A cursor for use in pagination. &#x60;starting_after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with &#x60;obj_foo&#x60;, your subsequent call can include &#x60;starting_after&#x3D;obj_foo&#x60; in order to fetch the next page of the list.
  # @option opts [Int32] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [PaymentPagesCheckoutSessionListLineItems]
  describe "get_checkout_sessions_session_line_items test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_checkout_sessions
  # &lt;p&gt;Creates a Session object.&lt;/p&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [AfterExpirationParams] :after_expiration
  # @option opts [Bool] :allow_promotion_codes Enables user redeemable promotion codes.
  # @option opts [AutomaticTaxParams] :automatic_tax
  # @option opts [String] :billing_address_collection Specify whether Checkout should collect the customer&#39;s billing address. Defaults to &#x60;auto&#x60;.
  # @option opts [String] :cancel_url If set, Checkout displays a back button and customers will be directed to this URL if they decide to cancel payment and return to your website. This parameter is not allowed if ui_mode is &#x60;embedded&#x60;.
  # @option opts [String] :client_reference_id A unique string to reference the Checkout Session. This can be a customer ID, a cart ID, or similar, and can be used to reconcile the session with your internal systems.
  # @option opts [ConsentCollectionParams] :consent_collection
  # @option opts [String] :currency Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). Required in &#x60;setup&#x60; mode when &#x60;payment_method_types&#x60; is not set.
  # @option opts [Array(CustomFieldParam)] :custom_fields Collect additional information from your customer using custom fields. Up to 3 fields are supported.
  # @option opts [CustomTextParam] :custom_text
  # @option opts [String] :customer ID of an existing Customer, if one exists. In &#x60;payment&#x60; mode, the customer’s most recently saved card payment method will be used to prefill the email, name, card details, and billing address on the Checkout page. In &#x60;subscription&#x60; mode, the customer’s [default payment method](https://stripe.com/docs/api/customers/update#update_customer-invoice_settings-default_payment_method) will be used if it’s a card, otherwise the most recently saved card will be used. A valid billing address, billing name and billing email are required on the payment method for Checkout to prefill the customer&#39;s card details.  If the Customer already has a valid [email](https://stripe.com/docs/api/customers/object#customer_object-email) set, the email will be prefilled and not editable in Checkout. If the Customer does not have a valid &#x60;email&#x60;, Checkout will set the email entered during the session on the Customer.  If blank for Checkout Sessions in &#x60;subscription&#x60; mode or with &#x60;customer_creation&#x60; set as &#x60;always&#x60; in &#x60;payment&#x60; mode, Checkout will create a new Customer object based on information provided during the payment flow.  You can set [&#x60;payment_intent_data.setup_future_usage&#x60;](https://stripe.com/docs/api/checkout/sessions/create#create_checkout_session-payment_intent_data-setup_future_usage) to have Checkout automatically attach the payment method to the Customer you pass in for future reuse.
  # @option opts [String] :customer_creation Configure whether a Checkout Session creates a [Customer](https://stripe.com/docs/api/customers) during Session confirmation.  When a Customer is not created, you can still retrieve email, address, and other customer data entered in Checkout with [customer_details](https://stripe.com/docs/api/checkout/sessions/object#checkout_session_object-customer_details).  Sessions that don&#39;t create Customers instead are grouped by [guest customers](https://stripe.com/docs/payments/checkout/guest-customers) in the Dashboard. Promotion codes limited to first time customers will return invalid for these Sessions.  Can only be set in &#x60;payment&#x60; and &#x60;setup&#x60; mode.
  # @option opts [String] :customer_email If provided, this value will be used when the Customer object is created. If not provided, customers will be asked to enter their email address. Use this parameter to prefill customer data if you already have an email on file. To access information about the customer once a session is complete, use the &#x60;customer&#x60; field.
  # @option opts [CustomerUpdateParams] :customer_update
  # @option opts [Array(DiscountParams)] :discounts The coupon or promotion code to apply to this Session. Currently, only up to one may be specified.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [Int32] :expires_at The Epoch time in seconds at which the Checkout Session will expire. It can be anywhere from 30 minutes to 24 hours after Checkout Session creation. By default, this value is 24 hours from creation.
  # @option opts [InvoiceCreationParams] :invoice_creation
  # @option opts [Array(LineItemParams)] :line_items A list of items the customer is purchasing. Use this parameter to pass one-time or recurring [Prices](https://stripe.com/docs/api/prices).  For &#x60;payment&#x60; mode, there is a maximum of 100 line items, however it is recommended to consolidate line items if there are more than a few dozen.  For &#x60;subscription&#x60; mode, there is a maximum of 20 line items with recurring Prices and 20 line items with one-time Prices. Line items with one-time Prices will be on the initial invoice only.
  # @option opts [String] :locale The IETF language tag of the locale Checkout is displayed in. If blank or &#x60;auto&#x60;, the browser&#39;s locale is used.
  # @option opts [Hash(String, String)] :metadata
  # @option opts [String] :mode The mode of the Checkout Session. Pass &#x60;subscription&#x60; if the Checkout Session includes at least one recurring item.
  # @option opts [PaymentIntentDataParams] :payment_intent_data
  # @option opts [String] :payment_method_collection Specify whether Checkout should collect a payment method. When set to &#x60;if_required&#x60;, Checkout will not collect a payment method when the total due for the session is 0. This may occur if the Checkout Session includes a free trial or a discount.  Can only be set in &#x60;subscription&#x60; mode. Defaults to &#x60;always&#x60;.  If you&#39;d like information on how to collect a payment method outside of Checkout, read the guide on configuring [subscriptions with a free trial](https://stripe.com/docs/payments/checkout/free-trials).
  # @option opts [String] :payment_method_configuration The ID of the payment method configuration to use with this Checkout session.
  # @option opts [PaymentMethodDataParam] :payment_method_data
  # @option opts [PaymentMethodOptionsParam] :payment_method_options
  # @option opts [Array(String)] :payment_method_types A list of the types of payment methods (e.g., &#x60;card&#x60;) this Checkout Session can accept.  You can omit this attribute to manage your payment methods from the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods). See [Dynamic Payment Methods](https://stripe.com/docs/payments/payment-methods/integration-options#using-dynamic-payment-methods) for more details.  Read more about the supported payment methods and their requirements in our [payment method details guide](/docs/payments/checkout/payment-methods).  If multiple payment methods are passed, Checkout will dynamically reorder them to prioritize the most relevant payment methods based on the customer&#39;s location and other characteristics.
  # @option opts [PhoneNumberCollectionParams] :phone_number_collection
  # @option opts [String] :redirect_on_completion This parameter applies to &#x60;ui_mode: embedded&#x60;. Learn more about the [redirect behavior](https://stripe.com/docs/payments/checkout/custom-success-page?payment-ui&#x3D;embedded-form) of embedded sessions. Defaults to &#x60;always&#x60;.
  # @option opts [String] :return_url The URL to redirect your customer back to after they authenticate or cancel their payment on the payment method&#39;s app or site. This parameter is required if ui_mode is &#x60;embedded&#x60; and redirect-based payment methods are enabled on the session.
  # @option opts [SavedPaymentMethodOptionsParam] :saved_payment_method_options
  # @option opts [SetupIntentDataParam] :setup_intent_data
  # @option opts [ShippingAddressCollectionParams] :shipping_address_collection
  # @option opts [Array(ShippingOptionParams)] :shipping_options The shipping rate options to apply to this Session. Up to a maximum of 5.
  # @option opts [String] :submit_type Describes the type of transaction being performed by Checkout in order to customize relevant text on the page, such as the submit button. &#x60;submit_type&#x60; can only be specified on Checkout Sessions in &#x60;payment&#x60; mode. If blank or &#x60;auto&#x60;, &#x60;pay&#x60; is used.
  # @option opts [SubscriptionDataParams] :subscription_data
  # @option opts [String] :success_url The URL to which Stripe should send customers when payment or setup is complete. This parameter is not allowed if ui_mode is &#x60;embedded&#x60;. If you’d like to use information from the successful Checkout Session on your page, read the guide on [customizing your success page](https://stripe.com/docs/payments/checkout/custom-success-page).
  # @option opts [TaxIdCollectionParams] :tax_id_collection
  # @option opts [String] :ui_mode The UI mode of the Session. Defaults to &#x60;hosted&#x60;.
  # @return [CheckoutSession]
  describe "post_checkout_sessions test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_checkout_sessions_session
  # &lt;p&gt;Updates a Session object.&lt;/p&gt;
  # @param session
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [PostAccountsRequestMetadata] :metadata
  # @return [CheckoutSession]
  describe "post_checkout_sessions_session test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_checkout_sessions_session_expire
  # &lt;p&gt;A Session can be expired when it is in one of these statuses: &lt;code&gt;open&lt;/code&gt; &lt;/p&gt;  &lt;p&gt;After it expires, a customer can’t complete a Session and customers loading the Session see a message saying the Session is expired.&lt;/p&gt;
  # @param session
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [CheckoutSession]
  describe "post_checkout_sessions_session_expire test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
