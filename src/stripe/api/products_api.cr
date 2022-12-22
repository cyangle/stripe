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
  class ProductsApi
    property api_client : ApiClient

    delegate client_side_validation, debugging, to: @api_client.config

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # <p>Delete a product. Deleting a product is only possible if it has no prices associated with it. Additionally, deleting a product with <code>type=good</code> is only possible if it has no SKUs associated with it.</p>
    # @required @param id [String?]
    # @return [Stripe::DeletedProduct]
    def delete_products_id(
      *,
      id : String? = nil
    ) : Stripe::DeletedProduct
      data, _status_code, _headers = delete_products_id_with_http_info(id: id)
      data
    end

    # &lt;p&gt;Delete a product. Deleting a product is only possible if it has no prices associated with it. Additionally, deleting a product with &lt;code&gt;type&#x3D;good&lt;/code&gt; is only possible if it has no SKUs associated with it.&lt;/p&gt;
    # @required @param id [String?]
    # @return [Tuple(Stripe::DeletedProduct, Integer, Hash)] Stripe::DeletedProduct, response status code and response headers
    def delete_products_id_with_http_info(
      *,
      id : String? = nil
    ) : Tuple(Stripe::DeletedProduct, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_delete_products_id(id: id)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: ProductsApi#delete_products_id\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::DeletedProduct.from_json(body), status_code, headers)
    end

    # &lt;p&gt;Delete a product. Deleting a product is only possible if it has no prices associated with it. Additionally, deleting a product with &lt;code&gt;type&#x3D;good&lt;/code&gt; is only possible if it has no SKUs associated with it.&lt;/p&gt;
    # @required @param id [String?]
    # @return nil
    def delete_products_id(
      *,
      id : String? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_delete_products_id(id: id).execute(&block)
    end

    DELETE_PRODUCTS_ID_MAX_LENGTH_FOR_ID = 5000

    # @return Crest::Request
    def build_api_request_for_delete_products_id(
      *,
      id : String? = nil
    ) : Crest::Request
      if debugging
        Log.debug { "Calling API: ProductsApi.delete_products_id ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"id\" is required and cannot be null") if id.nil?
        unless (_id = id).nil?
          OpenApi::PrimitiveValidator.validate_max_length("id", id.to_s.size, DELETE_PRODUCTS_ID_MAX_LENGTH_FOR_ID)
        end
      end

      # resource path
      local_var_path = "/v1/products/{id}".sub("{" + "id" + "}", URI.encode_path(id.to_s))

      # header parameters
      header_params : Hash(String, String) = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # cookie parameters
      cookie_params : Hash(String, String) = Hash(String, String).new

      # query parameters
      query_params : Hash(String, (String | Array(String) | JSON::Any)) = Hash(String, (String | Array(String) | JSON::Any)).new

      # form parameters
      form_params : Array(Tuple(String, Crest::ParamsValue)) | Nil = nil

      # http body (model)
      post_body : IO | String | Nil = nil

      # auth_names
      auth_names = ["basicAuth", "bearerAuth"]

      @api_client.build_api_request(
        http_method: :"DELETE",
        path: local_var_path,
        operation: "ProductsApi.delete_products_id",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # <p>Returns a list of your products. The products are returned sorted by creation date, with the most recently created products appearing first.</p>
    # @optional @param ending_before [String?] A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
    # @optional @param starting_after [String?] A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
    # @optional @param limit [Int32?] A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    # @optional @param active [Bool?] Only return products that are active or inactive (e.g., pass `false` to list all inactive products).
    # @optional @param shippable [Bool?] Only return products that can be shipped (i.e., physical, not digital products).
    # @optional @param created [Stripe::GetAccountsCreatedParameter?] Only return products that were created during the given date interval.
    # @optional @param ids [Array(Array(String))?] Only return products with the given IDs. Cannot be used with [starting_after](https://stripe.com/docs/api#list_products-starting_after) or [ending_before](https://stripe.com/docs/api#list_products-ending_before).
    # @optional @param url [String?] Only return products with the given url.
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Stripe::ProductList]
    def get_products(
      *,
      ending_before : String? = nil,
      starting_after : String? = nil,
      limit : Int64? = nil,
      active : Bool? = nil,
      shippable : Bool? = nil,
      created : Stripe::GetAccountsCreatedParameter? = nil,
      ids : Array(Array(String))? = nil,
      url : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Stripe::ProductList
      data, _status_code, _headers = get_products_with_http_info(ending_before: ending_before, starting_after: starting_after, limit: limit, active: active, shippable: shippable, created: created, ids: ids, url: url, expand: expand)
      data
    end

    # &lt;p&gt;Returns a list of your products. The products are returned sorted by creation date, with the most recently created products appearing first.&lt;/p&gt;
    # @optional @param ending_before [String?] A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
    # @optional @param starting_after [String?] A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
    # @optional @param limit [Int32?] A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    # @optional @param active [Bool?] Only return products that are active or inactive (e.g., pass `false` to list all inactive products).
    # @optional @param shippable [Bool?] Only return products that can be shipped (i.e., physical, not digital products).
    # @optional @param created [Stripe::GetAccountsCreatedParameter?] Only return products that were created during the given date interval.
    # @optional @param ids [Array(Array(String))?] Only return products with the given IDs. Cannot be used with [starting_after](https://stripe.com/docs/api#list_products-starting_after) or [ending_before](https://stripe.com/docs/api#list_products-ending_before).
    # @optional @param url [String?] Only return products with the given url.
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Tuple(Stripe::ProductList, Integer, Hash)] Stripe::ProductList, response status code and response headers
    def get_products_with_http_info(
      *,
      ending_before : String? = nil,
      starting_after : String? = nil,
      limit : Int64? = nil,
      active : Bool? = nil,
      shippable : Bool? = nil,
      created : Stripe::GetAccountsCreatedParameter? = nil,
      ids : Array(Array(String))? = nil,
      url : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Tuple(Stripe::ProductList, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_get_products(ending_before: ending_before, starting_after: starting_after, limit: limit, active: active, shippable: shippable, created: created, ids: ids, url: url, expand: expand)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: ProductsApi#get_products\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::ProductList.from_json(body), status_code, headers)
    end

    # &lt;p&gt;Returns a list of your products. The products are returned sorted by creation date, with the most recently created products appearing first.&lt;/p&gt;
    # @optional @param ending_before [String?] A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
    # @optional @param starting_after [String?] A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
    # @optional @param limit [Int32?] A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    # @optional @param active [Bool?] Only return products that are active or inactive (e.g., pass `false` to list all inactive products).
    # @optional @param shippable [Bool?] Only return products that can be shipped (i.e., physical, not digital products).
    # @optional @param created [Stripe::GetAccountsCreatedParameter?] Only return products that were created during the given date interval.
    # @optional @param ids [Array(Array(String))?] Only return products with the given IDs. Cannot be used with [starting_after](https://stripe.com/docs/api#list_products-starting_after) or [ending_before](https://stripe.com/docs/api#list_products-ending_before).
    # @optional @param url [String?] Only return products with the given url.
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return nil
    def get_products(
      *,
      ending_before : String? = nil,
      starting_after : String? = nil,
      limit : Int64? = nil,
      active : Bool? = nil,
      shippable : Bool? = nil,
      created : Stripe::GetAccountsCreatedParameter? = nil,
      ids : Array(Array(String))? = nil,
      url : String? = nil,
      expand : Array(Array(String))? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_get_products(ending_before: ending_before, starting_after: starting_after, limit: limit, active: active, shippable: shippable, created: created, ids: ids, url: url, expand: expand).execute(&block)
    end

    GET_PRODUCTS_MAX_LENGTH_FOR_ENDING_BEFORE  = 5000
    GET_PRODUCTS_MAX_LENGTH_FOR_STARTING_AFTER = 5000
    GET_PRODUCTS_MAX_LENGTH_FOR_URL            = 5000

    # @return Crest::Request
    def build_api_request_for_get_products(
      *,
      ending_before : String? = nil,
      starting_after : String? = nil,
      limit : Int64? = nil,
      active : Bool? = nil,
      shippable : Bool? = nil,
      created : Stripe::GetAccountsCreatedParameter? = nil,
      ids : Array(Array(String))? = nil,
      url : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Crest::Request
      if debugging
        Log.debug { "Calling API: ProductsApi.get_products ..." }
      end

      if client_side_validation
        unless (_ending_before = ending_before).nil?
          OpenApi::PrimitiveValidator.validate_max_length("ending_before", ending_before.to_s.size, GET_PRODUCTS_MAX_LENGTH_FOR_ENDING_BEFORE)
        end
        unless (_starting_after = starting_after).nil?
          OpenApi::PrimitiveValidator.validate_max_length("starting_after", starting_after.to_s.size, GET_PRODUCTS_MAX_LENGTH_FOR_STARTING_AFTER)
        end

        unless (_created = created).nil?
          _created.validate if _created.is_a?(OpenApi::Validatable)
        end

        unless (_url = url).nil?
          OpenApi::PrimitiveValidator.validate_max_length("url", url.to_s.size, GET_PRODUCTS_MAX_LENGTH_FOR_URL)
        end
      end

      # resource path
      local_var_path = "/v1/products"

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
      query_params["shippable"] = shippable.to_s if !shippable.nil?
      query_params["created"] = created.to_s if !created.nil?
      query_params["ids"] = @api_client.build_collection_param(ids, "csv") if !ids.nil? && !ids.empty?
      query_params["url"] = url.to_s if !url.nil?
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
        operation: "ProductsApi.get_products",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # <p>Retrieves the details of an existing product. Supply the unique product ID from either a product creation request or the product list, and Stripe will return the corresponding product information.</p>
    # @required @param id [String?]
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Stripe::Product]
    def get_products_id(
      *,
      id : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Stripe::Product
      data, _status_code, _headers = get_products_id_with_http_info(id: id, expand: expand)
      data
    end

    # &lt;p&gt;Retrieves the details of an existing product. Supply the unique product ID from either a product creation request or the product list, and Stripe will return the corresponding product information.&lt;/p&gt;
    # @required @param id [String?]
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Tuple(Stripe::Product, Integer, Hash)] Stripe::Product, response status code and response headers
    def get_products_id_with_http_info(
      *,
      id : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Tuple(Stripe::Product, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_get_products_id(id: id, expand: expand)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: ProductsApi#get_products_id\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::Product.from_json(body), status_code, headers)
    end

    # &lt;p&gt;Retrieves the details of an existing product. Supply the unique product ID from either a product creation request or the product list, and Stripe will return the corresponding product information.&lt;/p&gt;
    # @required @param id [String?]
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return nil
    def get_products_id(
      *,
      id : String? = nil,
      expand : Array(Array(String))? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_get_products_id(id: id, expand: expand).execute(&block)
    end

    GET_PRODUCTS_ID_MAX_LENGTH_FOR_ID = 5000

    # @return Crest::Request
    def build_api_request_for_get_products_id(
      *,
      id : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Crest::Request
      if debugging
        Log.debug { "Calling API: ProductsApi.get_products_id ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"id\" is required and cannot be null") if id.nil?
        unless (_id = id).nil?
          OpenApi::PrimitiveValidator.validate_max_length("id", id.to_s.size, GET_PRODUCTS_ID_MAX_LENGTH_FOR_ID)
        end
      end

      # resource path
      local_var_path = "/v1/products/{id}".sub("{" + "id" + "}", URI.encode_path(id.to_s))

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
        operation: "ProductsApi.get_products_id",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # <p>Search for products you’ve previously created using Stripe’s <a href=\"/docs/search#search-query-language\">Search Query Language</a>. Don’t use search in read-after-write flows where strict consistency is necessary. Under normal operating conditions, data is searchable in less than a minute. Occasionally, propagation of new or updated data can be up to an hour behind during outages. Search functionality is not available to merchants in India.</p>
    # @required @param query [String?] The search query string. See [search query language](https://stripe.com/docs/search#search-query-language) and the list of supported [query fields for products](https://stripe.com/docs/search#query-fields-for-products).
    # @optional @param page [String?] A cursor for pagination across multiple pages of results. Don't include this parameter on the first call. Use the next_page value returned in a previous response to request subsequent results.
    # @optional @param limit [Int32?] A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Stripe::SearchResult]
    def get_products_search(
      *,
      query : String? = nil,
      page : String? = nil,
      limit : Int64? = nil,
      expand : Array(Array(String))? = nil
    ) : Stripe::SearchResult
      data, _status_code, _headers = get_products_search_with_http_info(query: query, page: page, limit: limit, expand: expand)
      data
    end

    # &lt;p&gt;Search for products you’ve previously created using Stripe’s &lt;a href&#x3D;\&quot;/docs/search#search-query-language\&quot;&gt;Search Query Language&lt;/a&gt;. Don’t use search in read-after-write flows where strict consistency is necessary. Under normal operating conditions, data is searchable in less than a minute. Occasionally, propagation of new or updated data can be up to an hour behind during outages. Search functionality is not available to merchants in India.&lt;/p&gt;
    # @required @param query [String?] The search query string. See [search query language](https://stripe.com/docs/search#search-query-language) and the list of supported [query fields for products](https://stripe.com/docs/search#query-fields-for-products).
    # @optional @param page [String?] A cursor for pagination across multiple pages of results. Don't include this parameter on the first call. Use the next_page value returned in a previous response to request subsequent results.
    # @optional @param limit [Int32?] A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Tuple(Stripe::SearchResult, Integer, Hash)] Stripe::SearchResult, response status code and response headers
    def get_products_search_with_http_info(
      *,
      query : String? = nil,
      page : String? = nil,
      limit : Int64? = nil,
      expand : Array(Array(String))? = nil
    ) : Tuple(Stripe::SearchResult, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_get_products_search(query: query, page: page, limit: limit, expand: expand)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: ProductsApi#get_products_search\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::SearchResult.from_json(body), status_code, headers)
    end

    # &lt;p&gt;Search for products you’ve previously created using Stripe’s &lt;a href&#x3D;\&quot;/docs/search#search-query-language\&quot;&gt;Search Query Language&lt;/a&gt;. Don’t use search in read-after-write flows where strict consistency is necessary. Under normal operating conditions, data is searchable in less than a minute. Occasionally, propagation of new or updated data can be up to an hour behind during outages. Search functionality is not available to merchants in India.&lt;/p&gt;
    # @required @param query [String?] The search query string. See [search query language](https://stripe.com/docs/search#search-query-language) and the list of supported [query fields for products](https://stripe.com/docs/search#query-fields-for-products).
    # @optional @param page [String?] A cursor for pagination across multiple pages of results. Don't include this parameter on the first call. Use the next_page value returned in a previous response to request subsequent results.
    # @optional @param limit [Int32?] A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return nil
    def get_products_search(
      *,
      query : String? = nil,
      page : String? = nil,
      limit : Int64? = nil,
      expand : Array(Array(String))? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_get_products_search(query: query, page: page, limit: limit, expand: expand).execute(&block)
    end

    GET_PRODUCTS_SEARCH_MAX_LENGTH_FOR_QUERY = 5000
    GET_PRODUCTS_SEARCH_MAX_LENGTH_FOR_PAGE  = 5000

    # @return Crest::Request
    def build_api_request_for_get_products_search(
      *,
      query : String? = nil,
      page : String? = nil,
      limit : Int64? = nil,
      expand : Array(Array(String))? = nil
    ) : Crest::Request
      if debugging
        Log.debug { "Calling API: ProductsApi.get_products_search ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"query\" is required and cannot be null") if query.nil?
        unless (_query = query).nil?
          OpenApi::PrimitiveValidator.validate_max_length("query", query.to_s.size, GET_PRODUCTS_SEARCH_MAX_LENGTH_FOR_QUERY)
        end
        unless (_page = page).nil?
          OpenApi::PrimitiveValidator.validate_max_length("page", page.to_s.size, GET_PRODUCTS_SEARCH_MAX_LENGTH_FOR_PAGE)
        end
      end

      # resource path
      local_var_path = "/v1/products/search"

      # header parameters
      header_params : Hash(String, String) = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # cookie parameters
      cookie_params : Hash(String, String) = Hash(String, String).new

      # query parameters
      query_params : Hash(String, (String | Array(String) | JSON::Any)) = Hash(String, (String | Array(String) | JSON::Any)).new
      query_params["page"] = page.to_s if !page.nil?
      query_params["limit"] = limit.to_s if !limit.nil?
      query_params["expand"] = @api_client.build_collection_param(expand, "csv") if !expand.nil? && !expand.empty?
      query_params["query"] = query.to_s if !query.nil?

      # form parameters
      form_params : Array(Tuple(String, Crest::ParamsValue)) | Nil = nil

      # http body (model)
      post_body : IO | String | Nil = nil

      # auth_names
      auth_names = ["basicAuth", "bearerAuth"]

      @api_client.build_api_request(
        http_method: :"GET",
        path: local_var_path,
        operation: "ProductsApi.get_products_search",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # <p>Creates a new product object.</p>
    # @required @param post_products_request [Stripe::PostProductsRequest?]
    # @return [Stripe::Product]
    def post_products(
      *,
      post_products_request : Stripe::PostProductsRequest? = nil
    ) : Stripe::Product
      data, _status_code, _headers = post_products_with_http_info(post_products_request: post_products_request)
      data
    end

    # &lt;p&gt;Creates a new product object.&lt;/p&gt;
    # @required @param post_products_request [Stripe::PostProductsRequest?]
    # @return [Tuple(Stripe::Product, Integer, Hash)] Stripe::Product, response status code and response headers
    def post_products_with_http_info(
      *,
      post_products_request : Stripe::PostProductsRequest? = nil
    ) : Tuple(Stripe::Product, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_post_products(post_products_request: post_products_request)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: ProductsApi#post_products\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::Product.from_json(body), status_code, headers)
    end

    # &lt;p&gt;Creates a new product object.&lt;/p&gt;
    # @required @param post_products_request [Stripe::PostProductsRequest?]
    # @return nil
    def post_products(
      *,
      post_products_request : Stripe::PostProductsRequest? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_post_products(post_products_request: post_products_request).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_post_products(
      *,
      post_products_request : Stripe::PostProductsRequest? = nil
    ) : Crest::Request
      if debugging
        Log.debug { "Calling API: ProductsApi.post_products ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"post_products_request\" is required and cannot be null") if post_products_request.nil?
        unless (_post_products_request = post_products_request).nil?
          _post_products_request.validate if _post_products_request.is_a?(OpenApi::Validatable)
        end
      end

      # resource path
      local_var_path = "/v1/products"

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
      post_body : IO | String | Nil = @api_client.encode(body: post_products_request, content_type: header_params["Content-Type"]?) if !post_products_request.nil?

      # auth_names
      auth_names = ["basicAuth", "bearerAuth"]

      @api_client.build_api_request(
        http_method: :"POST",
        path: local_var_path,
        operation: "ProductsApi.post_products",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # <p>Updates the specific product by setting the values of the parameters passed. Any parameters not provided will be left unchanged.</p>
    # @required @param id [String?]
    # @optional @param post_products_id_request [Stripe::PostProductsIdRequest?]
    # @return [Stripe::Product]
    def post_products_id(
      *,
      id : String? = nil,
      post_products_id_request : Stripe::PostProductsIdRequest? = nil
    ) : Stripe::Product
      data, _status_code, _headers = post_products_id_with_http_info(id: id, post_products_id_request: post_products_id_request)
      data
    end

    # &lt;p&gt;Updates the specific product by setting the values of the parameters passed. Any parameters not provided will be left unchanged.&lt;/p&gt;
    # @required @param id [String?]
    # @optional @param post_products_id_request [Stripe::PostProductsIdRequest?]
    # @return [Tuple(Stripe::Product, Integer, Hash)] Stripe::Product, response status code and response headers
    def post_products_id_with_http_info(
      *,
      id : String? = nil,
      post_products_id_request : Stripe::PostProductsIdRequest? = nil
    ) : Tuple(Stripe::Product, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_post_products_id(id: id, post_products_id_request: post_products_id_request)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: ProductsApi#post_products_id\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::Product.from_json(body), status_code, headers)
    end

    # &lt;p&gt;Updates the specific product by setting the values of the parameters passed. Any parameters not provided will be left unchanged.&lt;/p&gt;
    # @required @param id [String?]
    # @optional @param post_products_id_request [Stripe::PostProductsIdRequest?]
    # @return nil
    def post_products_id(
      *,
      id : String? = nil,
      post_products_id_request : Stripe::PostProductsIdRequest? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_post_products_id(id: id, post_products_id_request: post_products_id_request).execute(&block)
    end

    POST_PRODUCTS_ID_MAX_LENGTH_FOR_ID = 5000

    # @return Crest::Request
    def build_api_request_for_post_products_id(
      *,
      id : String? = nil,
      post_products_id_request : Stripe::PostProductsIdRequest? = nil
    ) : Crest::Request
      if debugging
        Log.debug { "Calling API: ProductsApi.post_products_id ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"id\" is required and cannot be null") if id.nil?
        unless (_id = id).nil?
          OpenApi::PrimitiveValidator.validate_max_length("id", id.to_s.size, POST_PRODUCTS_ID_MAX_LENGTH_FOR_ID)
        end
        unless (_post_products_id_request = post_products_id_request).nil?
          _post_products_id_request.validate if _post_products_id_request.is_a?(OpenApi::Validatable)
        end
      end

      # resource path
      local_var_path = "/v1/products/{id}".sub("{" + "id" + "}", URI.encode_path(id.to_s))

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
      post_body : IO | String | Nil = @api_client.encode(body: post_products_id_request, content_type: header_params["Content-Type"]?) if !post_products_id_request.nil?

      # auth_names
      auth_names = ["basicAuth", "bearerAuth"]

      @api_client.build_api_request(
        http_method: :"POST",
        path: local_var_path,
        operation: "ProductsApi.post_products_id",
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
