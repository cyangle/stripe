#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::SubscriptionSchedulesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "SubscriptionSchedulesApi" do
  describe "test an instance of SubscriptionSchedulesApi" do
    it "should create an instance of SubscriptionSchedulesApi" do
      api_instance = Stripe::SubscriptionSchedulesApi.new
      api_instance.should be_a(Stripe::SubscriptionSchedulesApi)
    end
  end

  # unit tests for get_subscription_schedules
  # &lt;p&gt;Retrieves the list of your subscription schedules.&lt;/p&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ending_before A cursor for use in pagination. &#x60;ending_before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with &#x60;obj_bar&#x60;, your subsequent call can include &#x60;ending_before&#x3D;obj_bar&#x60; in order to fetch the previous page of the list.
  # @option opts [String] :starting_after A cursor for use in pagination. &#x60;starting_after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with &#x60;obj_foo&#x60;, your subsequent call can include &#x60;starting_after&#x3D;obj_foo&#x60; in order to fetch the next page of the list.
  # @option opts [Int32] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  # @option opts [String] :customer Only return subscription schedules for the given customer.
  # @option opts [GetAccountsCreatedParameter] :completed_at Only return subscription schedules that completed during the given date interval.
  # @option opts [Bool] :scheduled Only return subscription schedules that have not started yet.
  # @option opts [GetAccountsCreatedParameter] :canceled_at Only return subscription schedules that were created canceled the given date interval.
  # @option opts [GetAccountsCreatedParameter] :created Only return subscription schedules that were created during the given date interval.
  # @option opts [GetAccountsCreatedParameter] :released_at Only return subscription schedules that were released during the given date interval.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [SubscriptionSchedulesResourceScheduleList]
  describe "get_subscription_schedules test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_subscription_schedules_schedule
  # &lt;p&gt;Retrieves the details of an existing subscription schedule. You only need to supply the unique subscription schedule identifier that was returned upon subscription schedule creation.&lt;/p&gt;
  # @param schedule
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [SubscriptionSchedule]
  describe "get_subscription_schedules_schedule test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_subscription_schedules
  # &lt;p&gt;Creates a new subscription schedule object. Each customer can have up to 500 active or scheduled subscriptions.&lt;/p&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [PostSubscriptionSchedulesRequest] :post_subscription_schedules_request
  # @return [SubscriptionSchedule]
  describe "post_subscription_schedules test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_subscription_schedules_schedule
  # &lt;p&gt;Updates an existing subscription schedule.&lt;/p&gt;
  # @param schedule
  # @param [Hash] opts the optional parameters
  # @option opts [PostSubscriptionSchedulesScheduleRequest] :post_subscription_schedules_schedule_request
  # @return [SubscriptionSchedule]
  describe "post_subscription_schedules_schedule test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_subscription_schedules_schedule_cancel
  # &lt;p&gt;Cancels a subscription schedule and its associated subscription immediately (if the subscription schedule has an active subscription). A subscription schedule can only be canceled if its status is &lt;code&gt;not_started&lt;/code&gt; or &lt;code&gt;active&lt;/code&gt;.&lt;/p&gt;
  # @param schedule
  # @param [Hash] opts the optional parameters
  # @option opts [PostSubscriptionSchedulesScheduleCancelRequest] :post_subscription_schedules_schedule_cancel_request
  # @return [SubscriptionSchedule]
  describe "post_subscription_schedules_schedule_cancel test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_subscription_schedules_schedule_release
  # &lt;p&gt;Releases the subscription schedule immediately, which will stop scheduling of its phases, but leave any existing subscription in place. A schedule can only be released if its status is &lt;code&gt;not_started&lt;/code&gt; or &lt;code&gt;active&lt;/code&gt;. If the subscription schedule is currently associated with a subscription, releasing it will remove its &lt;code&gt;subscription&lt;/code&gt; property and set the subscription’s ID to the &lt;code&gt;released_subscription&lt;/code&gt; property.&lt;/p&gt;
  # @param schedule
  # @param [Hash] opts the optional parameters
  # @option opts [PostSubscriptionSchedulesScheduleReleaseRequest] :post_subscription_schedules_schedule_release_request
  # @return [SubscriptionSchedule]
  describe "post_subscription_schedules_schedule_release test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
