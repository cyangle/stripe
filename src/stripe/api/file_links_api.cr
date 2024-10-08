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
require "../models/file_link"
require "../models/file_resource_file_link_list"
require "../models/get_accounts_created_parameter"

require "../models/post_accounts_request_metadata"
require "../models/post_file_links_link_request_expires_at"

module Stripe
  class FileLinksApi
    property api_client : ApiClient

    delegate client_side_validation?, debugging?, to: @api_client.config

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # <p>Returns a list of file links.</p>
    # @optional @param ending_before [String?] A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
    # @optional @param starting_after [String?] A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
    # @optional @param limit [Int32?] A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    # @optional @param expired [Bool?] Filter links by their expiration status. By default, Stripe returns all links.
    # @optional @param file [String?] Only return links for the given file.
    # @optional @param created [Stripe::GetAccountsCreatedParameter?] Only return links that were created during the given date interval.
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Stripe::FileResourceFileLinkList]
    def get_file_links(
      *,
      ending_before : String? = nil,
      starting_after : String? = nil,
      limit : Int64? = nil,
      expired : Bool? = nil,
      file : String? = nil,
      created : Stripe::GetAccountsCreatedParameter? = nil,
      expand : Array(Array(String))? = nil
    ) : Stripe::FileResourceFileLinkList
      data, _status_code, _headers = get_file_links_with_http_info(ending_before: ending_before, starting_after: starting_after, limit: limit, expired: expired, file: file, created: created, expand: expand)
      data
    end

    # &lt;p&gt;Returns a list of file links.&lt;/p&gt;
    # @optional @param ending_before [String?] A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
    # @optional @param starting_after [String?] A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
    # @optional @param limit [Int32?] A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    # @optional @param expired [Bool?] Filter links by their expiration status. By default, Stripe returns all links.
    # @optional @param file [String?] Only return links for the given file.
    # @optional @param created [Stripe::GetAccountsCreatedParameter?] Only return links that were created during the given date interval.
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Tuple(Stripe::FileResourceFileLinkList, Integer, Hash)] Stripe::FileResourceFileLinkList, response status code and response headers
    def get_file_links_with_http_info(
      *,
      ending_before : String? = nil,
      starting_after : String? = nil,
      limit : Int64? = nil,
      expired : Bool? = nil,
      file : String? = nil,
      created : Stripe::GetAccountsCreatedParameter? = nil,
      expand : Array(Array(String))? = nil
    ) : Tuple(Stripe::FileResourceFileLinkList, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_get_file_links(ending_before: ending_before, starting_after: starting_after, limit: limit, expired: expired, file: file, created: created, expand: expand)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging?
        Log.debug { "API called: FileLinksApi#get_file_links\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::FileResourceFileLinkList.from_json(body), status_code, headers)
    end

    # &lt;p&gt;Returns a list of file links.&lt;/p&gt;
    # @optional @param ending_before [String?] A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
    # @optional @param starting_after [String?] A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
    # @optional @param limit [Int32?] A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    # @optional @param expired [Bool?] Filter links by their expiration status. By default, Stripe returns all links.
    # @optional @param file [String?] Only return links for the given file.
    # @optional @param created [Stripe::GetAccountsCreatedParameter?] Only return links that were created during the given date interval.
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return nil
    def get_file_links(
      *,
      ending_before : String? = nil,
      starting_after : String? = nil,
      limit : Int64? = nil,
      expired : Bool? = nil,
      file : String? = nil,
      created : Stripe::GetAccountsCreatedParameter? = nil,
      expand : Array(Array(String))? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_get_file_links(ending_before: ending_before, starting_after: starting_after, limit: limit, expired: expired, file: file, created: created, expand: expand).execute(&block)
    end

    GET_FILE_LINKS_MAX_LENGTH_FOR_FILE = 5000

    # @return Crest::Request
    def build_api_request_for_get_file_links(
      *,
      ending_before : String? = nil,
      starting_after : String? = nil,
      limit : Int64? = nil,
      expired : Bool? = nil,
      file : String? = nil,
      created : Stripe::GetAccountsCreatedParameter? = nil,
      expand : Array(Array(String))? = nil
    ) : Crest::Request
      if debugging?
        Log.debug { "Calling API: FileLinksApi.get_file_links ..." }
      end

      if client_side_validation?
        unless (_file = file).nil?
          OpenApi::PrimitiveValidator.validate_max_length("file", file.to_s.size, GET_FILE_LINKS_MAX_LENGTH_FOR_FILE)
        end
        unless (_created = created).nil?
          _created.validate if _created.is_a?(OpenApi::Validatable)
        end
      end

      # resource path
      local_var_path = "/v1/file_links"

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
      query_params["expired"] = expired.to_s if !expired.nil?
      query_params["file"] = file.to_s if !file.nil?
      query_params["created"] = created.to_s if !created.nil?
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
        operation: "FileLinksApi.get_file_links",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # <p>Retrieves the file link with the given ID.</p>
    # @required @param link [String?]
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Stripe::FileLink]
    def get_file_links_link(
      *,
      link : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Stripe::FileLink
      data, _status_code, _headers = get_file_links_link_with_http_info(link: link, expand: expand)
      data
    end

    # &lt;p&gt;Retrieves the file link with the given ID.&lt;/p&gt;
    # @required @param link [String?]
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Tuple(Stripe::FileLink, Integer, Hash)] Stripe::FileLink, response status code and response headers
    def get_file_links_link_with_http_info(
      *,
      link : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Tuple(Stripe::FileLink, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_get_file_links_link(link: link, expand: expand)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging?
        Log.debug { "API called: FileLinksApi#get_file_links_link\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::FileLink.from_json(body), status_code, headers)
    end

    # &lt;p&gt;Retrieves the file link with the given ID.&lt;/p&gt;
    # @required @param link [String?]
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return nil
    def get_file_links_link(
      *,
      link : String? = nil,
      expand : Array(Array(String))? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_get_file_links_link(link: link, expand: expand).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_get_file_links_link(
      *,
      link : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Crest::Request
      if debugging?
        Log.debug { "Calling API: FileLinksApi.get_file_links_link ..." }
      end

      if client_side_validation?
        raise ArgumentError.new("\"link\" is required and cannot be null") if link.nil?
      end

      # resource path
      local_var_path = "/v1/file_links/{link}".sub("{" + "link" + "}", URI.encode_path(link.to_s))

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
        operation: "FileLinksApi.get_file_links_link",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # <p>Creates a new file link object.</p>
    # @required @param file [String?] The ID of the file. The file's `purpose` must be one of the following: `business_icon`, `business_logo`, `customer_signature`, `dispute_evidence`, `finance_report_run`, `identity_document_downloadable`, `issuing_regulatory_reporting`, `pci_document`, `selfie`, `sigma_scheduled_query`, `tax_document_user_upload`, or `terminal_reader_splashscreen`.
    # @optional @param expand [Array(String)?] Specifies which fields in the response should be expanded.
    # @optional @param expires_at [Int32?] The link isn't usable after this future timestamp.
    # @optional @param metadata [Stripe::PostAccountsRequestMetadata?]
    # @return [Stripe::FileLink]
    def post_file_links(
      *,
      file : String? = nil,
      expand : Array(String)? = nil,
      expires_at : Int64? = nil,
      metadata : Stripe::PostAccountsRequestMetadata? = nil
    ) : Stripe::FileLink
      data, _status_code, _headers = post_file_links_with_http_info(file: file, expand: expand, expires_at: expires_at, metadata: metadata)
      data
    end

    # &lt;p&gt;Creates a new file link object.&lt;/p&gt;
    # @required @param file [String?] The ID of the file. The file's `purpose` must be one of the following: `business_icon`, `business_logo`, `customer_signature`, `dispute_evidence`, `finance_report_run`, `identity_document_downloadable`, `issuing_regulatory_reporting`, `pci_document`, `selfie`, `sigma_scheduled_query`, `tax_document_user_upload`, or `terminal_reader_splashscreen`.
    # @optional @param expand [Array(String)?] Specifies which fields in the response should be expanded.
    # @optional @param expires_at [Int32?] The link isn't usable after this future timestamp.
    # @optional @param metadata [Stripe::PostAccountsRequestMetadata?]
    # @return [Tuple(Stripe::FileLink, Integer, Hash)] Stripe::FileLink, response status code and response headers
    def post_file_links_with_http_info(
      *,
      file : String? = nil,
      expand : Array(String)? = nil,
      expires_at : Int64? = nil,
      metadata : Stripe::PostAccountsRequestMetadata? = nil
    ) : Tuple(Stripe::FileLink, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_post_file_links(file: file, expand: expand, expires_at: expires_at, metadata: metadata)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging?
        Log.debug { "API called: FileLinksApi#post_file_links\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::FileLink.from_json(body), status_code, headers)
    end

    # &lt;p&gt;Creates a new file link object.&lt;/p&gt;
    # @required @param file [String?] The ID of the file. The file's `purpose` must be one of the following: `business_icon`, `business_logo`, `customer_signature`, `dispute_evidence`, `finance_report_run`, `identity_document_downloadable`, `issuing_regulatory_reporting`, `pci_document`, `selfie`, `sigma_scheduled_query`, `tax_document_user_upload`, or `terminal_reader_splashscreen`.
    # @optional @param expand [Array(String)?] Specifies which fields in the response should be expanded.
    # @optional @param expires_at [Int32?] The link isn't usable after this future timestamp.
    # @optional @param metadata [Stripe::PostAccountsRequestMetadata?]
    # @return nil
    def post_file_links(
      *,
      file : String? = nil,
      expand : Array(String)? = nil,
      expires_at : Int64? = nil,
      metadata : Stripe::PostAccountsRequestMetadata? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_post_file_links(file: file, expand: expand, expires_at: expires_at, metadata: metadata).execute(&block)
    end

    POST_FILE_LINKS_MAX_LENGTH_FOR_FILE = 5000

    # @return Crest::Request
    def build_api_request_for_post_file_links(
      *,
      file : String? = nil,
      expand : Array(String)? = nil,
      expires_at : Int64? = nil,
      metadata : Stripe::PostAccountsRequestMetadata? = nil
    ) : Crest::Request
      if debugging?
        Log.debug { "Calling API: FileLinksApi.post_file_links ..." }
      end

      if client_side_validation?
        raise ArgumentError.new("\"file\" is required and cannot be null") if file.nil?
        unless (_file = file).nil?
          OpenApi::PrimitiveValidator.validate_max_length("file", file.to_s.size, POST_FILE_LINKS_MAX_LENGTH_FOR_FILE)
        end

        unless (_metadata = metadata).nil?
          _metadata.validate if _metadata.is_a?(OpenApi::Validatable)
        end
      end

      # resource path
      local_var_path = "/v1/file_links"

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
      form_params << Tuple(String, Crest::ParamsValue).new("file", file.to_s) if !file.nil?
      form_params.concat(Crest::ZeroEnumeratedFlatParamsEncoder.flatten_params(JSON.parse(metadata.to_json), "metadata")) if !metadata.nil?

      # http body (model)
      post_body : IO | String | Nil = nil

      # auth_names
      auth_names = ["basicAuth", "bearerAuth"]

      @api_client.build_api_request(
        http_method: :"POST",
        path: local_var_path,
        operation: "FileLinksApi.post_file_links",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # <p>Updates an existing file link object. Expired links can no longer be updated.</p>
    # @required @param link [String?]
    # @optional @param expand [Array(String)?] Specifies which fields in the response should be expanded.
    # @optional @param expires_at [Stripe::PostFileLinksLinkRequestExpiresAt?]
    # @optional @param metadata [Stripe::PostAccountsRequestMetadata?]
    # @return [Stripe::FileLink]
    def post_file_links_link(
      *,
      link : String? = nil,
      expand : Array(String)? = nil,
      expires_at : Stripe::PostFileLinksLinkRequestExpiresAt? = nil,
      metadata : Stripe::PostAccountsRequestMetadata? = nil
    ) : Stripe::FileLink
      data, _status_code, _headers = post_file_links_link_with_http_info(link: link, expand: expand, expires_at: expires_at, metadata: metadata)
      data
    end

    # &lt;p&gt;Updates an existing file link object. Expired links can no longer be updated.&lt;/p&gt;
    # @required @param link [String?]
    # @optional @param expand [Array(String)?] Specifies which fields in the response should be expanded.
    # @optional @param expires_at [Stripe::PostFileLinksLinkRequestExpiresAt?]
    # @optional @param metadata [Stripe::PostAccountsRequestMetadata?]
    # @return [Tuple(Stripe::FileLink, Integer, Hash)] Stripe::FileLink, response status code and response headers
    def post_file_links_link_with_http_info(
      *,
      link : String? = nil,
      expand : Array(String)? = nil,
      expires_at : Stripe::PostFileLinksLinkRequestExpiresAt? = nil,
      metadata : Stripe::PostAccountsRequestMetadata? = nil
    ) : Tuple(Stripe::FileLink, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_post_file_links_link(link: link, expand: expand, expires_at: expires_at, metadata: metadata)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging?
        Log.debug { "API called: FileLinksApi#post_file_links_link\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::FileLink.from_json(body), status_code, headers)
    end

    # &lt;p&gt;Updates an existing file link object. Expired links can no longer be updated.&lt;/p&gt;
    # @required @param link [String?]
    # @optional @param expand [Array(String)?] Specifies which fields in the response should be expanded.
    # @optional @param expires_at [Stripe::PostFileLinksLinkRequestExpiresAt?]
    # @optional @param metadata [Stripe::PostAccountsRequestMetadata?]
    # @return nil
    def post_file_links_link(
      *,
      link : String? = nil,
      expand : Array(String)? = nil,
      expires_at : Stripe::PostFileLinksLinkRequestExpiresAt? = nil,
      metadata : Stripe::PostAccountsRequestMetadata? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_post_file_links_link(link: link, expand: expand, expires_at: expires_at, metadata: metadata).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_post_file_links_link(
      *,
      link : String? = nil,
      expand : Array(String)? = nil,
      expires_at : Stripe::PostFileLinksLinkRequestExpiresAt? = nil,
      metadata : Stripe::PostAccountsRequestMetadata? = nil
    ) : Crest::Request
      if debugging?
        Log.debug { "Calling API: FileLinksApi.post_file_links_link ..." }
      end

      if client_side_validation?
        raise ArgumentError.new("\"link\" is required and cannot be null") if link.nil?

        unless (_expires_at = expires_at).nil?
          _expires_at.validate if _expires_at.is_a?(OpenApi::Validatable)
        end
        unless (_metadata = metadata).nil?
          _metadata.validate if _metadata.is_a?(OpenApi::Validatable)
        end
      end

      # resource path
      local_var_path = "/v1/file_links/{link}".sub("{" + "link" + "}", URI.encode_path(link.to_s))

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
      form_params.concat(Crest::ZeroEnumeratedFlatParamsEncoder.flatten_params(JSON.parse(expires_at.to_json), "expires_at")) if !expires_at.nil?
      form_params.concat(Crest::ZeroEnumeratedFlatParamsEncoder.flatten_params(JSON.parse(metadata.to_json), "metadata")) if !metadata.nil?

      # http body (model)
      post_body : IO | String | Nil = nil

      # auth_names
      auth_names = ["basicAuth", "bearerAuth"]

      @api_client.build_api_request(
        http_method: :"POST",
        path: local_var_path,
        operation: "FileLinksApi.post_file_links_link",
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
