#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "../models/apps_secret"
require "../models/error"

require "../models/scope_param"
require "../models/secret_service_resource_secret_list"

module Stripe
  class AppsApi
    property api_client : ApiClient

    delegate client_side_validation?, debugging?, to: @api_client.config

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # <p>List all secrets stored on the given scope.</p>
    # @required @param scope [Stripe::ScopeParam?] Specifies the scoping of the secret. Requests originating from UI extensions can only access account-scoped secrets or secrets scoped to their own user.
    # @optional @param ending_before [String?] A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
    # @optional @param starting_after [String?] A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
    # @optional @param limit [Int32?] A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Stripe::SecretServiceResourceSecretList]
    def get_apps_secrets(
      *,
      scope : Stripe::ScopeParam? = nil,
      ending_before : String? = nil,
      starting_after : String? = nil,
      limit : Int64? = nil,
      expand : Array(Array(String))? = nil
    ) : Stripe::SecretServiceResourceSecretList
      data, _status_code, _headers = get_apps_secrets_with_http_info(scope: scope, ending_before: ending_before, starting_after: starting_after, limit: limit, expand: expand)
      data
    end

    # &lt;p&gt;List all secrets stored on the given scope.&lt;/p&gt;
    # @required @param scope [Stripe::ScopeParam?] Specifies the scoping of the secret. Requests originating from UI extensions can only access account-scoped secrets or secrets scoped to their own user.
    # @optional @param ending_before [String?] A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
    # @optional @param starting_after [String?] A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
    # @optional @param limit [Int32?] A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Tuple(Stripe::SecretServiceResourceSecretList, Integer, Hash)] Stripe::SecretServiceResourceSecretList, response status code and response headers
    def get_apps_secrets_with_http_info(
      *,
      scope : Stripe::ScopeParam? = nil,
      ending_before : String? = nil,
      starting_after : String? = nil,
      limit : Int64? = nil,
      expand : Array(Array(String))? = nil
    ) : Tuple(Stripe::SecretServiceResourceSecretList, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_get_apps_secrets(scope: scope, ending_before: ending_before, starting_after: starting_after, limit: limit, expand: expand)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging?
        Log.debug { "API called: AppsApi#get_apps_secrets\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::SecretServiceResourceSecretList.from_json(body), status_code, headers)
    end

    # &lt;p&gt;List all secrets stored on the given scope.&lt;/p&gt;
    # @required @param scope [Stripe::ScopeParam?] Specifies the scoping of the secret. Requests originating from UI extensions can only access account-scoped secrets or secrets scoped to their own user.
    # @optional @param ending_before [String?] A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
    # @optional @param starting_after [String?] A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
    # @optional @param limit [Int32?] A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return nil
    def get_apps_secrets(
      *,
      scope : Stripe::ScopeParam? = nil,
      ending_before : String? = nil,
      starting_after : String? = nil,
      limit : Int64? = nil,
      expand : Array(Array(String))? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_get_apps_secrets(scope: scope, ending_before: ending_before, starting_after: starting_after, limit: limit, expand: expand).execute(&block)
    end

    GET_APPS_SECRETS_MAX_LENGTH_FOR_ENDING_BEFORE  = 5000
    GET_APPS_SECRETS_MAX_LENGTH_FOR_STARTING_AFTER = 5000

    # @return Crest::Request
    def build_api_request_for_get_apps_secrets(
      *,
      scope : Stripe::ScopeParam? = nil,
      ending_before : String? = nil,
      starting_after : String? = nil,
      limit : Int64? = nil,
      expand : Array(Array(String))? = nil
    ) : Crest::Request
      if debugging?
        Log.debug { "Calling API: AppsApi.get_apps_secrets ..." }
      end

      if client_side_validation?
        raise ArgumentError.new("\"scope\" is required and cannot be null") if scope.nil?
        unless (_scope = scope).nil?
          _scope.validate if _scope.is_a?(OpenApi::Validatable)
        end
        unless (_ending_before = ending_before).nil?
          OpenApi::PrimitiveValidator.validate_max_length("ending_before", ending_before.to_s.size, GET_APPS_SECRETS_MAX_LENGTH_FOR_ENDING_BEFORE)
        end
        unless (_starting_after = starting_after).nil?
          OpenApi::PrimitiveValidator.validate_max_length("starting_after", starting_after.to_s.size, GET_APPS_SECRETS_MAX_LENGTH_FOR_STARTING_AFTER)
        end
      end

      # resource path
      local_var_path = "/v1/apps/secrets"

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
      query_params["scope"] = scope.to_s if !scope.nil?
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
        operation: "AppsApi.get_apps_secrets",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # <p>Finds a secret in the secret store by name and scope.</p>
    # @required @param name [String?] A name for the secret that's unique within the scope.
    # @required @param scope [Stripe::ScopeParam?] Specifies the scoping of the secret. Requests originating from UI extensions can only access account-scoped secrets or secrets scoped to their own user.
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Stripe::AppsSecret]
    def get_apps_secrets_find(
      *,
      name : String? = nil,
      scope : Stripe::ScopeParam? = nil,
      expand : Array(Array(String))? = nil
    ) : Stripe::AppsSecret
      data, _status_code, _headers = get_apps_secrets_find_with_http_info(name: name, scope: scope, expand: expand)
      data
    end

    # &lt;p&gt;Finds a secret in the secret store by name and scope.&lt;/p&gt;
    # @required @param name [String?] A name for the secret that's unique within the scope.
    # @required @param scope [Stripe::ScopeParam?] Specifies the scoping of the secret. Requests originating from UI extensions can only access account-scoped secrets or secrets scoped to their own user.
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Tuple(Stripe::AppsSecret, Integer, Hash)] Stripe::AppsSecret, response status code and response headers
    def get_apps_secrets_find_with_http_info(
      *,
      name : String? = nil,
      scope : Stripe::ScopeParam? = nil,
      expand : Array(Array(String))? = nil
    ) : Tuple(Stripe::AppsSecret, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_get_apps_secrets_find(name: name, scope: scope, expand: expand)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging?
        Log.debug { "API called: AppsApi#get_apps_secrets_find\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::AppsSecret.from_json(body), status_code, headers)
    end

    # &lt;p&gt;Finds a secret in the secret store by name and scope.&lt;/p&gt;
    # @required @param name [String?] A name for the secret that's unique within the scope.
    # @required @param scope [Stripe::ScopeParam?] Specifies the scoping of the secret. Requests originating from UI extensions can only access account-scoped secrets or secrets scoped to their own user.
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return nil
    def get_apps_secrets_find(
      *,
      name : String? = nil,
      scope : Stripe::ScopeParam? = nil,
      expand : Array(Array(String))? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_get_apps_secrets_find(name: name, scope: scope, expand: expand).execute(&block)
    end

    GET_APPS_SECRETS_FIND_MAX_LENGTH_FOR_NAME = 5000

    # @return Crest::Request
    def build_api_request_for_get_apps_secrets_find(
      *,
      name : String? = nil,
      scope : Stripe::ScopeParam? = nil,
      expand : Array(Array(String))? = nil
    ) : Crest::Request
      if debugging?
        Log.debug { "Calling API: AppsApi.get_apps_secrets_find ..." }
      end

      if client_side_validation?
        raise ArgumentError.new("\"name\" is required and cannot be null") if name.nil?
        unless (_name = name).nil?
          OpenApi::PrimitiveValidator.validate_max_length("name", name.to_s.size, GET_APPS_SECRETS_FIND_MAX_LENGTH_FOR_NAME)
        end
        raise ArgumentError.new("\"scope\" is required and cannot be null") if scope.nil?
        unless (_scope = scope).nil?
          _scope.validate if _scope.is_a?(OpenApi::Validatable)
        end
      end

      # resource path
      local_var_path = "/v1/apps/secrets/find"

      # header parameters
      header_params : Hash(String, String) = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # cookie parameters
      cookie_params : Hash(String, String) = Hash(String, String).new

      # query parameters
      query_params : Hash(String, (String | Array(String) | JSON::Any)) = Hash(String, (String | Array(String) | JSON::Any)).new
      query_params["name"] = name.to_s if !name.nil?
      query_params["scope"] = scope.to_s if !scope.nil?
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
        operation: "AppsApi.get_apps_secrets_find",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # <p>Create or replace a secret in the secret store.</p>
    # @required @param name [String?] A name for the secret that's unique within the scope.
    # @required @param payload [String?] The plaintext secret value to be stored.
    # @required @param scope [Stripe::ScopeParam?]
    # @optional @param expand [Array(String)?] Specifies which fields in the response should be expanded.
    # @optional @param expires_at [Int32?] The Unix timestamp for the expiry time of the secret, after which the secret deletes.
    # @return [Stripe::AppsSecret]
    def post_apps_secrets(
      *,
      name : String? = nil,
      payload : String? = nil,
      scope : Stripe::ScopeParam? = nil,
      expand : Array(String)? = nil,
      expires_at : Int64? = nil
    ) : Stripe::AppsSecret
      data, _status_code, _headers = post_apps_secrets_with_http_info(name: name, payload: payload, scope: scope, expand: expand, expires_at: expires_at)
      data
    end

    # &lt;p&gt;Create or replace a secret in the secret store.&lt;/p&gt;
    # @required @param name [String?] A name for the secret that's unique within the scope.
    # @required @param payload [String?] The plaintext secret value to be stored.
    # @required @param scope [Stripe::ScopeParam?]
    # @optional @param expand [Array(String)?] Specifies which fields in the response should be expanded.
    # @optional @param expires_at [Int32?] The Unix timestamp for the expiry time of the secret, after which the secret deletes.
    # @return [Tuple(Stripe::AppsSecret, Integer, Hash)] Stripe::AppsSecret, response status code and response headers
    def post_apps_secrets_with_http_info(
      *,
      name : String? = nil,
      payload : String? = nil,
      scope : Stripe::ScopeParam? = nil,
      expand : Array(String)? = nil,
      expires_at : Int64? = nil
    ) : Tuple(Stripe::AppsSecret, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_post_apps_secrets(name: name, payload: payload, scope: scope, expand: expand, expires_at: expires_at)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging?
        Log.debug { "API called: AppsApi#post_apps_secrets\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::AppsSecret.from_json(body), status_code, headers)
    end

    # &lt;p&gt;Create or replace a secret in the secret store.&lt;/p&gt;
    # @required @param name [String?] A name for the secret that's unique within the scope.
    # @required @param payload [String?] The plaintext secret value to be stored.
    # @required @param scope [Stripe::ScopeParam?]
    # @optional @param expand [Array(String)?] Specifies which fields in the response should be expanded.
    # @optional @param expires_at [Int32?] The Unix timestamp for the expiry time of the secret, after which the secret deletes.
    # @return nil
    def post_apps_secrets(
      *,
      name : String? = nil,
      payload : String? = nil,
      scope : Stripe::ScopeParam? = nil,
      expand : Array(String)? = nil,
      expires_at : Int64? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_post_apps_secrets(name: name, payload: payload, scope: scope, expand: expand, expires_at: expires_at).execute(&block)
    end

    POST_APPS_SECRETS_MAX_LENGTH_FOR_NAME    = 5000
    POST_APPS_SECRETS_MAX_LENGTH_FOR_PAYLOAD = 5000

    # @return Crest::Request
    def build_api_request_for_post_apps_secrets(
      *,
      name : String? = nil,
      payload : String? = nil,
      scope : Stripe::ScopeParam? = nil,
      expand : Array(String)? = nil,
      expires_at : Int64? = nil
    ) : Crest::Request
      if debugging?
        Log.debug { "Calling API: AppsApi.post_apps_secrets ..." }
      end

      if client_side_validation?
        raise ArgumentError.new("\"name\" is required and cannot be null") if name.nil?
        unless (_name = name).nil?
          OpenApi::PrimitiveValidator.validate_max_length("name", name.to_s.size, POST_APPS_SECRETS_MAX_LENGTH_FOR_NAME)
        end
        raise ArgumentError.new("\"payload\" is required and cannot be null") if payload.nil?
        unless (_payload = payload).nil?
          OpenApi::PrimitiveValidator.validate_max_length("payload", payload.to_s.size, POST_APPS_SECRETS_MAX_LENGTH_FOR_PAYLOAD)
        end
        raise ArgumentError.new("\"scope\" is required and cannot be null") if scope.nil?
        unless (_scope = scope).nil?
          _scope.validate if _scope.is_a?(OpenApi::Validatable)
        end
      end

      # resource path
      local_var_path = "/v1/apps/secrets"

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
      form_params : Array(Tuple(String, Crest::ParamsValue)) | Nil = Array(Tuple(String, Crest::ParamsValue)).new
      form_params.concat(Crest::ZeroEnumeratedFlatParamsEncoder.flatten_params(JSON.parse(expand.to_json), "expand")) if !expand.nil?
      form_params << Tuple(String, Crest::ParamsValue).new("expires_at", expires_at.to_s) if !expires_at.nil?
      form_params << Tuple(String, Crest::ParamsValue).new("name", name.to_s) if !name.nil?
      form_params << Tuple(String, Crest::ParamsValue).new("payload", payload.to_s) if !payload.nil?
      form_params.concat(Crest::ZeroEnumeratedFlatParamsEncoder.flatten_params(JSON.parse(scope.to_json), "scope")) if !scope.nil?

      # http body (model)
      post_body : IO | String | Nil = nil

      # auth_names
      auth_names = ["basicAuth", "bearerAuth"]

      @api_client.build_api_request(
        http_method: :"POST",
        path: local_var_path,
        operation: "AppsApi.post_apps_secrets",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # <p>Deletes a secret from the secret store by name and scope.</p>
    # @required @param name [String?] A name for the secret that's unique within the scope.
    # @required @param scope [Stripe::ScopeParam?]
    # @optional @param expand [Array(String)?] Specifies which fields in the response should be expanded.
    # @return [Stripe::AppsSecret]
    def post_apps_secrets_delete(
      *,
      name : String? = nil,
      scope : Stripe::ScopeParam? = nil,
      expand : Array(String)? = nil
    ) : Stripe::AppsSecret
      data, _status_code, _headers = post_apps_secrets_delete_with_http_info(name: name, scope: scope, expand: expand)
      data
    end

    # &lt;p&gt;Deletes a secret from the secret store by name and scope.&lt;/p&gt;
    # @required @param name [String?] A name for the secret that's unique within the scope.
    # @required @param scope [Stripe::ScopeParam?]
    # @optional @param expand [Array(String)?] Specifies which fields in the response should be expanded.
    # @return [Tuple(Stripe::AppsSecret, Integer, Hash)] Stripe::AppsSecret, response status code and response headers
    def post_apps_secrets_delete_with_http_info(
      *,
      name : String? = nil,
      scope : Stripe::ScopeParam? = nil,
      expand : Array(String)? = nil
    ) : Tuple(Stripe::AppsSecret, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_post_apps_secrets_delete(name: name, scope: scope, expand: expand)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging?
        Log.debug { "API called: AppsApi#post_apps_secrets_delete\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::AppsSecret.from_json(body), status_code, headers)
    end

    # &lt;p&gt;Deletes a secret from the secret store by name and scope.&lt;/p&gt;
    # @required @param name [String?] A name for the secret that's unique within the scope.
    # @required @param scope [Stripe::ScopeParam?]
    # @optional @param expand [Array(String)?] Specifies which fields in the response should be expanded.
    # @return nil
    def post_apps_secrets_delete(
      *,
      name : String? = nil,
      scope : Stripe::ScopeParam? = nil,
      expand : Array(String)? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_post_apps_secrets_delete(name: name, scope: scope, expand: expand).execute(&block)
    end

    POST_APPS_SECRETS_DELETE_MAX_LENGTH_FOR_NAME = 5000

    # @return Crest::Request
    def build_api_request_for_post_apps_secrets_delete(
      *,
      name : String? = nil,
      scope : Stripe::ScopeParam? = nil,
      expand : Array(String)? = nil
    ) : Crest::Request
      if debugging?
        Log.debug { "Calling API: AppsApi.post_apps_secrets_delete ..." }
      end

      if client_side_validation?
        raise ArgumentError.new("\"name\" is required and cannot be null") if name.nil?
        unless (_name = name).nil?
          OpenApi::PrimitiveValidator.validate_max_length("name", name.to_s.size, POST_APPS_SECRETS_DELETE_MAX_LENGTH_FOR_NAME)
        end
        raise ArgumentError.new("\"scope\" is required and cannot be null") if scope.nil?
        unless (_scope = scope).nil?
          _scope.validate if _scope.is_a?(OpenApi::Validatable)
        end
      end

      # resource path
      local_var_path = "/v1/apps/secrets/delete"

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
      form_params : Array(Tuple(String, Crest::ParamsValue)) | Nil = Array(Tuple(String, Crest::ParamsValue)).new
      form_params.concat(Crest::ZeroEnumeratedFlatParamsEncoder.flatten_params(JSON.parse(expand.to_json), "expand")) if !expand.nil?
      form_params << Tuple(String, Crest::ParamsValue).new("name", name.to_s) if !name.nil?
      form_params.concat(Crest::ZeroEnumeratedFlatParamsEncoder.flatten_params(JSON.parse(scope.to_json), "scope")) if !scope.nil?

      # http body (model)
      post_body : IO | String | Nil = nil

      # auth_names
      auth_names = ["basicAuth", "bearerAuth"]

      @api_client.build_api_request(
        http_method: :"POST",
        path: local_var_path,
        operation: "AppsApi.post_apps_secrets_delete",
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
