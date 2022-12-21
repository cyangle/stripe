#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-08-01
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::WebhookEndpointsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "WebhookEndpointsApi" do
  describe "test an instance of WebhookEndpointsApi" do
    it "should create an instance of WebhookEndpointsApi" do
      api_instance = Stripe::WebhookEndpointsApi.new
      api_instance.should be_a(Stripe::WebhookEndpointsApi)
    end
  end

  # unit tests for delete_webhook_endpoints_webhook_endpoint
  # &lt;p&gt;You can also delete webhook endpoints via the &lt;a href&#x3D;\&quot;https://dashboard.stripe.com/account/webhooks\&quot;&gt;webhook endpoint management&lt;/a&gt; page of the Stripe dashboard.&lt;/p&gt;
  # @param webhook_endpoint
  # @param [Hash] opts the optional parameters
  # @return [DeletedWebhookEndpoint]
  describe "delete_webhook_endpoints_webhook_endpoint test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_webhook_endpoints
  # &lt;p&gt;Returns a list of your webhook endpoints.&lt;/p&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ending_before A cursor for use in pagination. &#x60;ending_before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with &#x60;obj_bar&#x60;, your subsequent call can include &#x60;ending_before&#x3D;obj_bar&#x60; in order to fetch the previous page of the list.
  # @option opts [String] :starting_after A cursor for use in pagination. &#x60;starting_after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with &#x60;obj_foo&#x60;, your subsequent call can include &#x60;starting_after&#x3D;obj_foo&#x60; in order to fetch the next page of the list.
  # @option opts [Int32] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [NotificationWebhookEndpointList]
  describe "get_webhook_endpoints test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_webhook_endpoints_webhook_endpoint
  # &lt;p&gt;Retrieves the webhook endpoint with the given ID.&lt;/p&gt;
  # @param webhook_endpoint
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [WebhookEndpoint]
  describe "get_webhook_endpoints_webhook_endpoint test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_webhook_endpoints
  # &lt;p&gt;A webhook endpoint must have a &lt;code&gt;url&lt;/code&gt; and a list of &lt;code&gt;enabled_events&lt;/code&gt;. You may optionally specify the Boolean &lt;code&gt;connect&lt;/code&gt; parameter. If set to true, then a Connect webhook endpoint that notifies the specified &lt;code&gt;url&lt;/code&gt; about events from all connected accounts is created; otherwise an account webhook endpoint that notifies the specified &lt;code&gt;url&lt;/code&gt; only about events from your account is created. You can also create webhook endpoints in the &lt;a href&#x3D;\&quot;https://dashboard.stripe.com/account/webhooks\&quot;&gt;webhooks settings&lt;/a&gt; section of the Dashboard.&lt;/p&gt;
  # @param post_webhook_endpoints_request
  # @param [Hash] opts the optional parameters
  # @return [WebhookEndpoint]
  describe "post_webhook_endpoints test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_webhook_endpoints_webhook_endpoint
  # &lt;p&gt;Updates the webhook endpoint. You may edit the &lt;code&gt;url&lt;/code&gt;, the list of &lt;code&gt;enabled_events&lt;/code&gt;, and the status of your endpoint.&lt;/p&gt;
  # @param webhook_endpoint
  # @param [Hash] opts the optional parameters
  # @option opts [PostWebhookEndpointsWebhookEndpointRequest] :post_webhook_endpoints_webhook_endpoint_request
  # @return [WebhookEndpoint]
  describe "post_webhook_endpoints_webhook_endpoint test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end