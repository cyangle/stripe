#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "uri"
require "../api_client"

module Stripe
  class BillingPortalApi
    property api_client : ApiClient

    delegate client_side_validation, debugging, to: @api_client.config

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # <p>Returns a list of configurations that describe the functionality of the customer portal.</p>
    # @optional @param ending_before [String?] A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
    # @optional @param starting_after [String?] A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
    # @optional @param limit [Int32?] A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    # @optional @param active [Bool?] Only return configurations that are active or inactive (e.g., pass `true` to only list active configurations).
    # @optional @param is_default [Bool?] Only return the default or non-default configurations (e.g., pass `true` to only list the default configuration).
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Stripe::PortalConfigurationList]
    def get_billing_portal_configurations(
      *,
      ending_before : String? = nil,
      starting_after : String? = nil,
      limit : Int64? = nil,
      active : Bool? = nil,
      is_default : Bool? = nil,
      expand : Array(Array(String))? = nil
    ) : Stripe::PortalConfigurationList
      data, _status_code, _headers = get_billing_portal_configurations_with_http_info(ending_before: ending_before, starting_after: starting_after, limit: limit, active: active, is_default: is_default, expand: expand)
      data
    end

    # &lt;p&gt;Returns a list of configurations that describe the functionality of the customer portal.&lt;/p&gt;
    # @optional @param ending_before [String?] A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
    # @optional @param starting_after [String?] A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
    # @optional @param limit [Int32?] A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    # @optional @param active [Bool?] Only return configurations that are active or inactive (e.g., pass `true` to only list active configurations).
    # @optional @param is_default [Bool?] Only return the default or non-default configurations (e.g., pass `true` to only list the default configuration).
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Tuple(Stripe::PortalConfigurationList, Integer, Hash)] Stripe::PortalConfigurationList, response status code and response headers
    def get_billing_portal_configurations_with_http_info(
      *,
      ending_before : String? = nil,
      starting_after : String? = nil,
      limit : Int64? = nil,
      active : Bool? = nil,
      is_default : Bool? = nil,
      expand : Array(Array(String))? = nil
    ) : Tuple(Stripe::PortalConfigurationList, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_get_billing_portal_configurations(ending_before: ending_before, starting_after: starting_after, limit: limit, active: active, is_default: is_default, expand: expand)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: BillingPortalApi#get_billing_portal_configurations\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::PortalConfigurationList.from_json(body), status_code, headers)
    end

    # &lt;p&gt;Returns a list of configurations that describe the functionality of the customer portal.&lt;/p&gt;
    # @optional @param ending_before [String?] A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
    # @optional @param starting_after [String?] A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
    # @optional @param limit [Int32?] A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    # @optional @param active [Bool?] Only return configurations that are active or inactive (e.g., pass `true` to only list active configurations).
    # @optional @param is_default [Bool?] Only return the default or non-default configurations (e.g., pass `true` to only list the default configuration).
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return nil
    def get_billing_portal_configurations(
      *,
      ending_before : String? = nil,
      starting_after : String? = nil,
      limit : Int64? = nil,
      active : Bool? = nil,
      is_default : Bool? = nil,
      expand : Array(Array(String))? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_get_billing_portal_configurations(ending_before: ending_before, starting_after: starting_after, limit: limit, active: active, is_default: is_default, expand: expand).execute(&block)
    end

    GET_BILLING_PORTAL_CONFIGURATIONS_MAX_LENGTH_FOR_ENDING_BEFORE  = 5000
    GET_BILLING_PORTAL_CONFIGURATIONS_MAX_LENGTH_FOR_STARTING_AFTER = 5000

    # @return Crest::Request
    def build_api_request_for_get_billing_portal_configurations(
      *,
      ending_before : String? = nil,
      starting_after : String? = nil,
      limit : Int64? = nil,
      active : Bool? = nil,
      is_default : Bool? = nil,
      expand : Array(Array(String))? = nil
    ) : Crest::Request
      if debugging
        Log.debug { "Calling API: BillingPortalApi.get_billing_portal_configurations ..." }
      end

      if client_side_validation
        unless (_ending_before = ending_before).nil?
          OpenApi::PrimitiveValidator.validate_max_length("ending_before", ending_before.to_s.size, GET_BILLING_PORTAL_CONFIGURATIONS_MAX_LENGTH_FOR_ENDING_BEFORE)
        end
        unless (_starting_after = starting_after).nil?
          OpenApi::PrimitiveValidator.validate_max_length("starting_after", starting_after.to_s.size, GET_BILLING_PORTAL_CONFIGURATIONS_MAX_LENGTH_FOR_STARTING_AFTER)
        end
      end

      # resource path
      local_var_path = "/v1/billing_portal/configurations"

      # header parameters
      header_params : Hash(String, String) = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # cookie parameters
      cookie_params : Hash(String, String) = Hash(String, String).new

      # query parameters
      query_params : Hash(String, (String | Array(String) | JSON::Any)) = Hash(String, (String | Array(String) | JSON::Any)).new
      query_params["ending_before"] = ending_before.to_s if !ending_before.nil?
      query_params["starting_after"] = starting_after.to_s if !starting_after.nil?
      query_params["limit"] = limit.to_s if !limit.nil?
      query_params["active"] = active.to_s if !active.nil?
      query_params["is_default"] = is_default.to_s if !is_default.nil?
      query_params["expand"] = @api_client.build_collection_param(expand, "csv") if !expand.nil? && !expand.empty?

      # form parameters
      form_params : Array(Tuple(String, Crest::ParamsValue)) | Nil = nil

      # http body (model)
      post_body : IO | String | Nil = nil

      # auth_names
      auth_names = ["basicAuth", "bearerAuth"]

      @api_client.build_api_request(
        http_method: :"GET",
        path: local_var_path,
        operation: "BillingPortalApi.get_billing_portal_configurations",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # <p>Retrieves a configuration that describes the functionality of the customer portal.</p>
    # @required @param configuration [String?]
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Stripe::BillingPortalConfiguration]
    def get_billing_portal_configurations_configuration(
      *,
      configuration : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Stripe::BillingPortalConfiguration
      data, _status_code, _headers = get_billing_portal_configurations_configuration_with_http_info(configuration: configuration, expand: expand)
      data
    end

    # &lt;p&gt;Retrieves a configuration that describes the functionality of the customer portal.&lt;/p&gt;
    # @required @param configuration [String?]
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Tuple(Stripe::BillingPortalConfiguration, Integer, Hash)] Stripe::BillingPortalConfiguration, response status code and response headers
    def get_billing_portal_configurations_configuration_with_http_info(
      *,
      configuration : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Tuple(Stripe::BillingPortalConfiguration, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_get_billing_portal_configurations_configuration(configuration: configuration, expand: expand)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: BillingPortalApi#get_billing_portal_configurations_configuration\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::BillingPortalConfiguration.from_json(body), status_code, headers)
    end

    # &lt;p&gt;Retrieves a configuration that describes the functionality of the customer portal.&lt;/p&gt;
    # @required @param configuration [String?]
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return nil
    def get_billing_portal_configurations_configuration(
      *,
      configuration : String? = nil,
      expand : Array(Array(String))? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_get_billing_portal_configurations_configuration(configuration: configuration, expand: expand).execute(&block)
    end

    GET_BILLING_PORTAL_CONFIGURATIONS_CONFIGURATION_MAX_LENGTH_FOR_CONFIGURATION = 5000

    # @return Crest::Request
    def build_api_request_for_get_billing_portal_configurations_configuration(
      *,
      configuration : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Crest::Request
      if debugging
        Log.debug { "Calling API: BillingPortalApi.get_billing_portal_configurations_configuration ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"configuration\" is required and cannot be null") if configuration.nil?
        unless (_configuration = configuration).nil?
          OpenApi::PrimitiveValidator.validate_max_length("configuration", configuration.to_s.size, GET_BILLING_PORTAL_CONFIGURATIONS_CONFIGURATION_MAX_LENGTH_FOR_CONFIGURATION)
        end
      end

      # resource path
      local_var_path = "/v1/billing_portal/configurations/{configuration}".sub("{" + "configuration" + "}", URI.encode_path(configuration.to_s))

      # header parameters
      header_params : Hash(String, String) = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # cookie parameters
      cookie_params : Hash(String, String) = Hash(String, String).new

      # query parameters
      query_params : Hash(String, (String | Array(String) | JSON::Any)) = Hash(String, (String | Array(String) | JSON::Any)).new
      query_params["expand"] = @api_client.build_collection_param(expand, "csv") if !expand.nil? && !expand.empty?

      # form parameters
      form_params : Array(Tuple(String, Crest::ParamsValue)) | Nil = nil

      # http body (model)
      post_body : IO | String | Nil = nil

      # auth_names
      auth_names = ["basicAuth", "bearerAuth"]

      @api_client.build_api_request(
        http_method: :"GET",
        path: local_var_path,
        operation: "BillingPortalApi.get_billing_portal_configurations_configuration",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # <p>Creates a configuration that describes the functionality and behavior of a PortalSession</p>
    # @required @param post_billing_portal_configurations_request [Stripe::PostBillingPortalConfigurationsRequest?]
    # @return [Stripe::BillingPortalConfiguration]
    def post_billing_portal_configurations(
      *,
      post_billing_portal_configurations_request : Stripe::PostBillingPortalConfigurationsRequest? = nil
    ) : Stripe::BillingPortalConfiguration
      data, _status_code, _headers = post_billing_portal_configurations_with_http_info(post_billing_portal_configurations_request: post_billing_portal_configurations_request)
      data
    end

    # &lt;p&gt;Creates a configuration that describes the functionality and behavior of a PortalSession&lt;/p&gt;
    # @required @param post_billing_portal_configurations_request [Stripe::PostBillingPortalConfigurationsRequest?]
    # @return [Tuple(Stripe::BillingPortalConfiguration, Integer, Hash)] Stripe::BillingPortalConfiguration, response status code and response headers
    def post_billing_portal_configurations_with_http_info(
      *,
      post_billing_portal_configurations_request : Stripe::PostBillingPortalConfigurationsRequest? = nil
    ) : Tuple(Stripe::BillingPortalConfiguration, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_post_billing_portal_configurations(post_billing_portal_configurations_request: post_billing_portal_configurations_request)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: BillingPortalApi#post_billing_portal_configurations\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::BillingPortalConfiguration.from_json(body), status_code, headers)
    end

    # &lt;p&gt;Creates a configuration that describes the functionality and behavior of a PortalSession&lt;/p&gt;
    # @required @param post_billing_portal_configurations_request [Stripe::PostBillingPortalConfigurationsRequest?]
    # @return nil
    def post_billing_portal_configurations(
      *,
      post_billing_portal_configurations_request : Stripe::PostBillingPortalConfigurationsRequest? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_post_billing_portal_configurations(post_billing_portal_configurations_request: post_billing_portal_configurations_request).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_post_billing_portal_configurations(
      *,
      post_billing_portal_configurations_request : Stripe::PostBillingPortalConfigurationsRequest? = nil
    ) : Crest::Request
      if debugging
        Log.debug { "Calling API: BillingPortalApi.post_billing_portal_configurations ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"post_billing_portal_configurations_request\" is required and cannot be null") if post_billing_portal_configurations_request.nil?
        unless (_post_billing_portal_configurations_request = post_billing_portal_configurations_request).nil?
          _post_billing_portal_configurations_request.validate if _post_billing_portal_configurations_request.is_a?(OpenApi::Validatable)
        end
      end

      # resource path
      local_var_path = "/v1/billing_portal/configurations"

      # header parameters
      header_params : Hash(String, String) = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/x-www-form-urlencoded"])

      # cookie parameters
      cookie_params : Hash(String, String) = Hash(String, String).new

      # query parameters
      query_params : Hash(String, (String | Array(String) | JSON::Any)) = Hash(String, (String | Array(String) | JSON::Any)).new

      # form parameters
      form_params : Array(Tuple(String, Crest::ParamsValue)) | Nil = nil

      # http body (model)
      post_body : IO | String | Nil = @api_client.encode(body: post_billing_portal_configurations_request, content_type: header_params["Content-Type"]?) if !post_billing_portal_configurations_request.nil?

      # auth_names
      auth_names = ["basicAuth", "bearerAuth"]

      @api_client.build_api_request(
        http_method: :"POST",
        path: local_var_path,
        operation: "BillingPortalApi.post_billing_portal_configurations",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # <p>Updates a configuration that describes the functionality of the customer portal.</p>
    # @required @param configuration [String?]
    # @optional @param post_billing_portal_configurations_configuration_request [Stripe::PostBillingPortalConfigurationsConfigurationRequest?]
    # @return [Stripe::BillingPortalConfiguration]
    def post_billing_portal_configurations_configuration(
      *,
      configuration : String? = nil,
      post_billing_portal_configurations_configuration_request : Stripe::PostBillingPortalConfigurationsConfigurationRequest? = nil
    ) : Stripe::BillingPortalConfiguration
      data, _status_code, _headers = post_billing_portal_configurations_configuration_with_http_info(configuration: configuration, post_billing_portal_configurations_configuration_request: post_billing_portal_configurations_configuration_request)
      data
    end

    # &lt;p&gt;Updates a configuration that describes the functionality of the customer portal.&lt;/p&gt;
    # @required @param configuration [String?]
    # @optional @param post_billing_portal_configurations_configuration_request [Stripe::PostBillingPortalConfigurationsConfigurationRequest?]
    # @return [Tuple(Stripe::BillingPortalConfiguration, Integer, Hash)] Stripe::BillingPortalConfiguration, response status code and response headers
    def post_billing_portal_configurations_configuration_with_http_info(
      *,
      configuration : String? = nil,
      post_billing_portal_configurations_configuration_request : Stripe::PostBillingPortalConfigurationsConfigurationRequest? = nil
    ) : Tuple(Stripe::BillingPortalConfiguration, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_post_billing_portal_configurations_configuration(configuration: configuration, post_billing_portal_configurations_configuration_request: post_billing_portal_configurations_configuration_request)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: BillingPortalApi#post_billing_portal_configurations_configuration\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::BillingPortalConfiguration.from_json(body), status_code, headers)
    end

    # &lt;p&gt;Updates a configuration that describes the functionality of the customer portal.&lt;/p&gt;
    # @required @param configuration [String?]
    # @optional @param post_billing_portal_configurations_configuration_request [Stripe::PostBillingPortalConfigurationsConfigurationRequest?]
    # @return nil
    def post_billing_portal_configurations_configuration(
      *,
      configuration : String? = nil,
      post_billing_portal_configurations_configuration_request : Stripe::PostBillingPortalConfigurationsConfigurationRequest? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_post_billing_portal_configurations_configuration(configuration: configuration, post_billing_portal_configurations_configuration_request: post_billing_portal_configurations_configuration_request).execute(&block)
    end

    POST_BILLING_PORTAL_CONFIGURATIONS_CONFIGURATION_MAX_LENGTH_FOR_CONFIGURATION = 5000

    # @return Crest::Request
    def build_api_request_for_post_billing_portal_configurations_configuration(
      *,
      configuration : String? = nil,
      post_billing_portal_configurations_configuration_request : Stripe::PostBillingPortalConfigurationsConfigurationRequest? = nil
    ) : Crest::Request
      if debugging
        Log.debug { "Calling API: BillingPortalApi.post_billing_portal_configurations_configuration ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"configuration\" is required and cannot be null") if configuration.nil?
        unless (_configuration = configuration).nil?
          OpenApi::PrimitiveValidator.validate_max_length("configuration", configuration.to_s.size, POST_BILLING_PORTAL_CONFIGURATIONS_CONFIGURATION_MAX_LENGTH_FOR_CONFIGURATION)
        end
        unless (_post_billing_portal_configurations_configuration_request = post_billing_portal_configurations_configuration_request).nil?
          _post_billing_portal_configurations_configuration_request.validate if _post_billing_portal_configurations_configuration_request.is_a?(OpenApi::Validatable)
        end
      end

      # resource path
      local_var_path = "/v1/billing_portal/configurations/{configuration}".sub("{" + "configuration" + "}", URI.encode_path(configuration.to_s))

      # header parameters
      header_params : Hash(String, String) = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/x-www-form-urlencoded"])

      # cookie parameters
      cookie_params : Hash(String, String) = Hash(String, String).new

      # query parameters
      query_params : Hash(String, (String | Array(String) | JSON::Any)) = Hash(String, (String | Array(String) | JSON::Any)).new

      # form parameters
      form_params : Array(Tuple(String, Crest::ParamsValue)) | Nil = nil

      # http body (model)
      post_body : IO | String | Nil = @api_client.encode(body: post_billing_portal_configurations_configuration_request, content_type: header_params["Content-Type"]?) if !post_billing_portal_configurations_configuration_request.nil?

      # auth_names
      auth_names = ["basicAuth", "bearerAuth"]

      @api_client.build_api_request(
        http_method: :"POST",
        path: local_var_path,
        operation: "BillingPortalApi.post_billing_portal_configurations_configuration",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # <p>Creates a session of the customer portal.</p>
    # @required @param post_billing_portal_sessions_request [Stripe::PostBillingPortalSessionsRequest?]
    # @return [Stripe::BillingPortalSession]
    def post_billing_portal_sessions(
      *,
      post_billing_portal_sessions_request : Stripe::PostBillingPortalSessionsRequest? = nil
    ) : Stripe::BillingPortalSession
      data, _status_code, _headers = post_billing_portal_sessions_with_http_info(post_billing_portal_sessions_request: post_billing_portal_sessions_request)
      data
    end

    # &lt;p&gt;Creates a session of the customer portal.&lt;/p&gt;
    # @required @param post_billing_portal_sessions_request [Stripe::PostBillingPortalSessionsRequest?]
    # @return [Tuple(Stripe::BillingPortalSession, Integer, Hash)] Stripe::BillingPortalSession, response status code and response headers
    def post_billing_portal_sessions_with_http_info(
      *,
      post_billing_portal_sessions_request : Stripe::PostBillingPortalSessionsRequest? = nil
    ) : Tuple(Stripe::BillingPortalSession, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_post_billing_portal_sessions(post_billing_portal_sessions_request: post_billing_portal_sessions_request)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: BillingPortalApi#post_billing_portal_sessions\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::BillingPortalSession.from_json(body), status_code, headers)
    end

    # &lt;p&gt;Creates a session of the customer portal.&lt;/p&gt;
    # @required @param post_billing_portal_sessions_request [Stripe::PostBillingPortalSessionsRequest?]
    # @return nil
    def post_billing_portal_sessions(
      *,
      post_billing_portal_sessions_request : Stripe::PostBillingPortalSessionsRequest? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_post_billing_portal_sessions(post_billing_portal_sessions_request: post_billing_portal_sessions_request).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_post_billing_portal_sessions(
      *,
      post_billing_portal_sessions_request : Stripe::PostBillingPortalSessionsRequest? = nil
    ) : Crest::Request
      if debugging
        Log.debug { "Calling API: BillingPortalApi.post_billing_portal_sessions ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"post_billing_portal_sessions_request\" is required and cannot be null") if post_billing_portal_sessions_request.nil?
        unless (_post_billing_portal_sessions_request = post_billing_portal_sessions_request).nil?
          _post_billing_portal_sessions_request.validate if _post_billing_portal_sessions_request.is_a?(OpenApi::Validatable)
        end
      end

      # resource path
      local_var_path = "/v1/billing_portal/sessions"

      # header parameters
      header_params : Hash(String, String) = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/x-www-form-urlencoded"])

      # cookie parameters
      cookie_params : Hash(String, String) = Hash(String, String).new

      # query parameters
      query_params : Hash(String, (String | Array(String) | JSON::Any)) = Hash(String, (String | Array(String) | JSON::Any)).new

      # form parameters
      form_params : Array(Tuple(String, Crest::ParamsValue)) | Nil = nil

      # http body (model)
      post_body : IO | String | Nil = @api_client.encode(body: post_billing_portal_sessions_request, content_type: header_params["Content-Type"]?) if !post_billing_portal_sessions_request.nil?

      # auth_names
      auth_names = ["basicAuth", "bearerAuth"]

      @api_client.build_api_request(
        http_method: :"POST",
        path: local_var_path,
        operation: "BillingPortalApi.post_billing_portal_sessions",
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
