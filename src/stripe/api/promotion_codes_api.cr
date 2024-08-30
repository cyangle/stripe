#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "../models/error"
require "../models/get_accounts_created_parameter"

require "../models/post_accounts_request_metadata"
require "../models/promotion_code"
require "../models/promotion_codes_resource_promotion_code_list"
require "../models/restrictions_params"

module Stripe
  class PromotionCodesApi
    property api_client : ApiClient

    delegate client_side_validation?, debugging?, to: @api_client.config

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # <p>Returns a list of your promotion codes.</p>
    # @optional @param ending_before [String?] A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
    # @optional @param starting_after [String?] A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
    # @optional @param created [Stripe::GetAccountsCreatedParameter?] A filter on the list, based on the object `created` field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with a number of different query options.
    # @optional @param limit [Int32?] A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    # @optional @param active [Bool?] Filter promotion codes by whether they are active.
    # @optional @param coupon [String?] Only return promotion codes for this coupon.
    # @optional @param customer [String?] Only return promotion codes that are restricted to this customer.
    # @optional @param code [String?] Only return promotion codes that have this case-insensitive code.
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Stripe::PromotionCodesResourcePromotionCodeList]
    def get_promotion_codes(
      *,
      ending_before : String? = nil,
      starting_after : String? = nil,
      created : Stripe::GetAccountsCreatedParameter? = nil,
      limit : Int64? = nil,
      active : Bool? = nil,
      coupon : String? = nil,
      customer : String? = nil,
      code : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Stripe::PromotionCodesResourcePromotionCodeList
      data, _status_code, _headers = get_promotion_codes_with_http_info(ending_before: ending_before, starting_after: starting_after, created: created, limit: limit, active: active, coupon: coupon, customer: customer, code: code, expand: expand)
      data
    end

    # &lt;p&gt;Returns a list of your promotion codes.&lt;/p&gt;
    # @optional @param ending_before [String?] A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
    # @optional @param starting_after [String?] A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
    # @optional @param created [Stripe::GetAccountsCreatedParameter?] A filter on the list, based on the object `created` field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with a number of different query options.
    # @optional @param limit [Int32?] A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    # @optional @param active [Bool?] Filter promotion codes by whether they are active.
    # @optional @param coupon [String?] Only return promotion codes for this coupon.
    # @optional @param customer [String?] Only return promotion codes that are restricted to this customer.
    # @optional @param code [String?] Only return promotion codes that have this case-insensitive code.
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Tuple(Stripe::PromotionCodesResourcePromotionCodeList, Integer, Hash)] Stripe::PromotionCodesResourcePromotionCodeList, response status code and response headers
    def get_promotion_codes_with_http_info(
      *,
      ending_before : String? = nil,
      starting_after : String? = nil,
      created : Stripe::GetAccountsCreatedParameter? = nil,
      limit : Int64? = nil,
      active : Bool? = nil,
      coupon : String? = nil,
      customer : String? = nil,
      code : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Tuple(Stripe::PromotionCodesResourcePromotionCodeList, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_get_promotion_codes(ending_before: ending_before, starting_after: starting_after, created: created, limit: limit, active: active, coupon: coupon, customer: customer, code: code, expand: expand)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging?
        Log.debug { "API called: PromotionCodesApi#get_promotion_codes\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::PromotionCodesResourcePromotionCodeList.from_json(body), status_code, headers)
    end

    # &lt;p&gt;Returns a list of your promotion codes.&lt;/p&gt;
    # @optional @param ending_before [String?] A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
    # @optional @param starting_after [String?] A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
    # @optional @param created [Stripe::GetAccountsCreatedParameter?] A filter on the list, based on the object `created` field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with a number of different query options.
    # @optional @param limit [Int32?] A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    # @optional @param active [Bool?] Filter promotion codes by whether they are active.
    # @optional @param coupon [String?] Only return promotion codes for this coupon.
    # @optional @param customer [String?] Only return promotion codes that are restricted to this customer.
    # @optional @param code [String?] Only return promotion codes that have this case-insensitive code.
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return nil
    def get_promotion_codes(
      *,
      ending_before : String? = nil,
      starting_after : String? = nil,
      created : Stripe::GetAccountsCreatedParameter? = nil,
      limit : Int64? = nil,
      active : Bool? = nil,
      coupon : String? = nil,
      customer : String? = nil,
      code : String? = nil,
      expand : Array(Array(String))? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_get_promotion_codes(ending_before: ending_before, starting_after: starting_after, created: created, limit: limit, active: active, coupon: coupon, customer: customer, code: code, expand: expand).execute(&block)
    end

    GET_PROMOTION_CODES_MAX_LENGTH_FOR_ENDING_BEFORE  = 5000
    GET_PROMOTION_CODES_MAX_LENGTH_FOR_STARTING_AFTER = 5000
    GET_PROMOTION_CODES_MAX_LENGTH_FOR_COUPON         = 5000
    GET_PROMOTION_CODES_MAX_LENGTH_FOR_CUSTOMER       = 5000
    GET_PROMOTION_CODES_MAX_LENGTH_FOR_CODE           = 5000

    # @return Crest::Request
    def build_api_request_for_get_promotion_codes(
      *,
      ending_before : String? = nil,
      starting_after : String? = nil,
      created : Stripe::GetAccountsCreatedParameter? = nil,
      limit : Int64? = nil,
      active : Bool? = nil,
      coupon : String? = nil,
      customer : String? = nil,
      code : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Crest::Request
      if debugging?
        Log.debug { "Calling API: PromotionCodesApi.get_promotion_codes ..." }
      end

      if client_side_validation?
        unless (_ending_before = ending_before).nil?
          OpenApi::PrimitiveValidator.validate_max_length("ending_before", ending_before.to_s.size, GET_PROMOTION_CODES_MAX_LENGTH_FOR_ENDING_BEFORE)
        end
        unless (_starting_after = starting_after).nil?
          OpenApi::PrimitiveValidator.validate_max_length("starting_after", starting_after.to_s.size, GET_PROMOTION_CODES_MAX_LENGTH_FOR_STARTING_AFTER)
        end
        unless (_created = created).nil?
          _created.validate if _created.is_a?(OpenApi::Validatable)
        end

        unless (_coupon = coupon).nil?
          OpenApi::PrimitiveValidator.validate_max_length("coupon", coupon.to_s.size, GET_PROMOTION_CODES_MAX_LENGTH_FOR_COUPON)
        end
        unless (_customer = customer).nil?
          OpenApi::PrimitiveValidator.validate_max_length("customer", customer.to_s.size, GET_PROMOTION_CODES_MAX_LENGTH_FOR_CUSTOMER)
        end
        unless (_code = code).nil?
          OpenApi::PrimitiveValidator.validate_max_length("code", code.to_s.size, GET_PROMOTION_CODES_MAX_LENGTH_FOR_CODE)
        end
      end

      # resource path
      local_var_path = "/v1/promotion_codes"

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
      query_params["active"] = active.to_s if !active.nil?
      query_params["coupon"] = coupon.to_s if !coupon.nil?
      query_params["customer"] = customer.to_s if !customer.nil?
      query_params["code"] = code.to_s if !code.nil?
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
        operation: "PromotionCodesApi.get_promotion_codes",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # <p>Retrieves the promotion code with the given ID. In order to retrieve a promotion code by the customer-facing <code>code</code> use <a href=\"/docs/api/promotion_codes/list\">list</a> with the desired <code>code</code>.</p>
    # @required @param promotion_code [String?]
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Stripe::PromotionCode]
    def get_promotion_codes_promotion_code(
      *,
      promotion_code : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Stripe::PromotionCode
      data, _status_code, _headers = get_promotion_codes_promotion_code_with_http_info(promotion_code: promotion_code, expand: expand)
      data
    end

    # &lt;p&gt;Retrieves the promotion code with the given ID. In order to retrieve a promotion code by the customer-facing &lt;code&gt;code&lt;/code&gt; use &lt;a href&#x3D;\&quot;/docs/api/promotion_codes/list\&quot;&gt;list&lt;/a&gt; with the desired &lt;code&gt;code&lt;/code&gt;.&lt;/p&gt;
    # @required @param promotion_code [String?]
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Tuple(Stripe::PromotionCode, Integer, Hash)] Stripe::PromotionCode, response status code and response headers
    def get_promotion_codes_promotion_code_with_http_info(
      *,
      promotion_code : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Tuple(Stripe::PromotionCode, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_get_promotion_codes_promotion_code(promotion_code: promotion_code, expand: expand)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging?
        Log.debug { "API called: PromotionCodesApi#get_promotion_codes_promotion_code\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::PromotionCode.from_json(body), status_code, headers)
    end

    # &lt;p&gt;Retrieves the promotion code with the given ID. In order to retrieve a promotion code by the customer-facing &lt;code&gt;code&lt;/code&gt; use &lt;a href&#x3D;\&quot;/docs/api/promotion_codes/list\&quot;&gt;list&lt;/a&gt; with the desired &lt;code&gt;code&lt;/code&gt;.&lt;/p&gt;
    # @required @param promotion_code [String?]
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return nil
    def get_promotion_codes_promotion_code(
      *,
      promotion_code : String? = nil,
      expand : Array(Array(String))? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_get_promotion_codes_promotion_code(promotion_code: promotion_code, expand: expand).execute(&block)
    end

    GET_PROMOTION_CODES_PROMOTION_CODE_MAX_LENGTH_FOR_PROMOTION_CODE = 5000

    # @return Crest::Request
    def build_api_request_for_get_promotion_codes_promotion_code(
      *,
      promotion_code : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Crest::Request
      if debugging?
        Log.debug { "Calling API: PromotionCodesApi.get_promotion_codes_promotion_code ..." }
      end

      if client_side_validation?
        raise ArgumentError.new("\"promotion_code\" is required and cannot be null") if promotion_code.nil?
        unless (_promotion_code = promotion_code).nil?
          OpenApi::PrimitiveValidator.validate_max_length("promotion_code", promotion_code.to_s.size, GET_PROMOTION_CODES_PROMOTION_CODE_MAX_LENGTH_FOR_PROMOTION_CODE)
        end
      end

      # resource path
      local_var_path = "/v1/promotion_codes/{promotion_code}".sub("{" + "promotion_code" + "}", URI.encode_path(promotion_code.to_s))

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
        operation: "PromotionCodesApi.get_promotion_codes_promotion_code",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # <p>A promotion code points to a coupon. You can optionally restrict the code to a specific customer, redemption limit, and expiration date.</p>
    # @required @param coupon [String?] The coupon for this promotion code.
    # @optional @param active [Bool?] Whether the promotion code is currently active.
    # @optional @param code [String?] The customer-facing code. Regardless of case, this code must be unique across all active promotion codes for a specific customer. If left blank, we will generate one automatically.
    # @optional @param customer [String?] The customer that this promotion code can be used by. If not set, the promotion code can be used by all customers.
    # @optional @param expand [Array(String)?] Specifies which fields in the response should be expanded.
    # @optional @param expires_at [Int32?] The timestamp at which this promotion code will expire. If the coupon has specified a `redeems_by`, then this value cannot be after the coupon's `redeems_by`.
    # @optional @param max_redemptions [Int32?] A positive integer specifying the number of times the promotion code can be redeemed. If the coupon has specified a `max_redemptions`, then this value cannot be greater than the coupon's `max_redemptions`.
    # @optional @param metadata [Hash(String, String)?]
    # @optional @param restrictions [Stripe::RestrictionsParams?]
    # @return [Stripe::PromotionCode]
    def post_promotion_codes(
      *,
      coupon : String? = nil,
      active : Bool? = nil,
      code : String? = nil,
      customer : String? = nil,
      expand : Array(String)? = nil,
      expires_at : Int64? = nil,
      max_redemptions : Int64? = nil,
      metadata : Hash(String, String)? = nil,
      restrictions : Stripe::RestrictionsParams? = nil
    ) : Stripe::PromotionCode
      data, _status_code, _headers = post_promotion_codes_with_http_info(coupon: coupon, active: active, code: code, customer: customer, expand: expand, expires_at: expires_at, max_redemptions: max_redemptions, metadata: metadata, restrictions: restrictions)
      data
    end

    # &lt;p&gt;A promotion code points to a coupon. You can optionally restrict the code to a specific customer, redemption limit, and expiration date.&lt;/p&gt;
    # @required @param coupon [String?] The coupon for this promotion code.
    # @optional @param active [Bool?] Whether the promotion code is currently active.
    # @optional @param code [String?] The customer-facing code. Regardless of case, this code must be unique across all active promotion codes for a specific customer. If left blank, we will generate one automatically.
    # @optional @param customer [String?] The customer that this promotion code can be used by. If not set, the promotion code can be used by all customers.
    # @optional @param expand [Array(String)?] Specifies which fields in the response should be expanded.
    # @optional @param expires_at [Int32?] The timestamp at which this promotion code will expire. If the coupon has specified a `redeems_by`, then this value cannot be after the coupon's `redeems_by`.
    # @optional @param max_redemptions [Int32?] A positive integer specifying the number of times the promotion code can be redeemed. If the coupon has specified a `max_redemptions`, then this value cannot be greater than the coupon's `max_redemptions`.
    # @optional @param metadata [Hash(String, String)?]
    # @optional @param restrictions [Stripe::RestrictionsParams?]
    # @return [Tuple(Stripe::PromotionCode, Integer, Hash)] Stripe::PromotionCode, response status code and response headers
    def post_promotion_codes_with_http_info(
      *,
      coupon : String? = nil,
      active : Bool? = nil,
      code : String? = nil,
      customer : String? = nil,
      expand : Array(String)? = nil,
      expires_at : Int64? = nil,
      max_redemptions : Int64? = nil,
      metadata : Hash(String, String)? = nil,
      restrictions : Stripe::RestrictionsParams? = nil
    ) : Tuple(Stripe::PromotionCode, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_post_promotion_codes(coupon: coupon, active: active, code: code, customer: customer, expand: expand, expires_at: expires_at, max_redemptions: max_redemptions, metadata: metadata, restrictions: restrictions)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging?
        Log.debug { "API called: PromotionCodesApi#post_promotion_codes\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::PromotionCode.from_json(body), status_code, headers)
    end

    # &lt;p&gt;A promotion code points to a coupon. You can optionally restrict the code to a specific customer, redemption limit, and expiration date.&lt;/p&gt;
    # @required @param coupon [String?] The coupon for this promotion code.
    # @optional @param active [Bool?] Whether the promotion code is currently active.
    # @optional @param code [String?] The customer-facing code. Regardless of case, this code must be unique across all active promotion codes for a specific customer. If left blank, we will generate one automatically.
    # @optional @param customer [String?] The customer that this promotion code can be used by. If not set, the promotion code can be used by all customers.
    # @optional @param expand [Array(String)?] Specifies which fields in the response should be expanded.
    # @optional @param expires_at [Int32?] The timestamp at which this promotion code will expire. If the coupon has specified a `redeems_by`, then this value cannot be after the coupon's `redeems_by`.
    # @optional @param max_redemptions [Int32?] A positive integer specifying the number of times the promotion code can be redeemed. If the coupon has specified a `max_redemptions`, then this value cannot be greater than the coupon's `max_redemptions`.
    # @optional @param metadata [Hash(String, String)?]
    # @optional @param restrictions [Stripe::RestrictionsParams?]
    # @return nil
    def post_promotion_codes(
      *,
      coupon : String? = nil,
      active : Bool? = nil,
      code : String? = nil,
      customer : String? = nil,
      expand : Array(String)? = nil,
      expires_at : Int64? = nil,
      max_redemptions : Int64? = nil,
      metadata : Hash(String, String)? = nil,
      restrictions : Stripe::RestrictionsParams? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_post_promotion_codes(coupon: coupon, active: active, code: code, customer: customer, expand: expand, expires_at: expires_at, max_redemptions: max_redemptions, metadata: metadata, restrictions: restrictions).execute(&block)
    end

    POST_PROMOTION_CODES_MAX_LENGTH_FOR_COUPON   = 5000
    POST_PROMOTION_CODES_MAX_LENGTH_FOR_CODE     =  500
    POST_PROMOTION_CODES_MAX_LENGTH_FOR_CUSTOMER = 5000

    # @return Crest::Request
    def build_api_request_for_post_promotion_codes(
      *,
      coupon : String? = nil,
      active : Bool? = nil,
      code : String? = nil,
      customer : String? = nil,
      expand : Array(String)? = nil,
      expires_at : Int64? = nil,
      max_redemptions : Int64? = nil,
      metadata : Hash(String, String)? = nil,
      restrictions : Stripe::RestrictionsParams? = nil
    ) : Crest::Request
      if debugging?
        Log.debug { "Calling API: PromotionCodesApi.post_promotion_codes ..." }
      end

      if client_side_validation?
        raise ArgumentError.new("\"coupon\" is required and cannot be null") if coupon.nil?
        unless (_coupon = coupon).nil?
          OpenApi::PrimitiveValidator.validate_max_length("coupon", coupon.to_s.size, POST_PROMOTION_CODES_MAX_LENGTH_FOR_COUPON)
        end

        unless (_code = code).nil?
          OpenApi::PrimitiveValidator.validate_max_length("code", code.to_s.size, POST_PROMOTION_CODES_MAX_LENGTH_FOR_CODE)
        end
        unless (_customer = customer).nil?
          OpenApi::PrimitiveValidator.validate_max_length("customer", customer.to_s.size, POST_PROMOTION_CODES_MAX_LENGTH_FOR_CUSTOMER)
        end

        unless (_restrictions = restrictions).nil?
          _restrictions.validate if _restrictions.is_a?(OpenApi::Validatable)
        end
      end

      # resource path
      local_var_path = "/v1/promotion_codes"

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
      form_params << Tuple(String, Crest::ParamsValue).new("active", active.to_s) if !active.nil?
      form_params << Tuple(String, Crest::ParamsValue).new("code", code.to_s) if !code.nil?
      form_params << Tuple(String, Crest::ParamsValue).new("coupon", coupon.to_s) if !coupon.nil?
      form_params << Tuple(String, Crest::ParamsValue).new("customer", customer.to_s) if !customer.nil?
      form_params.concat(Crest::ZeroEnumeratedFlatParamsEncoder.flatten_params(JSON.parse(expand.to_json), "expand")) if !expand.nil?
      form_params << Tuple(String, Crest::ParamsValue).new("expires_at", expires_at.to_s) if !expires_at.nil?
      form_params << Tuple(String, Crest::ParamsValue).new("max_redemptions", max_redemptions.to_s) if !max_redemptions.nil?
      form_params.concat(Crest::ZeroEnumeratedFlatParamsEncoder.flatten_params(JSON.parse(metadata.to_json), "metadata")) if !metadata.nil?
      form_params.concat(Crest::ZeroEnumeratedFlatParamsEncoder.flatten_params(JSON.parse(restrictions.to_json), "restrictions")) if !restrictions.nil?

      # http body (model)
      post_body : IO | String | Nil = nil

      # auth_names
      auth_names = ["basicAuth", "bearerAuth"]

      @api_client.build_api_request(
        http_method: :"POST",
        path: local_var_path,
        operation: "PromotionCodesApi.post_promotion_codes",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # <p>Updates the specified promotion code by setting the values of the parameters passed. Most fields are, by design, not editable.</p>
    # @required @param promotion_code [String?]
    # @optional @param active [Bool?] Whether the promotion code is currently active. A promotion code can only be reactivated when the coupon is still valid and the promotion code is otherwise redeemable.
    # @optional @param expand [Array(String)?] Specifies which fields in the response should be expanded.
    # @optional @param metadata [Stripe::PostAccountsRequestMetadata?]
    # @optional @param restrictions [Stripe::RestrictionsParams?]
    # @return [Stripe::PromotionCode]
    def post_promotion_codes_promotion_code(
      *,
      promotion_code : String? = nil,
      active : Bool? = nil,
      expand : Array(String)? = nil,
      metadata : Stripe::PostAccountsRequestMetadata? = nil,
      restrictions : Stripe::RestrictionsParams? = nil
    ) : Stripe::PromotionCode
      data, _status_code, _headers = post_promotion_codes_promotion_code_with_http_info(promotion_code: promotion_code, active: active, expand: expand, metadata: metadata, restrictions: restrictions)
      data
    end

    # &lt;p&gt;Updates the specified promotion code by setting the values of the parameters passed. Most fields are, by design, not editable.&lt;/p&gt;
    # @required @param promotion_code [String?]
    # @optional @param active [Bool?] Whether the promotion code is currently active. A promotion code can only be reactivated when the coupon is still valid and the promotion code is otherwise redeemable.
    # @optional @param expand [Array(String)?] Specifies which fields in the response should be expanded.
    # @optional @param metadata [Stripe::PostAccountsRequestMetadata?]
    # @optional @param restrictions [Stripe::RestrictionsParams?]
    # @return [Tuple(Stripe::PromotionCode, Integer, Hash)] Stripe::PromotionCode, response status code and response headers
    def post_promotion_codes_promotion_code_with_http_info(
      *,
      promotion_code : String? = nil,
      active : Bool? = nil,
      expand : Array(String)? = nil,
      metadata : Stripe::PostAccountsRequestMetadata? = nil,
      restrictions : Stripe::RestrictionsParams? = nil
    ) : Tuple(Stripe::PromotionCode, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_post_promotion_codes_promotion_code(promotion_code: promotion_code, active: active, expand: expand, metadata: metadata, restrictions: restrictions)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging?
        Log.debug { "API called: PromotionCodesApi#post_promotion_codes_promotion_code\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::PromotionCode.from_json(body), status_code, headers)
    end

    # &lt;p&gt;Updates the specified promotion code by setting the values of the parameters passed. Most fields are, by design, not editable.&lt;/p&gt;
    # @required @param promotion_code [String?]
    # @optional @param active [Bool?] Whether the promotion code is currently active. A promotion code can only be reactivated when the coupon is still valid and the promotion code is otherwise redeemable.
    # @optional @param expand [Array(String)?] Specifies which fields in the response should be expanded.
    # @optional @param metadata [Stripe::PostAccountsRequestMetadata?]
    # @optional @param restrictions [Stripe::RestrictionsParams?]
    # @return nil
    def post_promotion_codes_promotion_code(
      *,
      promotion_code : String? = nil,
      active : Bool? = nil,
      expand : Array(String)? = nil,
      metadata : Stripe::PostAccountsRequestMetadata? = nil,
      restrictions : Stripe::RestrictionsParams? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_post_promotion_codes_promotion_code(promotion_code: promotion_code, active: active, expand: expand, metadata: metadata, restrictions: restrictions).execute(&block)
    end

    POST_PROMOTION_CODES_PROMOTION_CODE_MAX_LENGTH_FOR_PROMOTION_CODE = 5000

    # @return Crest::Request
    def build_api_request_for_post_promotion_codes_promotion_code(
      *,
      promotion_code : String? = nil,
      active : Bool? = nil,
      expand : Array(String)? = nil,
      metadata : Stripe::PostAccountsRequestMetadata? = nil,
      restrictions : Stripe::RestrictionsParams? = nil
    ) : Crest::Request
      if debugging?
        Log.debug { "Calling API: PromotionCodesApi.post_promotion_codes_promotion_code ..." }
      end

      if client_side_validation?
        raise ArgumentError.new("\"promotion_code\" is required and cannot be null") if promotion_code.nil?
        unless (_promotion_code = promotion_code).nil?
          OpenApi::PrimitiveValidator.validate_max_length("promotion_code", promotion_code.to_s.size, POST_PROMOTION_CODES_PROMOTION_CODE_MAX_LENGTH_FOR_PROMOTION_CODE)
        end

        unless (_metadata = metadata).nil?
          _metadata.validate if _metadata.is_a?(OpenApi::Validatable)
        end
        unless (_restrictions = restrictions).nil?
          _restrictions.validate if _restrictions.is_a?(OpenApi::Validatable)
        end
      end

      # resource path
      local_var_path = "/v1/promotion_codes/{promotion_code}".sub("{" + "promotion_code" + "}", URI.encode_path(promotion_code.to_s))

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
      form_params << Tuple(String, Crest::ParamsValue).new("active", active.to_s) if !active.nil?
      form_params.concat(Crest::ZeroEnumeratedFlatParamsEncoder.flatten_params(JSON.parse(expand.to_json), "expand")) if !expand.nil?
      form_params.concat(Crest::ZeroEnumeratedFlatParamsEncoder.flatten_params(JSON.parse(metadata.to_json), "metadata")) if !metadata.nil?
      form_params.concat(Crest::ZeroEnumeratedFlatParamsEncoder.flatten_params(JSON.parse(restrictions.to_json), "restrictions")) if !restrictions.nil?

      # http body (model)
      post_body : IO | String | Nil = nil

      # auth_names
      auth_names = ["basicAuth", "bearerAuth"]

      @api_client.build_api_request(
        http_method: :"POST",
        path: local_var_path,
        operation: "PromotionCodesApi.post_promotion_codes_promotion_code",
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
