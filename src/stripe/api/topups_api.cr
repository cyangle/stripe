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
  class TopupsApi
    property api_client : ApiClient

    delegate client_side_validation, debugging, to: @api_client.config

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # <p>Returns a list of top-ups.</p>
    # @optional @param ending_before [String?] A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
    # @optional @param starting_after [String?] A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
    # @optional @param created [Stripe::GetAccountsCreatedParameter?] A filter on the list, based on the object `created` field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with a number of different query options.
    # @optional @param limit [Int32?] A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    # @optional @param amount [Stripe::GetAccountsCreatedParameter?] A positive integer representing how much to transfer.
    # @optional @param status [String?] Only return top-ups that have the given status. One of `canceled`, `failed`, `pending` or `succeeded`.
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Stripe::TopupList]
    def get_topups(
      *,
      ending_before : String? = nil,
      starting_after : String? = nil,
      created : Stripe::GetAccountsCreatedParameter? = nil,
      limit : Int64? = nil,
      amount : Stripe::GetAccountsCreatedParameter? = nil,
      status : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Stripe::TopupList
      data, _status_code, _headers = get_topups_with_http_info(ending_before: ending_before, starting_after: starting_after, created: created, limit: limit, amount: amount, status: status, expand: expand)
      data
    end

    # &lt;p&gt;Returns a list of top-ups.&lt;/p&gt;
    # @optional @param ending_before [String?] A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
    # @optional @param starting_after [String?] A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
    # @optional @param created [Stripe::GetAccountsCreatedParameter?] A filter on the list, based on the object `created` field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with a number of different query options.
    # @optional @param limit [Int32?] A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    # @optional @param amount [Stripe::GetAccountsCreatedParameter?] A positive integer representing how much to transfer.
    # @optional @param status [String?] Only return top-ups that have the given status. One of `canceled`, `failed`, `pending` or `succeeded`.
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Tuple(Stripe::TopupList, Integer, Hash)] Stripe::TopupList, response status code and response headers
    def get_topups_with_http_info(
      *,
      ending_before : String? = nil,
      starting_after : String? = nil,
      created : Stripe::GetAccountsCreatedParameter? = nil,
      limit : Int64? = nil,
      amount : Stripe::GetAccountsCreatedParameter? = nil,
      status : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Tuple(Stripe::TopupList, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_get_topups(ending_before: ending_before, starting_after: starting_after, created: created, limit: limit, amount: amount, status: status, expand: expand)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: TopupsApi#get_topups\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::TopupList.from_json(body), status_code, headers)
    end

    # &lt;p&gt;Returns a list of top-ups.&lt;/p&gt;
    # @optional @param ending_before [String?] A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
    # @optional @param starting_after [String?] A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
    # @optional @param created [Stripe::GetAccountsCreatedParameter?] A filter on the list, based on the object `created` field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with a number of different query options.
    # @optional @param limit [Int32?] A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    # @optional @param amount [Stripe::GetAccountsCreatedParameter?] A positive integer representing how much to transfer.
    # @optional @param status [String?] Only return top-ups that have the given status. One of `canceled`, `failed`, `pending` or `succeeded`.
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return nil
    def get_topups(
      *,
      ending_before : String? = nil,
      starting_after : String? = nil,
      created : Stripe::GetAccountsCreatedParameter? = nil,
      limit : Int64? = nil,
      amount : Stripe::GetAccountsCreatedParameter? = nil,
      status : String? = nil,
      expand : Array(Array(String))? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_get_topups(ending_before: ending_before, starting_after: starting_after, created: created, limit: limit, amount: amount, status: status, expand: expand).execute(&block)
    end

    GET_TOPUPS_MAX_LENGTH_FOR_ENDING_BEFORE  = 5000
    GET_TOPUPS_MAX_LENGTH_FOR_STARTING_AFTER = 5000
    GET_TOPUPS_MAX_LENGTH_FOR_STATUS         = 5000
    GET_TOPUPS_VALID_VALUES_FOR_STATUS       = String.static_array("canceled", "failed", "pending", "succeeded")

    # @return Crest::Request
    def build_api_request_for_get_topups(
      *,
      ending_before : String? = nil,
      starting_after : String? = nil,
      created : Stripe::GetAccountsCreatedParameter? = nil,
      limit : Int64? = nil,
      amount : Stripe::GetAccountsCreatedParameter? = nil,
      status : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Crest::Request
      if debugging
        Log.debug { "Calling API: TopupsApi.get_topups ..." }
      end

      if client_side_validation
        unless (_ending_before = ending_before).nil?
          OpenApi::PrimitiveValidator.validate_max_length("ending_before", ending_before.to_s.size, GET_TOPUPS_MAX_LENGTH_FOR_ENDING_BEFORE)
        end
        unless (_starting_after = starting_after).nil?
          OpenApi::PrimitiveValidator.validate_max_length("starting_after", starting_after.to_s.size, GET_TOPUPS_MAX_LENGTH_FOR_STARTING_AFTER)
        end
        unless (_created = created).nil?
          _created.validate if _created.is_a?(OpenApi::Validatable)
        end

        unless (_amount = amount).nil?
          _amount.validate if _amount.is_a?(OpenApi::Validatable)
        end
        unless (_status = status).nil?
          OpenApi::EnumValidator.validate("status", _status, GET_TOPUPS_VALID_VALUES_FOR_STATUS)
        end
      end

      # resource path
      local_var_path = "/v1/topups"

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
      query_params["created"] = created.to_s if !created.nil?
      query_params["limit"] = limit.to_s if !limit.nil?
      query_params["amount"] = amount.to_s if !amount.nil?
      query_params["status"] = status.to_s if !status.nil?
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
        operation: "TopupsApi.get_topups",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # <p>Retrieves the details of a top-up that has previously been created. Supply the unique top-up ID that was returned from your previous request, and Stripe will return the corresponding top-up information.</p>
    # @required @param topup [String?]
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Stripe::Topup]
    def get_topups_topup(
      *,
      topup : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Stripe::Topup
      data, _status_code, _headers = get_topups_topup_with_http_info(topup: topup, expand: expand)
      data
    end

    # &lt;p&gt;Retrieves the details of a top-up that has previously been created. Supply the unique top-up ID that was returned from your previous request, and Stripe will return the corresponding top-up information.&lt;/p&gt;
    # @required @param topup [String?]
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Tuple(Stripe::Topup, Integer, Hash)] Stripe::Topup, response status code and response headers
    def get_topups_topup_with_http_info(
      *,
      topup : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Tuple(Stripe::Topup, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_get_topups_topup(topup: topup, expand: expand)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: TopupsApi#get_topups_topup\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::Topup.from_json(body), status_code, headers)
    end

    # &lt;p&gt;Retrieves the details of a top-up that has previously been created. Supply the unique top-up ID that was returned from your previous request, and Stripe will return the corresponding top-up information.&lt;/p&gt;
    # @required @param topup [String?]
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return nil
    def get_topups_topup(
      *,
      topup : String? = nil,
      expand : Array(Array(String))? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_get_topups_topup(topup: topup, expand: expand).execute(&block)
    end

    GET_TOPUPS_TOPUP_MAX_LENGTH_FOR_TOPUP = 5000

    # @return Crest::Request
    def build_api_request_for_get_topups_topup(
      *,
      topup : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Crest::Request
      if debugging
        Log.debug { "Calling API: TopupsApi.get_topups_topup ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"topup\" is required and cannot be null") if topup.nil?
        unless (_topup = topup).nil?
          OpenApi::PrimitiveValidator.validate_max_length("topup", topup.to_s.size, GET_TOPUPS_TOPUP_MAX_LENGTH_FOR_TOPUP)
        end
      end

      # resource path
      local_var_path = "/v1/topups/{topup}".sub("{" + "topup" + "}", URI.encode_path(topup.to_s))

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
        operation: "TopupsApi.get_topups_topup",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # <p>Top up the balance of an account</p>
    # @required @param post_topups_request [Stripe::PostTopupsRequest?]
    # @return [Stripe::Topup]
    def post_topups(
      *,
      post_topups_request : Stripe::PostTopupsRequest? = nil
    ) : Stripe::Topup
      data, _status_code, _headers = post_topups_with_http_info(post_topups_request: post_topups_request)
      data
    end

    # &lt;p&gt;Top up the balance of an account&lt;/p&gt;
    # @required @param post_topups_request [Stripe::PostTopupsRequest?]
    # @return [Tuple(Stripe::Topup, Integer, Hash)] Stripe::Topup, response status code and response headers
    def post_topups_with_http_info(
      *,
      post_topups_request : Stripe::PostTopupsRequest? = nil
    ) : Tuple(Stripe::Topup, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_post_topups(post_topups_request: post_topups_request)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: TopupsApi#post_topups\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::Topup.from_json(body), status_code, headers)
    end

    # &lt;p&gt;Top up the balance of an account&lt;/p&gt;
    # @required @param post_topups_request [Stripe::PostTopupsRequest?]
    # @return nil
    def post_topups(
      *,
      post_topups_request : Stripe::PostTopupsRequest? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_post_topups(post_topups_request: post_topups_request).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_post_topups(
      *,
      post_topups_request : Stripe::PostTopupsRequest? = nil
    ) : Crest::Request
      if debugging
        Log.debug { "Calling API: TopupsApi.post_topups ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"post_topups_request\" is required and cannot be null") if post_topups_request.nil?
        unless (_post_topups_request = post_topups_request).nil?
          _post_topups_request.validate if _post_topups_request.is_a?(OpenApi::Validatable)
        end
      end

      # resource path
      local_var_path = "/v1/topups"

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
      post_body : IO | String | Nil = @api_client.encode(body: post_topups_request, content_type: header_params["Content-Type"]?) if !post_topups_request.nil?

      # auth_names
      auth_names = ["basicAuth", "bearerAuth"]

      @api_client.build_api_request(
        http_method: :"POST",
        path: local_var_path,
        operation: "TopupsApi.post_topups",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # <p>Updates the metadata of a top-up. Other top-up details are not editable by design.</p>
    # @required @param topup [String?]
    # @optional @param post_topups_topup_request [Stripe::PostTopupsTopupRequest?]
    # @return [Stripe::Topup]
    def post_topups_topup(
      *,
      topup : String? = nil,
      post_topups_topup_request : Stripe::PostTopupsTopupRequest? = nil
    ) : Stripe::Topup
      data, _status_code, _headers = post_topups_topup_with_http_info(topup: topup, post_topups_topup_request: post_topups_topup_request)
      data
    end

    # &lt;p&gt;Updates the metadata of a top-up. Other top-up details are not editable by design.&lt;/p&gt;
    # @required @param topup [String?]
    # @optional @param post_topups_topup_request [Stripe::PostTopupsTopupRequest?]
    # @return [Tuple(Stripe::Topup, Integer, Hash)] Stripe::Topup, response status code and response headers
    def post_topups_topup_with_http_info(
      *,
      topup : String? = nil,
      post_topups_topup_request : Stripe::PostTopupsTopupRequest? = nil
    ) : Tuple(Stripe::Topup, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_post_topups_topup(topup: topup, post_topups_topup_request: post_topups_topup_request)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: TopupsApi#post_topups_topup\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::Topup.from_json(body), status_code, headers)
    end

    # &lt;p&gt;Updates the metadata of a top-up. Other top-up details are not editable by design.&lt;/p&gt;
    # @required @param topup [String?]
    # @optional @param post_topups_topup_request [Stripe::PostTopupsTopupRequest?]
    # @return nil
    def post_topups_topup(
      *,
      topup : String? = nil,
      post_topups_topup_request : Stripe::PostTopupsTopupRequest? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_post_topups_topup(topup: topup, post_topups_topup_request: post_topups_topup_request).execute(&block)
    end

    POST_TOPUPS_TOPUP_MAX_LENGTH_FOR_TOPUP = 5000

    # @return Crest::Request
    def build_api_request_for_post_topups_topup(
      *,
      topup : String? = nil,
      post_topups_topup_request : Stripe::PostTopupsTopupRequest? = nil
    ) : Crest::Request
      if debugging
        Log.debug { "Calling API: TopupsApi.post_topups_topup ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"topup\" is required and cannot be null") if topup.nil?
        unless (_topup = topup).nil?
          OpenApi::PrimitiveValidator.validate_max_length("topup", topup.to_s.size, POST_TOPUPS_TOPUP_MAX_LENGTH_FOR_TOPUP)
        end
        unless (_post_topups_topup_request = post_topups_topup_request).nil?
          _post_topups_topup_request.validate if _post_topups_topup_request.is_a?(OpenApi::Validatable)
        end
      end

      # resource path
      local_var_path = "/v1/topups/{topup}".sub("{" + "topup" + "}", URI.encode_path(topup.to_s))

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
      post_body : IO | String | Nil = @api_client.encode(body: post_topups_topup_request, content_type: header_params["Content-Type"]?) if !post_topups_topup_request.nil?

      # auth_names
      auth_names = ["basicAuth", "bearerAuth"]

      @api_client.build_api_request(
        http_method: :"POST",
        path: local_var_path,
        operation: "TopupsApi.post_topups_topup",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # <p>Cancels a top-up. Only pending top-ups can be canceled.</p>
    # @required @param topup [String?]
    # @optional @param post_accounts_account_login_links_request [Stripe::PostAccountsAccountLoginLinksRequest?]
    # @return [Stripe::Topup]
    def post_topups_topup_cancel(
      *,
      topup : String? = nil,
      post_accounts_account_login_links_request : Stripe::PostAccountsAccountLoginLinksRequest? = nil
    ) : Stripe::Topup
      data, _status_code, _headers = post_topups_topup_cancel_with_http_info(topup: topup, post_accounts_account_login_links_request: post_accounts_account_login_links_request)
      data
    end

    # &lt;p&gt;Cancels a top-up. Only pending top-ups can be canceled.&lt;/p&gt;
    # @required @param topup [String?]
    # @optional @param post_accounts_account_login_links_request [Stripe::PostAccountsAccountLoginLinksRequest?]
    # @return [Tuple(Stripe::Topup, Integer, Hash)] Stripe::Topup, response status code and response headers
    def post_topups_topup_cancel_with_http_info(
      *,
      topup : String? = nil,
      post_accounts_account_login_links_request : Stripe::PostAccountsAccountLoginLinksRequest? = nil
    ) : Tuple(Stripe::Topup, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_post_topups_topup_cancel(topup: topup, post_accounts_account_login_links_request: post_accounts_account_login_links_request)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: TopupsApi#post_topups_topup_cancel\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::Topup.from_json(body), status_code, headers)
    end

    # &lt;p&gt;Cancels a top-up. Only pending top-ups can be canceled.&lt;/p&gt;
    # @required @param topup [String?]
    # @optional @param post_accounts_account_login_links_request [Stripe::PostAccountsAccountLoginLinksRequest?]
    # @return nil
    def post_topups_topup_cancel(
      *,
      topup : String? = nil,
      post_accounts_account_login_links_request : Stripe::PostAccountsAccountLoginLinksRequest? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_post_topups_topup_cancel(topup: topup, post_accounts_account_login_links_request: post_accounts_account_login_links_request).execute(&block)
    end

    POST_TOPUPS_TOPUP_CANCEL_MAX_LENGTH_FOR_TOPUP = 5000

    # @return Crest::Request
    def build_api_request_for_post_topups_topup_cancel(
      *,
      topup : String? = nil,
      post_accounts_account_login_links_request : Stripe::PostAccountsAccountLoginLinksRequest? = nil
    ) : Crest::Request
      if debugging
        Log.debug { "Calling API: TopupsApi.post_topups_topup_cancel ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"topup\" is required and cannot be null") if topup.nil?
        unless (_topup = topup).nil?
          OpenApi::PrimitiveValidator.validate_max_length("topup", topup.to_s.size, POST_TOPUPS_TOPUP_CANCEL_MAX_LENGTH_FOR_TOPUP)
        end
        unless (_post_accounts_account_login_links_request = post_accounts_account_login_links_request).nil?
          _post_accounts_account_login_links_request.validate if _post_accounts_account_login_links_request.is_a?(OpenApi::Validatable)
        end
      end

      # resource path
      local_var_path = "/v1/topups/{topup}/cancel".sub("{" + "topup" + "}", URI.encode_path(topup.to_s))

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
      post_body : IO | String | Nil = @api_client.encode(body: post_accounts_account_login_links_request, content_type: header_params["Content-Type"]?) if !post_accounts_account_login_links_request.nil?

      # auth_names
      auth_names = ["basicAuth", "bearerAuth"]

      @api_client.build_api_request(
        http_method: :"POST",
        path: local_var_path,
        operation: "TopupsApi.post_topups_topup_cancel",
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