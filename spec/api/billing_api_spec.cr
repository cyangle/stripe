#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"
require "../../src/stripe/api/billing_api"

# Unit tests for Stripe::BillingApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "BillingApi" do
  describe "test an instance of BillingApi" do
    it "should create an instance of BillingApi" do
      api_instance = Stripe::BillingApi.new
      api_instance.should be_a(Stripe::BillingApi)
    end
  end

  # unit tests for get_billing_meters
  # &lt;p&gt;Retrieve a list of billing meters.&lt;/p&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ending_before A cursor for use in pagination. &#x60;ending_before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with &#x60;obj_bar&#x60;, your subsequent call can include &#x60;ending_before&#x3D;obj_bar&#x60; in order to fetch the previous page of the list.
  # @option opts [String] :starting_after A cursor for use in pagination. &#x60;starting_after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with &#x60;obj_foo&#x60;, your subsequent call can include &#x60;starting_after&#x3D;obj_foo&#x60; in order to fetch the next page of the list.
  # @option opts [Int32] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  # @option opts [String] :status Filter results to only include meters with the given status.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [BillingMeterResourceBillingMeterList]
  describe "get_billing_meters test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_billing_meters_id
  # &lt;p&gt;Retrieves a billing meter given an ID&lt;/p&gt;
  # @param id Unique identifier for the object.
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [BillingMeter]
  describe "get_billing_meters_id test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_billing_meters_id_event_summaries
  # &lt;p&gt;Retrieve a list of billing meter event summaries.&lt;/p&gt;
  # @param customer The customer for which to fetch event summaries.
  # @param start_time The timestamp from when to start aggregating meter events (inclusive). Must be aligned with minute boundaries.
  # @param end_time The timestamp from when to stop aggregating meter events (exclusive). Must be aligned with minute boundaries.
  # @param id Unique identifier for the object.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ending_before A cursor for use in pagination. &#x60;ending_before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with &#x60;obj_bar&#x60;, your subsequent call can include &#x60;ending_before&#x3D;obj_bar&#x60; in order to fetch the previous page of the list.
  # @option opts [String] :starting_after A cursor for use in pagination. &#x60;starting_after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with &#x60;obj_foo&#x60;, your subsequent call can include &#x60;starting_after&#x3D;obj_foo&#x60; in order to fetch the next page of the list.
  # @option opts [Int32] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  # @option opts [String] :value_grouping_window Specifies what granularity to use when generating event summaries. If not specified, a single event summary would be returned for the specified time range. For hourly granularity, start and end times must align with hour boundaries (e.g., 00:00, 01:00, ..., 23:00). For daily granularity, start and end times must align with UTC day boundaries (00:00 UTC).
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [BillingMeterResourceBillingMeterEventSummaryList]
  describe "get_billing_meters_id_event_summaries test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_billing_meter_event_adjustments
  # &lt;p&gt;Creates a billing meter event adjustment&lt;/p&gt;
  # @param event_name The name of the meter event. Corresponds with the &#x60;event_name&#x60; field on a meter.
  # @param _type Specifies whether to cancel a single event or a range of events for a time period. Time period cancellation is not supported yet.
  # @param [Hash] opts the optional parameters
  # @option opts [EventAdjustmentCancelSettingsParam] :cancel
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [BillingMeterEventAdjustment]
  describe "post_billing_meter_event_adjustments test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_billing_meter_events
  # &lt;p&gt;Creates a billing meter event&lt;/p&gt;
  # @param event_name The name of the meter event. Corresponds with the &#x60;event_name&#x60; field on a meter.
  # @param payload
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [String] :identifier A unique identifier for the event. If not provided, one will be generated. We recommend using a globally unique identifier for this. We&#39;ll enforce uniqueness within a rolling 24 hour period.
  # @option opts [Int32] :timestamp The time of the event. Measured in seconds since the Unix epoch. Must be within the past 35 calendar days or up to 5 minutes in the future. Defaults to current timestamp if not specified.
  # @return [BillingMeterEvent]
  describe "post_billing_meter_events test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_billing_meters
  # &lt;p&gt;Creates a billing meter&lt;/p&gt;
  # @param default_aggregation
  # @param display_name The meter&#39;s name.
  # @param event_name The name of the meter event to record usage for. Corresponds with the &#x60;event_name&#x60; field on meter events.
  # @param [Hash] opts the optional parameters
  # @option opts [CustomerMappingParam] :customer_mapping
  # @option opts [String] :event_time_window The time window to pre-aggregate meter events for, if any.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [MeterValueSettingsParam] :value_settings
  # @return [BillingMeter]
  describe "post_billing_meters test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_billing_meters_id
  # &lt;p&gt;Updates a billing meter&lt;/p&gt;
  # @param id Unique identifier for the object.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :display_name The meter&#39;s name.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [BillingMeter]
  describe "post_billing_meters_id test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_billing_meters_id_deactivate
  # &lt;p&gt;Deactivates a billing meter&lt;/p&gt;
  # @param id Unique identifier for the object.
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [BillingMeter]
  describe "post_billing_meters_id_deactivate test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_billing_meters_id_reactivate
  # &lt;p&gt;Reactivates a billing meter&lt;/p&gt;
  # @param id Unique identifier for the object.
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [BillingMeter]
  describe "post_billing_meters_id_reactivate test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end