#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::RadarApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "RadarApi" do
  describe "test an instance of RadarApi" do
    it "should create an instance of RadarApi" do
      api_instance = Stripe::RadarApi.new
      api_instance.should be_a(Stripe::RadarApi)
    end
  end

  # unit tests for delete_radar_value_list_items_item
  # &lt;p&gt;Deletes a &lt;code&gt;ValueListItem&lt;/code&gt; object, removing it from its parent value list.&lt;/p&gt;
  # @param item
  # @param [Hash] opts the optional parameters
  # @return [DeletedRadarValueListItem]
  describe "delete_radar_value_list_items_item test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for delete_radar_value_lists_value_list
  # &lt;p&gt;Deletes a &lt;code&gt;ValueList&lt;/code&gt; object, also deleting any items contained within the value list. To be deleted, a value list must not be referenced in any rules.&lt;/p&gt;
  # @param value_list
  # @param [Hash] opts the optional parameters
  # @return [DeletedRadarValueList]
  describe "delete_radar_value_lists_value_list test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_radar_early_fraud_warnings
  # &lt;p&gt;Returns a list of early fraud warnings.&lt;/p&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ending_before A cursor for use in pagination. &#x60;ending_before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with &#x60;obj_bar&#x60;, your subsequent call can include &#x60;ending_before&#x3D;obj_bar&#x60; in order to fetch the previous page of the list.
  # @option opts [String] :starting_after A cursor for use in pagination. &#x60;starting_after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with &#x60;obj_foo&#x60;, your subsequent call can include &#x60;starting_after&#x3D;obj_foo&#x60; in order to fetch the next page of the list.
  # @option opts [Int32] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  # @option opts [String] :payment_intent Only return early fraud warnings for charges that were created by the PaymentIntent specified by this PaymentIntent ID.
  # @option opts [String] :charge Only return early fraud warnings for the charge specified by this charge ID.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [RadarEarlyFraudWarningList]
  describe "get_radar_early_fraud_warnings test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_radar_early_fraud_warnings_early_fraud_warning
  # &lt;p&gt;Retrieves the details of an early fraud warning that has previously been created. &lt;/p&gt;  &lt;p&gt;Please refer to the &lt;a href&#x3D;\&quot;#early_fraud_warning_object\&quot;&gt;early fraud warning&lt;/a&gt; object reference for more details.&lt;/p&gt;
  # @param early_fraud_warning
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [RadarEarlyFraudWarning]
  describe "get_radar_early_fraud_warnings_early_fraud_warning test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_radar_value_list_items
  # &lt;p&gt;Returns a list of &lt;code&gt;ValueListItem&lt;/code&gt; objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.&lt;/p&gt;
  # @param value_list Identifier for the parent value list this item belongs to.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ending_before A cursor for use in pagination. &#x60;ending_before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with &#x60;obj_bar&#x60;, your subsequent call can include &#x60;ending_before&#x3D;obj_bar&#x60; in order to fetch the previous page of the list.
  # @option opts [String] :starting_after A cursor for use in pagination. &#x60;starting_after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with &#x60;obj_foo&#x60;, your subsequent call can include &#x60;starting_after&#x3D;obj_foo&#x60; in order to fetch the next page of the list.
  # @option opts [Int32] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  # @option opts [String] :value Return items belonging to the parent list whose value matches the specified value (using an \&quot;is like\&quot; match).
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [GetAccountsCreatedParameter] :created
  # @return [RadarListListItemList]
  describe "get_radar_value_list_items test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_radar_value_list_items_item
  # &lt;p&gt;Retrieves a &lt;code&gt;ValueListItem&lt;/code&gt; object.&lt;/p&gt;
  # @param item
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [RadarValueListItem]
  describe "get_radar_value_list_items_item test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_radar_value_lists
  # &lt;p&gt;Returns a list of &lt;code&gt;ValueList&lt;/code&gt; objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.&lt;/p&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ending_before A cursor for use in pagination. &#x60;ending_before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with &#x60;obj_bar&#x60;, your subsequent call can include &#x60;ending_before&#x3D;obj_bar&#x60; in order to fetch the previous page of the list.
  # @option opts [String] :starting_after A cursor for use in pagination. &#x60;starting_after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with &#x60;obj_foo&#x60;, your subsequent call can include &#x60;starting_after&#x3D;obj_foo&#x60; in order to fetch the next page of the list.
  # @option opts [Int32] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  # @option opts [String] :contains A value contained within a value list - returns all value lists containing this value.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [String] :_alias The alias used to reference the value list when writing rules.
  # @option opts [GetAccountsCreatedParameter] :created
  # @return [RadarListListList]
  describe "get_radar_value_lists test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_radar_value_lists_value_list
  # &lt;p&gt;Retrieves a &lt;code&gt;ValueList&lt;/code&gt; object.&lt;/p&gt;
  # @param value_list
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [RadarValueList]
  describe "get_radar_value_lists_value_list test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_radar_value_list_items
  # &lt;p&gt;Creates a new &lt;code&gt;ValueListItem&lt;/code&gt; object, which is added to the specified parent value list.&lt;/p&gt;
  # @param post_radar_value_list_items_request
  # @param [Hash] opts the optional parameters
  # @return [RadarValueListItem]
  describe "post_radar_value_list_items test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_radar_value_lists
  # &lt;p&gt;Creates a new &lt;code&gt;ValueList&lt;/code&gt; object, which can then be referenced in rules.&lt;/p&gt;
  # @param post_radar_value_lists_request
  # @param [Hash] opts the optional parameters
  # @return [RadarValueList]
  describe "post_radar_value_lists test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_radar_value_lists_value_list
  # &lt;p&gt;Updates a &lt;code&gt;ValueList&lt;/code&gt; object by setting the values of the parameters passed. Any parameters not provided will be left unchanged. Note that &lt;code&gt;item_type&lt;/code&gt; is immutable.&lt;/p&gt;
  # @param value_list
  # @param [Hash] opts the optional parameters
  # @option opts [PostRadarValueListsValueListRequest] :post_radar_value_lists_value_list_request
  # @return [RadarValueList]
  describe "post_radar_value_lists_value_list test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
