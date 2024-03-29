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
  class FilesApi
    property api_client : ApiClient

    delegate client_side_validation, debugging, to: @api_client.config

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # <p>Returns a list of the files that your account has access to. The files are returned sorted by creation date, with the most recently created files appearing first.</p>
    # @optional @param ending_before [String?] A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
    # @optional @param starting_after [String?] A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
    # @optional @param limit [Int32?] A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @optional @param purpose [String?] The file purpose to filter queries by. If none is provided, files will not be filtered by purpose.
    # @optional @param created [Stripe::GetAccountsCreatedParameter?]
    # @return [Stripe::FileFileList]
    def get_files(
      *,
      ending_before : String? = nil,
      starting_after : String? = nil,
      limit : Int64? = nil,
      expand : Array(Array(String))? = nil,
      purpose : String? = nil,
      created : Stripe::GetAccountsCreatedParameter? = nil
    ) : Stripe::FileFileList
      data, _status_code, _headers = get_files_with_http_info(ending_before: ending_before, starting_after: starting_after, limit: limit, expand: expand, purpose: purpose, created: created)
      data
    end

    # &lt;p&gt;Returns a list of the files that your account has access to. The files are returned sorted by creation date, with the most recently created files appearing first.&lt;/p&gt;
    # @optional @param ending_before [String?] A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
    # @optional @param starting_after [String?] A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
    # @optional @param limit [Int32?] A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @optional @param purpose [String?] The file purpose to filter queries by. If none is provided, files will not be filtered by purpose.
    # @optional @param created [Stripe::GetAccountsCreatedParameter?]
    # @return [Tuple(Stripe::FileFileList, Integer, Hash)] Stripe::FileFileList, response status code and response headers
    def get_files_with_http_info(
      *,
      ending_before : String? = nil,
      starting_after : String? = nil,
      limit : Int64? = nil,
      expand : Array(Array(String))? = nil,
      purpose : String? = nil,
      created : Stripe::GetAccountsCreatedParameter? = nil
    ) : Tuple(Stripe::FileFileList, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_get_files(ending_before: ending_before, starting_after: starting_after, limit: limit, expand: expand, purpose: purpose, created: created)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: FilesApi#get_files\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::FileFileList.from_json(body), status_code, headers)
    end

    # &lt;p&gt;Returns a list of the files that your account has access to. The files are returned sorted by creation date, with the most recently created files appearing first.&lt;/p&gt;
    # @optional @param ending_before [String?] A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
    # @optional @param starting_after [String?] A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
    # @optional @param limit [Int32?] A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @optional @param purpose [String?] The file purpose to filter queries by. If none is provided, files will not be filtered by purpose.
    # @optional @param created [Stripe::GetAccountsCreatedParameter?]
    # @return nil
    def get_files(
      *,
      ending_before : String? = nil,
      starting_after : String? = nil,
      limit : Int64? = nil,
      expand : Array(Array(String))? = nil,
      purpose : String? = nil,
      created : Stripe::GetAccountsCreatedParameter? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_get_files(ending_before: ending_before, starting_after: starting_after, limit: limit, expand: expand, purpose: purpose, created: created).execute(&block)
    end

    GET_FILES_MAX_LENGTH_FOR_ENDING_BEFORE  = 5000
    GET_FILES_MAX_LENGTH_FOR_STARTING_AFTER = 5000
    GET_FILES_MAX_LENGTH_FOR_PURPOSE        = 5000
    GET_FILES_VALID_VALUES_FOR_PURPOSE      = String.static_array("account_requirement", "additional_verification", "business_icon", "business_logo", "customer_signature", "dispute_evidence", "document_provider_identity_document", "finance_report_run", "identity_document", "identity_document_downloadable", "pci_document", "selfie", "sigma_scheduled_query", "tax_document_user_upload", "terminal_reader_splashscreen")

    # @return Crest::Request
    def build_api_request_for_get_files(
      *,
      ending_before : String? = nil,
      starting_after : String? = nil,
      limit : Int64? = nil,
      expand : Array(Array(String))? = nil,
      purpose : String? = nil,
      created : Stripe::GetAccountsCreatedParameter? = nil
    ) : Crest::Request
      if debugging
        Log.debug { "Calling API: FilesApi.get_files ..." }
      end

      if client_side_validation
        unless (_ending_before = ending_before).nil?
          OpenApi::PrimitiveValidator.validate_max_length("ending_before", ending_before.to_s.size, GET_FILES_MAX_LENGTH_FOR_ENDING_BEFORE)
        end
        unless (_starting_after = starting_after).nil?
          OpenApi::PrimitiveValidator.validate_max_length("starting_after", starting_after.to_s.size, GET_FILES_MAX_LENGTH_FOR_STARTING_AFTER)
        end

        unless (_purpose = purpose).nil?
          OpenApi::EnumValidator.validate("purpose", _purpose, GET_FILES_VALID_VALUES_FOR_PURPOSE)
        end
        unless (_created = created).nil?
          _created.validate if _created.is_a?(OpenApi::Validatable)
        end
      end

      # resource path
      local_var_path = "/v1/files"

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
      query_params["expand"] = @api_client.build_collection_param(expand, "csv") if !expand.nil? && !expand.empty?
      query_params["purpose"] = purpose.to_s if !purpose.nil?
      query_params["created"] = created.to_s if !created.nil?

      # form parameters
      form_params : Array(Tuple(String, Crest::ParamsValue)) | Nil = nil

      # http body (model)
      post_body : IO | String | Nil = nil

      # auth_names
      auth_names = ["basicAuth", "bearerAuth"]

      @api_client.build_api_request(
        http_method: :"GET",
        path: local_var_path,
        operation: "FilesApi.get_files",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # <p>Retrieves the details of an existing file object. Supply the unique file ID from a file, and Stripe will return the corresponding file object. To access file contents, see the <a href=\"/docs/file-upload#download-file-contents\">File Upload Guide</a>.</p>
    # @required @param file [String?]
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Stripe::File]
    def get_files_file(
      *,
      file : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Stripe::File
      data, _status_code, _headers = get_files_file_with_http_info(file: file, expand: expand)
      data
    end

    # &lt;p&gt;Retrieves the details of an existing file object. Supply the unique file ID from a file, and Stripe will return the corresponding file object. To access file contents, see the &lt;a href&#x3D;\&quot;/docs/file-upload#download-file-contents\&quot;&gt;File Upload Guide&lt;/a&gt;.&lt;/p&gt;
    # @required @param file [String?]
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Tuple(Stripe::File, Integer, Hash)] Stripe::File, response status code and response headers
    def get_files_file_with_http_info(
      *,
      file : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Tuple(Stripe::File, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_get_files_file(file: file, expand: expand)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: FilesApi#get_files_file\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::File.from_json(body), status_code, headers)
    end

    # &lt;p&gt;Retrieves the details of an existing file object. Supply the unique file ID from a file, and Stripe will return the corresponding file object. To access file contents, see the &lt;a href&#x3D;\&quot;/docs/file-upload#download-file-contents\&quot;&gt;File Upload Guide&lt;/a&gt;.&lt;/p&gt;
    # @required @param file [String?]
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return nil
    def get_files_file(
      *,
      file : String? = nil,
      expand : Array(Array(String))? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_get_files_file(file: file, expand: expand).execute(&block)
    end

    GET_FILES_FILE_MAX_LENGTH_FOR_FILE = 5000

    # @return Crest::Request
    def build_api_request_for_get_files_file(
      *,
      file : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Crest::Request
      if debugging
        Log.debug { "Calling API: FilesApi.get_files_file ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"file\" is required and cannot be null") if file.nil?
        unless (_file = file).nil?
          OpenApi::PrimitiveValidator.validate_max_length("file", file.to_s.size, GET_FILES_FILE_MAX_LENGTH_FOR_FILE)
        end
      end

      # resource path
      local_var_path = "/v1/files/{file}".sub("{" + "file" + "}", URI.encode_path(file.to_s))

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
        operation: "FilesApi.get_files_file",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # <p>To upload a file to Stripe, you’ll need to send a request of type <code>multipart/form-data</code>. The request should contain the file you would like to upload, as well as the parameters for creating a file.</p>  <p>All of Stripe’s officially supported Client libraries should have support for sending <code>multipart/form-data</code>.</p>
    # @required @param file [::File?] A file to upload. The file should follow the specifications of RFC 2388 (which defines file transfers for the `multipart/form-data` protocol).
    # @required @param purpose [String?] The [purpose](https://stripe.com/docs/file-upload#uploading-a-file) of the uploaded file.
    # @optional @param expand [Array(String)?] Specifies which fields in the response should be expanded.
    # @optional @param file_link_data [Stripe::FileLinkCreationParams?]
    # @return [Stripe::File]
    def post_files(
      *,
      file : ::File? = nil,
      purpose : String? = nil,
      expand : Array(String)? = nil,
      file_link_data : Stripe::FileLinkCreationParams? = nil
    ) : Stripe::File
      data, _status_code, _headers = post_files_with_http_info(file: file, purpose: purpose, expand: expand, file_link_data: file_link_data)
      data
    end

    # &lt;p&gt;To upload a file to Stripe, you’ll need to send a request of type &lt;code&gt;multipart/form-data&lt;/code&gt;. The request should contain the file you would like to upload, as well as the parameters for creating a file.&lt;/p&gt;  &lt;p&gt;All of Stripe’s officially supported Client libraries should have support for sending &lt;code&gt;multipart/form-data&lt;/code&gt;.&lt;/p&gt;
    # @required @param file [::File?] A file to upload. The file should follow the specifications of RFC 2388 (which defines file transfers for the `multipart/form-data` protocol).
    # @required @param purpose [String?] The [purpose](https://stripe.com/docs/file-upload#uploading-a-file) of the uploaded file.
    # @optional @param expand [Array(String)?] Specifies which fields in the response should be expanded.
    # @optional @param file_link_data [Stripe::FileLinkCreationParams?]
    # @return [Tuple(Stripe::File, Integer, Hash)] Stripe::File, response status code and response headers
    def post_files_with_http_info(
      *,
      file : ::File? = nil,
      purpose : String? = nil,
      expand : Array(String)? = nil,
      file_link_data : Stripe::FileLinkCreationParams? = nil
    ) : Tuple(Stripe::File, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_post_files(file: file, purpose: purpose, expand: expand, file_link_data: file_link_data)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: FilesApi#post_files\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::File.from_json(body), status_code, headers)
    end

    # &lt;p&gt;To upload a file to Stripe, you’ll need to send a request of type &lt;code&gt;multipart/form-data&lt;/code&gt;. The request should contain the file you would like to upload, as well as the parameters for creating a file.&lt;/p&gt;  &lt;p&gt;All of Stripe’s officially supported Client libraries should have support for sending &lt;code&gt;multipart/form-data&lt;/code&gt;.&lt;/p&gt;
    # @required @param file [::File?] A file to upload. The file should follow the specifications of RFC 2388 (which defines file transfers for the `multipart/form-data` protocol).
    # @required @param purpose [String?] The [purpose](https://stripe.com/docs/file-upload#uploading-a-file) of the uploaded file.
    # @optional @param expand [Array(String)?] Specifies which fields in the response should be expanded.
    # @optional @param file_link_data [Stripe::FileLinkCreationParams?]
    # @return nil
    def post_files(
      *,
      file : ::File? = nil,
      purpose : String? = nil,
      expand : Array(String)? = nil,
      file_link_data : Stripe::FileLinkCreationParams? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_post_files(file: file, purpose: purpose, expand: expand, file_link_data: file_link_data).execute(&block)
    end

    POST_FILES_VALID_VALUES_FOR_PURPOSE = String.static_array("account_requirement", "additional_verification", "business_icon", "business_logo", "customer_signature", "dispute_evidence", "identity_document", "pci_document", "tax_document_user_upload", "terminal_reader_splashscreen")

    # @return Crest::Request
    def build_api_request_for_post_files(
      *,
      file : ::File? = nil,
      purpose : String? = nil,
      expand : Array(String)? = nil,
      file_link_data : Stripe::FileLinkCreationParams? = nil
    ) : Crest::Request
      if debugging
        Log.debug { "Calling API: FilesApi.post_files ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"file\" is required and cannot be null") if file.nil?

        raise ArgumentError.new("\"purpose\" is required and cannot be null") if purpose.nil?
        unless (_purpose = purpose).nil?
          OpenApi::EnumValidator.validate("purpose", _purpose, POST_FILES_VALID_VALUES_FOR_PURPOSE)
        end

        unless (_file_link_data = file_link_data).nil?
          _file_link_data.validate if _file_link_data.is_a?(OpenApi::Validatable)
        end
      end

      # resource path
      local_var_path = "/v1/files"

      # header parameters
      header_params : Hash(String, String) = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["multipart/form-data"])

      # cookie parameters
      cookie_params : Hash(String, String) = Hash(String, String).new

      # query parameters
      query_params : Hash(String, (String | Array(String) | JSON::Any)) = Hash(String, (String | Array(String) | JSON::Any)).new

      # form parameters
      form_params : Array(Tuple(String, Crest::ParamsValue)) | Nil = Array(Tuple(String, Crest::ParamsValue)).new
      form_params.concat(Crest::ZeroEnumeratedFlatParamsEncoder.flatten_params(JSON.parse(expand.to_json), "expand")) if !expand.nil?
      form_params << Tuple(String, Crest::ParamsValue).new("file", file) if !file.nil?
      form_params.concat(Crest::ZeroEnumeratedFlatParamsEncoder.flatten_params(JSON.parse(file_link_data.to_json), "file_link_data")) if !file_link_data.nil?
      form_params << Tuple(String, Crest::ParamsValue).new("purpose", purpose.to_s) if !purpose.nil?

      # http body (model)
      post_body : IO | String | Nil = nil

      # auth_names
      auth_names = ["basicAuth", "bearerAuth"]

      @api_client.build_api_request(
        http_method: :"POST",
        path: local_var_path,
        operation: "FilesApi.post_files",
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
