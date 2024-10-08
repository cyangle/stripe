#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"
require "../../src/stripe/api/tax_api"

# Unit tests for Stripe::TaxApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "TaxApi" do
  describe "test an instance of TaxApi" do
    it "should create an instance of TaxApi" do
      api_instance = Stripe::TaxApi.new
      api_instance.should be_a(Stripe::TaxApi)
    end
  end

  # unit tests for get_tax_calculations_calculation_line_items
  # &lt;p&gt;Retrieves the line items of a tax calculation as a collection, if the calculation hasn’t expired.&lt;/p&gt;
  # @param calculation
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ending_before A cursor for use in pagination. &#x60;ending_before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with &#x60;obj_bar&#x60;, your subsequent call can include &#x60;ending_before&#x3D;obj_bar&#x60; in order to fetch the previous page of the list.
  # @option opts [String] :starting_after A cursor for use in pagination. &#x60;starting_after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with &#x60;obj_foo&#x60;, your subsequent call can include &#x60;starting_after&#x3D;obj_foo&#x60; in order to fetch the next page of the list.
  # @option opts [Int32] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [TaxProductResourceTaxCalculationLineItemList]
  describe "get_tax_calculations_calculation_line_items test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_tax_registrations
  # &lt;p&gt;Returns a list of Tax &lt;code&gt;Registration&lt;/code&gt; objects.&lt;/p&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ending_before A cursor for use in pagination. &#x60;ending_before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with &#x60;obj_bar&#x60;, your subsequent call can include &#x60;ending_before&#x3D;obj_bar&#x60; in order to fetch the previous page of the list.
  # @option opts [String] :starting_after A cursor for use in pagination. &#x60;starting_after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with &#x60;obj_foo&#x60;, your subsequent call can include &#x60;starting_after&#x3D;obj_foo&#x60; in order to fetch the next page of the list.
  # @option opts [Int32] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [String] :status The status of the Tax Registration.
  # @return [TaxProductRegistrationsResourceTaxRegistrationList]
  describe "get_tax_registrations test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_tax_registrations_id
  # &lt;p&gt;Returns a Tax &lt;code&gt;Registration&lt;/code&gt; object.&lt;/p&gt;
  # @param id
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [TaxRegistration]
  describe "get_tax_registrations_id test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_tax_settings
  # &lt;p&gt;Retrieves Tax &lt;code&gt;Settings&lt;/code&gt; for a merchant.&lt;/p&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [TaxSettings]
  describe "get_tax_settings test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_tax_transactions_transaction
  # &lt;p&gt;Retrieves a Tax &lt;code&gt;Transaction&lt;/code&gt; object.&lt;/p&gt;
  # @param transaction
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [TaxTransaction]
  describe "get_tax_transactions_transaction test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_tax_transactions_transaction_line_items
  # &lt;p&gt;Retrieves the line items of a committed standalone transaction as a collection.&lt;/p&gt;
  # @param transaction
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ending_before A cursor for use in pagination. &#x60;ending_before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with &#x60;obj_bar&#x60;, your subsequent call can include &#x60;ending_before&#x3D;obj_bar&#x60; in order to fetch the previous page of the list.
  # @option opts [String] :starting_after A cursor for use in pagination. &#x60;starting_after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with &#x60;obj_foo&#x60;, your subsequent call can include &#x60;starting_after&#x3D;obj_foo&#x60; in order to fetch the next page of the list.
  # @option opts [Int32] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [TaxProductResourceTaxTransactionLineItemList]
  describe "get_tax_transactions_transaction_line_items test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_tax_calculations
  # &lt;p&gt;Calculates tax based on the input and returns a Tax &lt;code&gt;Calculation&lt;/code&gt; object.&lt;/p&gt;
  # @param currency Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  # @param line_items A list of items the customer is purchasing.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :customer The ID of an existing customer to use for this calculation. If provided, the customer&#39;s address and tax IDs are copied to &#x60;customer_details&#x60;.
  # @option opts [CustomerDetails] :customer_details
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [ShipFromDetails] :ship_from_details
  # @option opts [ShippingCost] :shipping_cost
  # @option opts [Int32] :tax_date Timestamp of date at which the tax rules and rates in effect applies for the calculation. Measured in seconds since the Unix epoch. Can be up to 48 hours in the past, and up to 48 hours in the future.
  # @return [TaxCalculation]
  describe "post_tax_calculations test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_tax_registrations
  # &lt;p&gt;Creates a new Tax &lt;code&gt;Registration&lt;/code&gt; object.&lt;/p&gt;
  # @param active_from
  # @param country Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
  # @param country_options
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [Int32] :expires_at If set, the Tax Registration stops being active at this time. If not set, the Tax Registration will be active indefinitely. Timestamp measured in seconds since the Unix epoch.
  # @return [TaxRegistration]
  describe "post_tax_registrations test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_tax_registrations_id
  # &lt;p&gt;Updates an existing Tax &lt;code&gt;Registration&lt;/code&gt; object.&lt;/p&gt;  &lt;p&gt;A registration cannot be deleted after it has been created. If you wish to end a registration you may do so by setting &lt;code&gt;expires_at&lt;/code&gt;.&lt;/p&gt;
  # @param id
  # @param [Hash] opts the optional parameters
  # @option opts [PostTaxRegistrationsIdRequestActiveFrom] :active_from
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [PostTaxRegistrationsIdRequestExpiresAt] :expires_at
  # @return [TaxRegistration]
  describe "post_tax_registrations_id test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_tax_settings
  # &lt;p&gt;Updates Tax &lt;code&gt;Settings&lt;/code&gt; parameters used in tax calculations. All parameters are editable but none can be removed once set.&lt;/p&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [DefaultsParam] :defaults
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [HeadOfficeParam] :head_office
  # @return [TaxSettings]
  describe "post_tax_settings test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_tax_transactions_create_from_calculation
  # &lt;p&gt;Creates a Tax Transaction from a calculation, if that calculation hasn’t expired. Calculations expire after 90 days.&lt;/p&gt;
  # @param calculation Tax Calculation ID to be used as input when creating the transaction.
  # @param reference A custom order or sale identifier, such as &#39;myOrder_123&#39;. Must be unique across all transactions, including reversals.
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [Hash(String, String)] :metadata
  # @option opts [Int32] :posted_at The Unix timestamp representing when the tax liability is assumed or reduced, which determines the liability posting period and handling in tax liability reports. The timestamp must fall within the &#x60;tax_date&#x60; and the current time, unless the &#x60;tax_date&#x60; is scheduled in advance. Defaults to the current time.
  # @return [TaxTransaction]
  describe "post_tax_transactions_create_from_calculation test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_tax_transactions_create_reversal
  # &lt;p&gt;Partially or fully reverses a previously created &lt;code&gt;Transaction&lt;/code&gt;.&lt;/p&gt;
  # @param mode If &#x60;partial&#x60;, the provided line item or shipping cost amounts are reversed. If &#x60;full&#x60;, the original transaction is fully reversed.
  # @param original_transaction The ID of the Transaction to partially or fully reverse.
  # @param reference A custom identifier for this reversal, such as &#x60;myOrder_123-refund_1&#x60;, which must be unique across all transactions. The reference helps identify this reversal transaction in exported [tax reports](https://stripe.com/docs/tax/reports).
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [Int32] :flat_amount A flat amount to reverse across the entire transaction, in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) in negative. This value represents the total amount to refund from the transaction, including taxes.
  # @option opts [Array(TransactionLineItemReversal)] :line_items The line item amounts to reverse.
  # @option opts [Hash(String, String)] :metadata
  # @option opts [TransactionShippingCostReversal] :shipping_cost
  # @return [TaxTransaction]
  describe "post_tax_transactions_create_reversal test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
