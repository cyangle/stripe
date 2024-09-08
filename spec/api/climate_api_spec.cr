#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"
require "../../src/stripe/api/climate_api"

# Unit tests for Stripe::ClimateApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "ClimateApi" do
  describe "test an instance of ClimateApi" do
    it "should create an instance of ClimateApi" do
      api_instance = Stripe::ClimateApi.new
      api_instance.should be_a(Stripe::ClimateApi)
    end
  end

  # unit tests for get_climate_orders
  # &lt;p&gt;Lists all Climate order objects. The orders are returned sorted by creation date, with the most recently created orders appearing first.&lt;/p&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ending_before A cursor for use in pagination. &#x60;ending_before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with &#x60;obj_bar&#x60;, your subsequent call can include &#x60;ending_before&#x3D;obj_bar&#x60; in order to fetch the previous page of the list.
  # @option opts [String] :starting_after A cursor for use in pagination. &#x60;starting_after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with &#x60;obj_foo&#x60;, your subsequent call can include &#x60;starting_after&#x3D;obj_foo&#x60; in order to fetch the next page of the list.
  # @option opts [Int32] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [ClimateRemovalsOrdersList]
  describe "get_climate_orders test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_climate_orders_order
  # &lt;p&gt;Retrieves the details of a Climate order object with the given ID.&lt;/p&gt;
  # @param order Unique identifier of the order.
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [ClimateOrder]
  describe "get_climate_orders_order test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_climate_products
  # &lt;p&gt;Lists all available Climate product objects.&lt;/p&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ending_before A cursor for use in pagination. &#x60;ending_before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with &#x60;obj_bar&#x60;, your subsequent call can include &#x60;ending_before&#x3D;obj_bar&#x60; in order to fetch the previous page of the list.
  # @option opts [String] :starting_after A cursor for use in pagination. &#x60;starting_after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with &#x60;obj_foo&#x60;, your subsequent call can include &#x60;starting_after&#x3D;obj_foo&#x60; in order to fetch the next page of the list.
  # @option opts [Int32] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [ClimateRemovalsProductsList]
  describe "get_climate_products test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_climate_products_product
  # &lt;p&gt;Retrieves the details of a Climate product with the given ID.&lt;/p&gt;
  # @param product
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [ClimateProduct]
  describe "get_climate_products_product test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_climate_suppliers
  # &lt;p&gt;Lists all available Climate supplier objects.&lt;/p&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ending_before A cursor for use in pagination. &#x60;ending_before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with &#x60;obj_bar&#x60;, your subsequent call can include &#x60;ending_before&#x3D;obj_bar&#x60; in order to fetch the previous page of the list.
  # @option opts [String] :starting_after A cursor for use in pagination. &#x60;starting_after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with &#x60;obj_foo&#x60;, your subsequent call can include &#x60;starting_after&#x3D;obj_foo&#x60; in order to fetch the next page of the list.
  # @option opts [Int32] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [ClimateRemovalsSuppliersList]
  describe "get_climate_suppliers test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_climate_suppliers_supplier
  # &lt;p&gt;Retrieves a Climate supplier object.&lt;/p&gt;
  # @param supplier
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [ClimateSupplier]
  describe "get_climate_suppliers_supplier test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_climate_orders
  # &lt;p&gt;Creates a Climate order object for a given Climate product. The order will be processed immediately after creation and payment will be deducted your Stripe balance.&lt;/p&gt;
  # @param product Unique identifier of the Climate product.
  # @param [Hash] opts the optional parameters
  # @option opts [Int32] :amount Requested amount of carbon removal units. Either this or &#x60;metric_tons&#x60; must be specified.
  # @option opts [BeneficiaryParams] :beneficiary
  # @option opts [String] :currency Request currency for the order as a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a supported [settlement currency for your account](https://stripe.com/docs/currencies). If omitted, the account&#39;s default currency will be used.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [Hash(String, String)] :metadata
  # @option opts [BigDecimal] :metric_tons Requested number of tons for the order. Either this or &#x60;amount&#x60; must be specified.
  # @return [ClimateOrder]
  describe "post_climate_orders test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_climate_orders_order
  # &lt;p&gt;Updates the specified order by setting the values of the parameters passed.&lt;/p&gt;
  # @param order Unique identifier of the order.
  # @param [Hash] opts the optional parameters
  # @option opts [PostClimateOrdersOrderRequestBeneficiary] :beneficiary
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [Hash(String, String)] :metadata
  # @return [ClimateOrder]
  describe "post_climate_orders_order test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_climate_orders_order_cancel
  # &lt;p&gt;Cancels a Climate order. You can cancel an order within 24 hours of creation. Stripe refunds the reservation &lt;code&gt;amount_subtotal&lt;/code&gt;, but not the &lt;code&gt;amount_fees&lt;/code&gt; for user-triggered cancellations. Frontier might cancel reservations if suppliers fail to deliver. If Frontier cancels the reservation, Stripe provides 90 days advance notice and refunds the &lt;code&gt;amount_total&lt;/code&gt;.&lt;/p&gt;
  # @param order Unique identifier of the order.
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [ClimateOrder]
  describe "post_climate_orders_order_cancel test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end