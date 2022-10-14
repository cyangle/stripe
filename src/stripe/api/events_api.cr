#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-08-01
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "uri"
require "../api_client"

module Stripe
  class EventsApi
    property api_client : ApiClient

    delegate client_side_validation, debugging, to: @api_client.config

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # <p>List events, going back up to 30 days. Each event data is rendered according to Stripe API version at its creation time, specified in <a href=\"/docs/api/events/object\">event object</a> <code>api_version</code> attribute (not according to your current Stripe API version or <code>Stripe-Version</code> header).</p>
    # @optional @param ending_before [String?] A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
    # @optional @param starting_after [String?] A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
    # @optional @param limit [Int32?] A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    # @optional @param _type [String?] A string containing a specific event name, or group of events using * as a wildcard. The list will be filtered to include only events with a matching event property.
    # @optional @param types [Array(Array(String))?] An array of up to 20 strings containing specific event names. The list will be filtered to include only events with a matching event property. You may pass either `type` or `types`, but not both.
    # @optional @param delivery_success [Bool?] Filter events by whether all webhooks were successfully delivered. If false, events which are still pending or have failed all delivery attempts to a webhook endpoint will be returned.
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @optional @param created [Stripe::GetAccountsCreatedParameter?]
    # @return [Stripe::NotificationEventList]
    def get_events(
      *,
      ending_before : String? = nil,
      starting_after : String? = nil,
      limit : Int64? = nil,
      _type : String? = nil,
      types : Array(Array(String))? = nil,
      delivery_success : Bool? = nil,
      expand : Array(Array(String))? = nil,
      created : Stripe::GetAccountsCreatedParameter? = nil
    ) : Stripe::NotificationEventList
      data, _status_code, _headers = get_events_with_http_info(ending_before: ending_before, starting_after: starting_after, limit: limit, _type: _type, types: types, delivery_success: delivery_success, expand: expand, created: created)
      data
    end

    # &lt;p&gt;List events, going back up to 30 days. Each event data is rendered according to Stripe API version at its creation time, specified in &lt;a href&#x3D;\&quot;/docs/api/events/object\&quot;&gt;event object&lt;/a&gt; &lt;code&gt;api_version&lt;/code&gt; attribute (not according to your current Stripe API version or &lt;code&gt;Stripe-Version&lt;/code&gt; header).&lt;/p&gt;
    # @optional @param ending_before [String?] A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
    # @optional @param starting_after [String?] A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
    # @optional @param limit [Int32?] A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    # @optional @param _type [String?] A string containing a specific event name, or group of events using * as a wildcard. The list will be filtered to include only events with a matching event property.
    # @optional @param types [Array(Array(String))?] An array of up to 20 strings containing specific event names. The list will be filtered to include only events with a matching event property. You may pass either `type` or `types`, but not both.
    # @optional @param delivery_success [Bool?] Filter events by whether all webhooks were successfully delivered. If false, events which are still pending or have failed all delivery attempts to a webhook endpoint will be returned.
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @optional @param created [Stripe::GetAccountsCreatedParameter?]
    # @return [Tuple(Stripe::NotificationEventList, Integer, Hash)] Stripe::NotificationEventList, response status code and response headers
    def get_events_with_http_info(
      *,
      ending_before : String? = nil,
      starting_after : String? = nil,
      limit : Int64? = nil,
      _type : String? = nil,
      types : Array(Array(String))? = nil,
      delivery_success : Bool? = nil,
      expand : Array(Array(String))? = nil,
      created : Stripe::GetAccountsCreatedParameter? = nil
    ) : Tuple(Stripe::NotificationEventList, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_get_events(ending_before: ending_before, starting_after: starting_after, limit: limit, _type: _type, types: types, delivery_success: delivery_success, expand: expand, created: created)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: EventsApi#get_events\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::NotificationEventList.from_json(body), status_code, headers)
    end

    # &lt;p&gt;List events, going back up to 30 days. Each event data is rendered according to Stripe API version at its creation time, specified in &lt;a href&#x3D;\&quot;/docs/api/events/object\&quot;&gt;event object&lt;/a&gt; &lt;code&gt;api_version&lt;/code&gt; attribute (not according to your current Stripe API version or &lt;code&gt;Stripe-Version&lt;/code&gt; header).&lt;/p&gt;
    # @optional @param ending_before [String?] A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
    # @optional @param starting_after [String?] A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
    # @optional @param limit [Int32?] A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    # @optional @param _type [String?] A string containing a specific event name, or group of events using * as a wildcard. The list will be filtered to include only events with a matching event property.
    # @optional @param types [Array(Array(String))?] An array of up to 20 strings containing specific event names. The list will be filtered to include only events with a matching event property. You may pass either `type` or `types`, but not both.
    # @optional @param delivery_success [Bool?] Filter events by whether all webhooks were successfully delivered. If false, events which are still pending or have failed all delivery attempts to a webhook endpoint will be returned.
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @optional @param created [Stripe::GetAccountsCreatedParameter?]
    # @return nil
    def get_events(
      *,
      ending_before : String? = nil,
      starting_after : String? = nil,
      limit : Int64? = nil,
      _type : String? = nil,
      types : Array(Array(String))? = nil,
      delivery_success : Bool? = nil,
      expand : Array(Array(String))? = nil,
      created : Stripe::GetAccountsCreatedParameter? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_get_events(ending_before: ending_before, starting_after: starting_after, limit: limit, _type: _type, types: types, delivery_success: delivery_success, expand: expand, created: created).execute(&block)
    end

    GET_EVENTS_MAX_LENGTH_FOR_ENDING_BEFORE  = 5000
    GET_EVENTS_MAX_LENGTH_FOR_STARTING_AFTER = 5000
    GET_EVENTS_MAX_LENGTH_FOR__TYPE          = 5000

    # @return Crest::Request
    def build_api_request_for_get_events(
      *,
      ending_before : String? = nil,
      starting_after : String? = nil,
      limit : Int64? = nil,
      _type : String? = nil,
      types : Array(Array(String))? = nil,
      delivery_success : Bool? = nil,
      expand : Array(Array(String))? = nil,
      created : Stripe::GetAccountsCreatedParameter? = nil
    ) : Crest::Request
      if debugging
        Log.debug { "Calling API: EventsApi.get_events ..." }
      end

      if client_side_validation
        unless (_ending_before = ending_before).nil?
          OpenApi::PrimitiveValidator.validate_max_length("ending_before", ending_before.to_s.size, GET_EVENTS_MAX_LENGTH_FOR_ENDING_BEFORE)
        end
        unless (_starting_after = starting_after).nil?
          OpenApi::PrimitiveValidator.validate_max_length("starting_after", starting_after.to_s.size, GET_EVENTS_MAX_LENGTH_FOR_STARTING_AFTER)
        end

        unless (__type = _type).nil?
          OpenApi::PrimitiveValidator.validate_max_length("_type", _type.to_s.size, GET_EVENTS_MAX_LENGTH_FOR__TYPE)
        end

        unless (_created = created).nil?
          _created.validate if _created.is_a?(OpenApi::Validatable)
        end
      end

      # resource path
      local_var_path = "/v1/events"

      # query parameters
      query_params = Hash(String, (String | Array(String))).new
      query_params["ending_before"] = ending_before.to_s if !ending_before.nil?
      query_params["starting_after"] = starting_after.to_s if !starting_after.nil?
      query_params["limit"] = limit.to_s if !limit.nil?
      query_params["type"] = _type.to_s if !_type.nil?
      query_params["types"] = @api_client.build_collection_param(types, "csv") if !types.nil? && !types.empty?
      query_params["delivery_success"] = delivery_success.to_s if !delivery_success.nil?
      query_params["expand"] = @api_client.build_collection_param(expand, "csv") if !expand.nil? && !expand.empty?
      query_params["created"] = created.to_s if !created.nil?

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # cookie parameters
      cookie_params = Hash(String, String).new

      # form parameters
      form_params = nil

      # http body (model)
      post_body = nil

      # auth_names
      auth_names = ["basicAuth", "bearerAuth"]

      @api_client.build_api_request(
        http_method: :"GET",
        path: local_var_path,
        operation: "EventsApi.get_events",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # <p>Retrieves the details of an event. Supply the unique identifier of the event, which you might have received in a webhook.</p>
    # @required @param id [String?]
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Stripe::Event]
    def get_events_id(
      *,
      id : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Stripe::Event
      data, _status_code, _headers = get_events_id_with_http_info(id: id, expand: expand)
      data
    end

    # &lt;p&gt;Retrieves the details of an event. Supply the unique identifier of the event, which you might have received in a webhook.&lt;/p&gt;
    # @required @param id [String?]
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Tuple(Stripe::Event, Integer, Hash)] Stripe::Event, response status code and response headers
    def get_events_id_with_http_info(
      *,
      id : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Tuple(Stripe::Event, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_get_events_id(id: id, expand: expand)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: EventsApi#get_events_id\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::Event.from_json(body), status_code, headers)
    end

    # &lt;p&gt;Retrieves the details of an event. Supply the unique identifier of the event, which you might have received in a webhook.&lt;/p&gt;
    # @required @param id [String?]
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return nil
    def get_events_id(
      *,
      id : String? = nil,
      expand : Array(Array(String))? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_get_events_id(id: id, expand: expand).execute(&block)
    end

    GET_EVENTS_ID_MAX_LENGTH_FOR_ID = 5000

    # @return Crest::Request
    def build_api_request_for_get_events_id(
      *,
      id : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Crest::Request
      if debugging
        Log.debug { "Calling API: EventsApi.get_events_id ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"id\" is required and cannot be null") if id.nil?
        unless (_id = id).nil?
          OpenApi::PrimitiveValidator.validate_max_length("id", id.to_s.size, GET_EVENTS_ID_MAX_LENGTH_FOR_ID)
        end
      end

      # resource path
      local_var_path = "/v1/events/{id}".sub("{" + "id" + "}", URI.encode_path(id.to_s))

      # query parameters
      query_params = Hash(String, (String | Array(String))).new
      query_params["expand"] = @api_client.build_collection_param(expand, "csv") if !expand.nil? && !expand.empty?

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # cookie parameters
      cookie_params = Hash(String, String).new

      # form parameters
      form_params = nil

      # http body (model)
      post_body = nil

      # auth_names
      auth_names = ["basicAuth", "bearerAuth"]

      @api_client.build_api_request(
        http_method: :"GET",
        path: local_var_path,
        operation: "EventsApi.get_events_id",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end
  end
end
