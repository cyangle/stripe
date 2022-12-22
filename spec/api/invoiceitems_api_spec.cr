#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::InvoiceitemsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "InvoiceitemsApi" do
  describe "test an instance of InvoiceitemsApi" do
    it "should create an instance of InvoiceitemsApi" do
      api_instance = Stripe::InvoiceitemsApi.new
      api_instance.should be_a(Stripe::InvoiceitemsApi)
    end
  end

  # unit tests for delete_invoiceitems_invoiceitem
  # &lt;p&gt;Deletes an invoice item, removing it from an invoice. Deleting invoice items is only possible when they’re not attached to invoices, or if it’s attached to a draft invoice.&lt;/p&gt;
  # @param invoiceitem
  # @param [Hash] opts the optional parameters
  # @return [DeletedInvoiceitem]
  describe "delete_invoiceitems_invoiceitem test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_invoiceitems
  # &lt;p&gt;Returns a list of your invoice items. Invoice items are returned sorted by creation date, with the most recently created invoice items appearing first.&lt;/p&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ending_before A cursor for use in pagination. &#x60;ending_before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with &#x60;obj_bar&#x60;, your subsequent call can include &#x60;ending_before&#x3D;obj_bar&#x60; in order to fetch the previous page of the list.
  # @option opts [String] :starting_after A cursor for use in pagination. &#x60;starting_after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with &#x60;obj_foo&#x60;, your subsequent call can include &#x60;starting_after&#x3D;obj_foo&#x60; in order to fetch the next page of the list.
  # @option opts [Int32] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  # @option opts [String] :invoice Only return invoice items belonging to this invoice. If none is provided, all invoice items will be returned. If specifying an invoice, no customer identifier is needed.
  # @option opts [Bool] :pending Set to &#x60;true&#x60; to only show pending invoice items, which are not yet attached to any invoices. Set to &#x60;false&#x60; to only show invoice items already attached to invoices. If unspecified, no filter is applied.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [String] :customer The identifier of the customer whose invoice items to return. If none is provided, all invoice items will be returned.
  # @option opts [GetAccountsCreatedParameter] :created
  # @return [InvoicesItemsList]
  describe "get_invoiceitems test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_invoiceitems_invoiceitem
  # &lt;p&gt;Retrieves the invoice item with the given ID.&lt;/p&gt;
  # @param invoiceitem
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [Invoiceitem]
  describe "get_invoiceitems_invoiceitem test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_invoiceitems
  # &lt;p&gt;Creates an item to be added to a draft invoice (up to 250 items per invoice). If no invoice is specified, the item will be on the next invoice created for the customer specified.&lt;/p&gt;
  # @param post_invoiceitems_request
  # @param [Hash] opts the optional parameters
  # @return [Invoiceitem]
  describe "post_invoiceitems test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_invoiceitems_invoiceitem
  # &lt;p&gt;Updates the amount or description of an invoice item on an upcoming invoice. Updating an invoice item is only possible before the invoice it’s attached to is closed.&lt;/p&gt;
  # @param invoiceitem
  # @param [Hash] opts the optional parameters
  # @option opts [PostInvoiceitemsInvoiceitemRequest] :post_invoiceitems_invoiceitem_request
  # @return [Invoiceitem]
  describe "post_invoiceitems_invoiceitem test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
