#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"
require "../../src/stripe/api/subscriptions_api"

# Unit tests for Stripe::SubscriptionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "SubscriptionsApi" do
  describe "test an instance of SubscriptionsApi" do
    it "should create an instance of SubscriptionsApi" do
      api_instance = Stripe::SubscriptionsApi.new
      api_instance.should be_a(Stripe::SubscriptionsApi)
    end
  end

  # unit tests for delete_subscriptions_subscription_exposed_id
  # &lt;p&gt;Cancels a customer’s subscription immediately. The customer will not be charged again for the subscription.&lt;/p&gt;  &lt;p&gt;Note, however, that any pending invoice items that you’ve created will still be charged for at the end of the period, unless manually &lt;a href&#x3D;\&quot;#delete_invoiceitem\&quot;&gt;deleted&lt;/a&gt;. If you’ve set the subscription to cancel at the end of the period, any pending prorations will also be left in place and collected at the end of the period. But if the subscription is set to cancel immediately, pending prorations will be removed.&lt;/p&gt;  &lt;p&gt;By default, upon subscription cancellation, Stripe will stop automatic collection of all finalized invoices for the customer. This is intended to prevent unexpected payment attempts after the customer has canceled a subscription. However, you can resume automatic collection of the invoices manually after subscription cancellation to have us proceed. Or, you could check for unpaid invoices before allowing the customer to cancel the subscription at all.&lt;/p&gt;
  # @param subscription_exposed_id
  # @param [Hash] opts the optional parameters
  # @option opts [CancellationDetailsParam] :cancellation_details
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [Bool] :invoice_now Will generate a final invoice that invoices for any un-invoiced metered usage and new/pending proration invoice items. Defaults to &#x60;true&#x60;.
  # @option opts [Bool] :prorate Will generate a proration invoice item that credits remaining unused time until the subscription period end. Defaults to &#x60;false&#x60;.
  # @return [Subscription]
  describe "delete_subscriptions_subscription_exposed_id test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for delete_subscriptions_subscription_exposed_id_discount
  # &lt;p&gt;Removes the currently applied discount on a subscription.&lt;/p&gt;
  # @param subscription_exposed_id
  # @param [Hash] opts the optional parameters
  # @return [DeletedDiscount]
  describe "delete_subscriptions_subscription_exposed_id_discount test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_subscriptions
  # &lt;p&gt;By default, returns a list of subscriptions that have not been canceled. In order to list canceled subscriptions, specify &lt;code&gt;status&#x3D;canceled&lt;/code&gt;.&lt;/p&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ending_before A cursor for use in pagination. &#x60;ending_before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with &#x60;obj_bar&#x60;, your subsequent call can include &#x60;ending_before&#x3D;obj_bar&#x60; in order to fetch the previous page of the list.
  # @option opts [String] :starting_after A cursor for use in pagination. &#x60;starting_after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with &#x60;obj_foo&#x60;, your subsequent call can include &#x60;starting_after&#x3D;obj_foo&#x60; in order to fetch the next page of the list.
  # @option opts [Int32] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  # @option opts [String] :test_clock Filter for subscriptions that are associated with the specified test clock. The response will not include subscriptions with test clocks if this and the customer parameter is not set.
  # @option opts [String] :price Filter for subscriptions that contain this recurring price ID.
  # @option opts [AutomaticTaxFilterParams] :automatic_tax Filter subscriptions by their automatic tax settings.
  # @option opts [GetAccountsCreatedParameter] :created Only return subscriptions that were created during the given date interval.
  # @option opts [GetAccountsCreatedParameter] :current_period_end Only return subscriptions whose current_period_end falls within the given date interval.
  # @option opts [GetAccountsCreatedParameter] :current_period_start Only return subscriptions whose current_period_start falls within the given date interval.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [String] :customer The ID of the customer whose subscriptions will be retrieved.
  # @option opts [String] :plan The ID of the plan whose subscriptions will be retrieved.
  # @option opts [String] :collection_method The collection method of the subscriptions to retrieve. Either &#x60;charge_automatically&#x60; or &#x60;send_invoice&#x60;.
  # @option opts [String] :status The status of the subscriptions to retrieve. Passing in a value of &#x60;canceled&#x60; will return all canceled subscriptions, including those belonging to deleted customers. Pass &#x60;ended&#x60; to find subscriptions that are canceled and subscriptions that are expired due to [incomplete payment](https://stripe.com/docs/billing/subscriptions/overview#subscription-statuses). Passing in a value of &#x60;all&#x60; will return subscriptions of all statuses. If no value is supplied, all subscriptions that have not been canceled are returned.
  # @return [SubscriptionsSubscriptionList]
  describe "get_subscriptions test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_subscriptions_search
  # &lt;p&gt;Search for subscriptions you’ve previously created using Stripe’s &lt;a href&#x3D;\&quot;/docs/search#search-query-language\&quot;&gt;Search Query Language&lt;/a&gt;. Don’t use search in read-after-write flows where strict consistency is necessary. Under normal operating conditions, data is searchable in less than a minute. Occasionally, propagation of new or updated data can be up to an hour behind during outages. Search functionality is not available to merchants in India.&lt;/p&gt;
  # @param query The search query string. See [search query language](https://stripe.com/docs/search#search-query-language) and the list of supported [query fields for subscriptions](https://stripe.com/docs/search#query-fields-for-subscriptions).
  # @param [Hash] opts the optional parameters
  # @option opts [String] :page A cursor for pagination across multiple pages of results. Don&#39;t include this parameter on the first call. Use the next_page value returned in a previous response to request subsequent results.
  # @option opts [Int32] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [SearchResult]
  describe "get_subscriptions_search test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_subscriptions_subscription_exposed_id
  # &lt;p&gt;Retrieves the subscription with the given ID.&lt;/p&gt;
  # @param subscription_exposed_id
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [Subscription]
  describe "get_subscriptions_subscription_exposed_id test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_subscriptions
  # &lt;p&gt;Creates a new subscription on an existing customer. Each customer can have up to 500 active or scheduled subscriptions.&lt;/p&gt;  &lt;p&gt;When you create a subscription with &lt;code&gt;collection_method&#x3D;charge_automatically&lt;/code&gt;, the first invoice is finalized as part of the request. The &lt;code&gt;payment_behavior&lt;/code&gt; parameter determines the exact behavior of the initial payment.&lt;/p&gt;  &lt;p&gt;To start subscriptions where the first invoice always begins in a &lt;code&gt;draft&lt;/code&gt; status, use &lt;a href&#x3D;\&quot;/docs/billing/subscriptions/subscription-schedules#managing\&quot;&gt;subscription schedules&lt;/a&gt; instead. Schedules provide the flexibility to model more complex billing configurations that change over time.&lt;/p&gt;
  # @param customer The identifier of the customer to subscribe.
  # @param [Hash] opts the optional parameters
  # @option opts [Array(AddInvoiceItemEntry)] :add_invoice_items A list of prices and quantities that will generate invoice items appended to the next invoice for this subscription. You may pass up to 20 items.
  # @option opts [PostSubscriptionsRequestApplicationFeePercent] :application_fee_percent
  # @option opts [AutomaticTaxConfig] :automatic_tax
  # @option opts [Int32] :backdate_start_date For new subscriptions, a past timestamp to backdate the subscription&#39;s start date to. If set, the first invoice will contain a proration for the timespan between the start date and the current time. Can be combined with trials and the billing cycle anchor.
  # @option opts [Int32] :billing_cycle_anchor A future timestamp in UTC format to anchor the subscription&#39;s [billing cycle](https://stripe.com/docs/subscriptions/billing-cycle). The anchor is the reference point that aligns future billing cycle dates. It sets the day of week for &#x60;week&#x60; intervals, the day of month for &#x60;month&#x60; and &#x60;year&#x60; intervals, and the month of year for &#x60;year&#x60; intervals.
  # @option opts [BillingCycleAnchorConfigParam] :billing_cycle_anchor_config
  # @option opts [PostSubscriptionsRequestBillingThresholds] :billing_thresholds
  # @option opts [Int32] :cancel_at A timestamp at which the subscription should cancel. If set to a date before the current period ends, this will cause a proration if prorations have been enabled using &#x60;proration_behavior&#x60;. If set during a future period, this will always cause a proration for that period.
  # @option opts [Bool] :cancel_at_period_end Indicate whether this subscription should cancel at the end of the current period (&#x60;current_period_end&#x60;). Defaults to &#x60;false&#x60;.
  # @option opts [String] :collection_method Either &#x60;charge_automatically&#x60;, or &#x60;send_invoice&#x60;. When charging automatically, Stripe will attempt to pay this subscription at the end of the cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as &#x60;active&#x60;. Defaults to &#x60;charge_automatically&#x60;.
  # @option opts [String] :coupon The ID of the coupon to apply to this subscription. A coupon applied to a subscription will only affect invoices created for that particular subscription. This field has been deprecated and will be removed in a future API version. Use &#x60;discounts&#x60; instead.
  # @option opts [String] :currency Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  # @option opts [Int32] :days_until_due Number of days a customer has to pay invoices generated by this subscription. Valid only for subscriptions where &#x60;collection_method&#x60; is set to &#x60;send_invoice&#x60;.
  # @option opts [String] :default_payment_method ID of the default payment method for the subscription. It must belong to the customer associated with the subscription. This takes precedence over &#x60;default_source&#x60;. If neither are set, invoices will use the customer&#39;s [invoice_settings.default_payment_method](https://stripe.com/docs/api/customers/object#customer_object-invoice_settings-default_payment_method) or [default_source](https://stripe.com/docs/api/customers/object#customer_object-default_source).
  # @option opts [String] :default_source ID of the default payment source for the subscription. It must belong to the customer associated with the subscription and be in a chargeable state. If &#x60;default_payment_method&#x60; is also set, &#x60;default_payment_method&#x60; will take precedence. If neither are set, invoices will use the customer&#39;s [invoice_settings.default_payment_method](https://stripe.com/docs/api/customers/object#customer_object-invoice_settings-default_payment_method) or [default_source](https://stripe.com/docs/api/customers/object#customer_object-default_source).
  # @option opts [PostSubscriptionsRequestDefaultTaxRates] :default_tax_rates
  # @option opts [String] :description The subscription&#39;s description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
  # @option opts [PostSubscriptionsRequestDiscounts] :discounts
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [InvoiceSettingsParam] :invoice_settings
  # @option opts [Array(SubscriptionItemCreateParams)] :items A list of up to 20 subscription items, each with an attached price.
  # @option opts [PostAccountsRequestMetadata] :metadata
  # @option opts [Bool] :off_session Indicates if a customer is on or off-session while an invoice payment is attempted. Defaults to &#x60;false&#x60; (on-session).
  # @option opts [PostSubscriptionsRequestOnBehalfOf] :on_behalf_of
  # @option opts [String] :payment_behavior Only applies to subscriptions with &#x60;collection_method&#x3D;charge_automatically&#x60;.  Use &#x60;allow_incomplete&#x60; to create Subscriptions with &#x60;status&#x3D;incomplete&#x60; if the first invoice can&#39;t be paid. Creating Subscriptions with this status allows you to manage scenarios where additional customer actions are needed to pay a subscription&#39;s invoice. For example, SCA regulation may require 3DS authentication to complete payment. See the [SCA Migration Guide](https://stripe.com/docs/billing/migration/strong-customer-authentication) for Billing to learn more. This is the default behavior.  Use &#x60;default_incomplete&#x60; to create Subscriptions with &#x60;status&#x3D;incomplete&#x60; when the first invoice requires payment, otherwise start as active. Subscriptions transition to &#x60;status&#x3D;active&#x60; when successfully confirming the PaymentIntent on the first invoice. This allows simpler management of scenarios where additional customer actions are needed to pay a subscription’s invoice, such as failed payments, [SCA regulation](https://stripe.com/docs/billing/migration/strong-customer-authentication), or collecting a mandate for a bank debit payment method. If the PaymentIntent is not confirmed within 23 hours Subscriptions transition to &#x60;status&#x3D;incomplete_expired&#x60;, which is a terminal state.  Use &#x60;error_if_incomplete&#x60; if you want Stripe to return an HTTP 402 status code if a subscription&#39;s first invoice can&#39;t be paid. For example, if a payment method requires 3DS authentication due to SCA regulation and further customer action is needed, this parameter doesn&#39;t create a Subscription and returns an error instead. This was the default behavior for API versions prior to 2019-03-14. See the [changelog](https://stripe.com/docs/upgrades#2019-03-14) to learn more.  &#x60;pending_if_incomplete&#x60; is only used with updates and cannot be passed when creating a Subscription.  Subscriptions with &#x60;collection_method&#x3D;send_invoice&#x60; are automatically activated regardless of the first Invoice status.
  # @option opts [PaymentSettings] :payment_settings
  # @option opts [PostSubscriptionsRequestPendingInvoiceItemInterval] :pending_invoice_item_interval
  # @option opts [String] :promotion_code The promotion code to apply to this subscription. A promotion code applied to a subscription will only affect invoices created for that particular subscription. This field has been deprecated and will be removed in a future API version. Use &#x60;discounts&#x60; instead.
  # @option opts [String] :proration_behavior Determines how to handle [prorations](https://stripe.com/docs/billing/subscriptions/prorations) resulting from the &#x60;billing_cycle_anchor&#x60;. If no value is passed, the default is &#x60;create_prorations&#x60;.
  # @option opts [TransferDataSpecs] :transfer_data
  # @option opts [PostSubscriptionsRequestTrialEnd] :trial_end
  # @option opts [Bool] :trial_from_plan Indicates if a plan&#39;s &#x60;trial_period_days&#x60; should be applied to the subscription. Setting &#x60;trial_end&#x60; per subscription is preferred, and this defaults to &#x60;false&#x60;. Setting this flag to &#x60;true&#x60; together with &#x60;trial_end&#x60; is not allowed. See [Using trial periods on subscriptions](https://stripe.com/docs/billing/subscriptions/trials) to learn more.
  # @option opts [Int32] :trial_period_days Integer representing the number of trial period days before the customer is charged for the first time. This will always overwrite any trials that might apply via a subscribed plan. See [Using trial periods on subscriptions](https://stripe.com/docs/billing/subscriptions/trials) to learn more.
  # @option opts [TrialSettingsConfig] :trial_settings
  # @return [Subscription]
  describe "post_subscriptions test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_subscriptions_subscription_exposed_id
  # &lt;p&gt;Updates an existing subscription to match the specified parameters. When changing prices or quantities, we optionally prorate the price we charge next month to make up for any price changes. To preview how the proration is calculated, use the &lt;a href&#x3D;\&quot;/docs/api/invoices/create_preview\&quot;&gt;create preview&lt;/a&gt; endpoint.&lt;/p&gt;  &lt;p&gt;By default, we prorate subscription changes. For example, if a customer signs up on May 1 for a &lt;currency&gt;100&lt;/currency&gt; price, they’ll be billed &lt;currency&gt;100&lt;/currency&gt; immediately. If on May 15 they switch to a &lt;currency&gt;200&lt;/currency&gt; price, then on June 1 they’ll be billed &lt;currency&gt;250&lt;/currency&gt; (&lt;currency&gt;200&lt;/currency&gt; for a renewal of her subscription, plus a &lt;currency&gt;50&lt;/currency&gt; prorating adjustment for half of the previous month’s &lt;currency&gt;100&lt;/currency&gt; difference). Similarly, a downgrade generates a credit that is applied to the next invoice. We also prorate when you make quantity changes.&lt;/p&gt;  &lt;p&gt;Switching prices does not normally change the billing date or generate an immediate charge unless:&lt;/p&gt;  &lt;ul&gt; &lt;li&gt;The billing interval is changed (for example, from monthly to yearly).&lt;/li&gt; &lt;li&gt;The subscription moves from free to paid.&lt;/li&gt; &lt;li&gt;A trial starts or ends.&lt;/li&gt; &lt;/ul&gt;  &lt;p&gt;In these cases, we apply a credit for the unused time on the previous price, immediately charge the customer using the new price, and reset the billing date. Learn about how &lt;a href&#x3D;\&quot;/billing/subscriptions/upgrade-downgrade#immediate-payment\&quot;&gt;Stripe immediately attempts payment for subscription changes&lt;/a&gt;.&lt;/p&gt;  &lt;p&gt;If you want to charge for an upgrade immediately, pass &lt;code&gt;proration_behavior&lt;/code&gt; as &lt;code&gt;always_invoice&lt;/code&gt; to create prorations, automatically invoice the customer for those proration adjustments, and attempt to collect payment. If you pass &lt;code&gt;create_prorations&lt;/code&gt;, the prorations are created but not automatically invoiced. If you want to bill the customer for the prorations before the subscription’s renewal date, you need to manually &lt;a href&#x3D;\&quot;/docs/api/invoices/create\&quot;&gt;invoice the customer&lt;/a&gt;.&lt;/p&gt;  &lt;p&gt;If you don’t want to prorate, set the &lt;code&gt;proration_behavior&lt;/code&gt; option to &lt;code&gt;none&lt;/code&gt;. With this option, the customer is billed &lt;currency&gt;100&lt;/currency&gt; on May 1 and &lt;currency&gt;200&lt;/currency&gt; on June 1. Similarly, if you set &lt;code&gt;proration_behavior&lt;/code&gt; to &lt;code&gt;none&lt;/code&gt; when switching between different billing intervals (for example, from monthly to yearly), we don’t generate any credits for the old subscription’s unused time. We still reset the billing date and bill immediately for the new subscription.&lt;/p&gt;  &lt;p&gt;Updating the quantity on a subscription many times in an hour may result in &lt;a href&#x3D;\&quot;/docs/rate-limits\&quot;&gt;rate limiting&lt;/a&gt;. If you need to bill for a frequently changing quantity, consider integrating &lt;a href&#x3D;\&quot;/docs/billing/subscriptions/usage-based\&quot;&gt;usage-based billing&lt;/a&gt; instead.&lt;/p&gt;
  # @param subscription_exposed_id
  # @param [Hash] opts the optional parameters
  # @option opts [Array(AddInvoiceItemEntry)] :add_invoice_items A list of prices and quantities that will generate invoice items appended to the next invoice for this subscription. You may pass up to 20 items.
  # @option opts [PostSubscriptionsRequestApplicationFeePercent] :application_fee_percent
  # @option opts [AutomaticTaxConfig] :automatic_tax
  # @option opts [String] :billing_cycle_anchor Either &#x60;now&#x60; or &#x60;unchanged&#x60;. Setting the value to &#x60;now&#x60; resets the subscription&#39;s billing cycle anchor to the current time (in UTC). For more information, see the billing cycle [documentation](https://stripe.com/docs/billing/subscriptions/billing-cycle).
  # @option opts [PostSubscriptionsRequestBillingThresholds] :billing_thresholds
  # @option opts [PostSubscriptionsSubscriptionExposedIdRequestCancelAt] :cancel_at
  # @option opts [Bool] :cancel_at_period_end Indicate whether this subscription should cancel at the end of the current period (&#x60;current_period_end&#x60;). Defaults to &#x60;false&#x60;.
  # @option opts [CancellationDetailsParam] :cancellation_details
  # @option opts [String] :collection_method Either &#x60;charge_automatically&#x60;, or &#x60;send_invoice&#x60;. When charging automatically, Stripe will attempt to pay this subscription at the end of the cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as &#x60;active&#x60;. Defaults to &#x60;charge_automatically&#x60;.
  # @option opts [String] :coupon The ID of the coupon to apply to this subscription. A coupon applied to a subscription will only affect invoices created for that particular subscription. This field has been deprecated and will be removed in a future API version. Use &#x60;discounts&#x60; instead.
  # @option opts [Int32] :days_until_due Number of days a customer has to pay invoices generated by this subscription. Valid only for subscriptions where &#x60;collection_method&#x60; is set to &#x60;send_invoice&#x60;.
  # @option opts [String] :default_payment_method ID of the default payment method for the subscription. It must belong to the customer associated with the subscription. This takes precedence over &#x60;default_source&#x60;. If neither are set, invoices will use the customer&#39;s [invoice_settings.default_payment_method](https://stripe.com/docs/api/customers/object#customer_object-invoice_settings-default_payment_method) or [default_source](https://stripe.com/docs/api/customers/object#customer_object-default_source).
  # @option opts [PostSubscriptionsSubscriptionExposedIdRequestDefaultSource] :default_source
  # @option opts [PostSubscriptionsSubscriptionExposedIdRequestDefaultTaxRates] :default_tax_rates
  # @option opts [PostSubscriptionsSubscriptionExposedIdRequestDescription] :description
  # @option opts [PostSubscriptionsRequestDiscounts] :discounts
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [InvoiceSettingsParam] :invoice_settings
  # @option opts [Array(SubscriptionItemUpdateParams)] :items A list of up to 20 subscription items, each with an attached price.
  # @option opts [PostAccountsRequestMetadata] :metadata
  # @option opts [Bool] :off_session Indicates if a customer is on or off-session while an invoice payment is attempted. Defaults to &#x60;false&#x60; (on-session).
  # @option opts [PostSubscriptionsRequestOnBehalfOf] :on_behalf_of
  # @option opts [PostSubscriptionsSubscriptionExposedIdRequestPauseCollection] :pause_collection
  # @option opts [String] :payment_behavior Use &#x60;allow_incomplete&#x60; to transition the subscription to &#x60;status&#x3D;past_due&#x60; if a payment is required but cannot be paid. This allows you to manage scenarios where additional user actions are needed to pay a subscription&#39;s invoice. For example, SCA regulation may require 3DS authentication to complete payment. See the [SCA Migration Guide](https://stripe.com/docs/billing/migration/strong-customer-authentication) for Billing to learn more. This is the default behavior.  Use &#x60;default_incomplete&#x60; to transition the subscription to &#x60;status&#x3D;past_due&#x60; when payment is required and await explicit confirmation of the invoice&#39;s payment intent. This allows simpler management of scenarios where additional user actions are needed to pay a subscription’s invoice. Such as failed payments, [SCA regulation](https://stripe.com/docs/billing/migration/strong-customer-authentication), or collecting a mandate for a bank debit payment method.  Use &#x60;pending_if_incomplete&#x60; to update the subscription using [pending updates](https://stripe.com/docs/billing/subscriptions/pending-updates). When you use &#x60;pending_if_incomplete&#x60; you can only pass the parameters [supported by pending updates](https://stripe.com/docs/billing/pending-updates-reference#supported-attributes).  Use &#x60;error_if_incomplete&#x60; if you want Stripe to return an HTTP 402 status code if a subscription&#39;s invoice cannot be paid. For example, if a payment method requires 3DS authentication due to SCA regulation and further user action is needed, this parameter does not update the subscription and returns an error instead. This was the default behavior for API versions prior to 2019-03-14. See the [changelog](https://stripe.com/docs/upgrades#2019-03-14) to learn more.
  # @option opts [PaymentSettings] :payment_settings
  # @option opts [PostSubscriptionsRequestPendingInvoiceItemInterval] :pending_invoice_item_interval
  # @option opts [String] :promotion_code The promotion code to apply to this subscription. A promotion code applied to a subscription will only affect invoices created for that particular subscription. This field has been deprecated and will be removed in a future API version. Use &#x60;discounts&#x60; instead.
  # @option opts [String] :proration_behavior Determines how to handle [prorations](https://stripe.com/docs/billing/subscriptions/prorations) when the billing cycle changes (e.g., when switching plans, resetting &#x60;billing_cycle_anchor&#x3D;now&#x60;, or starting a trial), or if an item&#39;s &#x60;quantity&#x60; changes. The default value is &#x60;create_prorations&#x60;.
  # @option opts [Int32] :proration_date If set, the proration will be calculated as though the subscription was updated at the given time. This can be used to apply exactly the same proration that was previewed with [upcoming invoice](https://stripe.com/docs/api#upcoming_invoice) endpoint. It can also be used to implement custom proration logic, such as prorating by day instead of by second, by providing the time that you wish to use for proration calculations.
  # @option opts [PostSubscriptionsSubscriptionExposedIdRequestTransferData] :transfer_data
  # @option opts [PostSubscriptionsSubscriptionExposedIdRequestTrialEnd] :trial_end
  # @option opts [Bool] :trial_from_plan Indicates if a plan&#39;s &#x60;trial_period_days&#x60; should be applied to the subscription. Setting &#x60;trial_end&#x60; per subscription is preferred, and this defaults to &#x60;false&#x60;. Setting this flag to &#x60;true&#x60; together with &#x60;trial_end&#x60; is not allowed. See [Using trial periods on subscriptions](https://stripe.com/docs/billing/subscriptions/trials) to learn more.
  # @option opts [TrialSettingsConfig] :trial_settings
  # @return [Subscription]
  describe "post_subscriptions_subscription_exposed_id test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_subscriptions_subscription_resume
  # &lt;p&gt;Initiates resumption of a paused subscription, optionally resetting the billing cycle anchor and creating prorations. If a resumption invoice is generated, it must be paid or marked uncollectible before the subscription will be unpaused. If payment succeeds the subscription will become &lt;code&gt;active&lt;/code&gt;, and if payment fails the subscription will be &lt;code&gt;past_due&lt;/code&gt;. The resumption invoice will void automatically if not paid by the expiration date.&lt;/p&gt;
  # @param subscription
  # @param [Hash] opts the optional parameters
  # @option opts [String] :billing_cycle_anchor Either &#x60;now&#x60; or &#x60;unchanged&#x60;. Setting the value to &#x60;now&#x60; resets the subscription&#39;s billing cycle anchor to the current time (in UTC). Setting the value to &#x60;unchanged&#x60; advances the subscription&#39;s billing cycle anchor to the period that surrounds the current time. For more information, see the billing cycle [documentation](https://stripe.com/docs/billing/subscriptions/billing-cycle).
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [String] :proration_behavior Determines how to handle [prorations](https://stripe.com/docs/billing/subscriptions/prorations) when the billing cycle changes (e.g., when switching plans, resetting &#x60;billing_cycle_anchor&#x3D;now&#x60;, or starting a trial), or if an item&#39;s &#x60;quantity&#x60; changes. The default value is &#x60;create_prorations&#x60;.
  # @option opts [Int32] :proration_date If set, the proration will be calculated as though the subscription was resumed at the given time. This can be used to apply exactly the same proration that was previewed with [upcoming invoice](https://stripe.com/docs/api#retrieve_customer_invoice) endpoint.
  # @return [Subscription]
  describe "post_subscriptions_subscription_resume test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
