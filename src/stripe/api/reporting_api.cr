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
  class ReportingApi
    property api_client : ApiClient

    delegate client_side_validation, debugging, to: @api_client.config

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # <p>Returns a list of Report Runs, with the most recent appearing first.</p>
    # @optional @param ending_before [String?] A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
    # @optional @param starting_after [String?] A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
    # @optional @param limit [Int32?] A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @optional @param created [Stripe::GetAccountsCreatedParameter?]
    # @return [Stripe::FinancialReportingFinanceReportRunList]
    def get_reporting_report_runs(
      *,
      ending_before : String? = nil,
      starting_after : String? = nil,
      limit : Int64? = nil,
      expand : Array(Array(String))? = nil,
      created : Stripe::GetAccountsCreatedParameter? = nil
    ) : Stripe::FinancialReportingFinanceReportRunList
      data, _status_code, _headers = get_reporting_report_runs_with_http_info(ending_before: ending_before, starting_after: starting_after, limit: limit, expand: expand, created: created)
      data
    end

    # &lt;p&gt;Returns a list of Report Runs, with the most recent appearing first.&lt;/p&gt;
    # @optional @param ending_before [String?] A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
    # @optional @param starting_after [String?] A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
    # @optional @param limit [Int32?] A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @optional @param created [Stripe::GetAccountsCreatedParameter?]
    # @return [Tuple(Stripe::FinancialReportingFinanceReportRunList, Integer, Hash)] Stripe::FinancialReportingFinanceReportRunList, response status code and response headers
    def get_reporting_report_runs_with_http_info(
      *,
      ending_before : String? = nil,
      starting_after : String? = nil,
      limit : Int64? = nil,
      expand : Array(Array(String))? = nil,
      created : Stripe::GetAccountsCreatedParameter? = nil
    ) : Tuple(Stripe::FinancialReportingFinanceReportRunList, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_get_reporting_report_runs(ending_before: ending_before, starting_after: starting_after, limit: limit, expand: expand, created: created)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: ReportingApi#get_reporting_report_runs\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::FinancialReportingFinanceReportRunList.from_json(body), status_code, headers)
    end

    # &lt;p&gt;Returns a list of Report Runs, with the most recent appearing first.&lt;/p&gt;
    # @optional @param ending_before [String?] A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
    # @optional @param starting_after [String?] A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
    # @optional @param limit [Int32?] A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @optional @param created [Stripe::GetAccountsCreatedParameter?]
    # @return nil
    def get_reporting_report_runs(
      *,
      ending_before : String? = nil,
      starting_after : String? = nil,
      limit : Int64? = nil,
      expand : Array(Array(String))? = nil,
      created : Stripe::GetAccountsCreatedParameter? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_get_reporting_report_runs(ending_before: ending_before, starting_after: starting_after, limit: limit, expand: expand, created: created).execute(&block)
    end

    GET_REPORTING_REPORT_RUNS_MAX_LENGTH_FOR_ENDING_BEFORE  = 5000
    GET_REPORTING_REPORT_RUNS_MAX_LENGTH_FOR_STARTING_AFTER = 5000

    # @return Crest::Request
    def build_api_request_for_get_reporting_report_runs(
      *,
      ending_before : String? = nil,
      starting_after : String? = nil,
      limit : Int64? = nil,
      expand : Array(Array(String))? = nil,
      created : Stripe::GetAccountsCreatedParameter? = nil
    ) : Crest::Request
      if debugging
        Log.debug { "Calling API: ReportingApi.get_reporting_report_runs ..." }
      end

      if client_side_validation
        unless (_ending_before = ending_before).nil?
          OpenApi::PrimitiveValidator.validate_max_length("ending_before", ending_before.to_s.size, GET_REPORTING_REPORT_RUNS_MAX_LENGTH_FOR_ENDING_BEFORE)
        end
        unless (_starting_after = starting_after).nil?
          OpenApi::PrimitiveValidator.validate_max_length("starting_after", starting_after.to_s.size, GET_REPORTING_REPORT_RUNS_MAX_LENGTH_FOR_STARTING_AFTER)
        end

        unless (_created = created).nil?
          _created.validate if _created.is_a?(OpenApi::Validatable)
        end
      end

      # resource path
      local_var_path = "/v1/reporting/report_runs"

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
        operation: "ReportingApi.get_reporting_report_runs",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # <p>Retrieves the details of an existing Report Run.</p>
    # @required @param report_run [String?]
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Stripe::ReportingReportRun]
    def get_reporting_report_runs_report_run(
      *,
      report_run : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Stripe::ReportingReportRun
      data, _status_code, _headers = get_reporting_report_runs_report_run_with_http_info(report_run: report_run, expand: expand)
      data
    end

    # &lt;p&gt;Retrieves the details of an existing Report Run.&lt;/p&gt;
    # @required @param report_run [String?]
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Tuple(Stripe::ReportingReportRun, Integer, Hash)] Stripe::ReportingReportRun, response status code and response headers
    def get_reporting_report_runs_report_run_with_http_info(
      *,
      report_run : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Tuple(Stripe::ReportingReportRun, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_get_reporting_report_runs_report_run(report_run: report_run, expand: expand)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: ReportingApi#get_reporting_report_runs_report_run\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::ReportingReportRun.from_json(body), status_code, headers)
    end

    # &lt;p&gt;Retrieves the details of an existing Report Run.&lt;/p&gt;
    # @required @param report_run [String?]
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return nil
    def get_reporting_report_runs_report_run(
      *,
      report_run : String? = nil,
      expand : Array(Array(String))? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_get_reporting_report_runs_report_run(report_run: report_run, expand: expand).execute(&block)
    end

    GET_REPORTING_REPORT_RUNS_REPORT_RUN_MAX_LENGTH_FOR_REPORT_RUN = 5000

    # @return Crest::Request
    def build_api_request_for_get_reporting_report_runs_report_run(
      *,
      report_run : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Crest::Request
      if debugging
        Log.debug { "Calling API: ReportingApi.get_reporting_report_runs_report_run ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"report_run\" is required and cannot be null") if report_run.nil?
        unless (_report_run = report_run).nil?
          OpenApi::PrimitiveValidator.validate_max_length("report_run", report_run.to_s.size, GET_REPORTING_REPORT_RUNS_REPORT_RUN_MAX_LENGTH_FOR_REPORT_RUN)
        end
      end

      # resource path
      local_var_path = "/v1/reporting/report_runs/{report_run}".sub("{" + "report_run" + "}", URI.encode_path(report_run.to_s))

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
        operation: "ReportingApi.get_reporting_report_runs_report_run",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # <p>Returns a full list of Report Types.</p>
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Stripe::FinancialReportingFinanceReportTypeList]
    def get_reporting_report_types(
      *,
      expand : Array(Array(String))? = nil
    ) : Stripe::FinancialReportingFinanceReportTypeList
      data, _status_code, _headers = get_reporting_report_types_with_http_info(expand: expand)
      data
    end

    # &lt;p&gt;Returns a full list of Report Types.&lt;/p&gt;
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Tuple(Stripe::FinancialReportingFinanceReportTypeList, Integer, Hash)] Stripe::FinancialReportingFinanceReportTypeList, response status code and response headers
    def get_reporting_report_types_with_http_info(
      *,
      expand : Array(Array(String))? = nil
    ) : Tuple(Stripe::FinancialReportingFinanceReportTypeList, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_get_reporting_report_types(expand: expand)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: ReportingApi#get_reporting_report_types\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::FinancialReportingFinanceReportTypeList.from_json(body), status_code, headers)
    end

    # &lt;p&gt;Returns a full list of Report Types.&lt;/p&gt;
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return nil
    def get_reporting_report_types(
      *,
      expand : Array(Array(String))? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_get_reporting_report_types(expand: expand).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_get_reporting_report_types(
      *,
      expand : Array(Array(String))? = nil
    ) : Crest::Request
      if debugging
        Log.debug { "Calling API: ReportingApi.get_reporting_report_types ..." }
      end

      if client_side_validation
      end

      # resource path
      local_var_path = "/v1/reporting/report_types"

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
        operation: "ReportingApi.get_reporting_report_types",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # <p>Retrieves the details of a Report Type. (Certain report types require a <a href=\"https://stripe.com/docs/keys#test-live-modes\">live-mode API key</a>.)</p>
    # @required @param report_type [String?]
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Stripe::ReportingReportType]
    def get_reporting_report_types_report_type(
      *,
      report_type : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Stripe::ReportingReportType
      data, _status_code, _headers = get_reporting_report_types_report_type_with_http_info(report_type: report_type, expand: expand)
      data
    end

    # &lt;p&gt;Retrieves the details of a Report Type. (Certain report types require a &lt;a href&#x3D;\&quot;https://stripe.com/docs/keys#test-live-modes\&quot;&gt;live-mode API key&lt;/a&gt;.)&lt;/p&gt;
    # @required @param report_type [String?]
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Tuple(Stripe::ReportingReportType, Integer, Hash)] Stripe::ReportingReportType, response status code and response headers
    def get_reporting_report_types_report_type_with_http_info(
      *,
      report_type : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Tuple(Stripe::ReportingReportType, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_get_reporting_report_types_report_type(report_type: report_type, expand: expand)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: ReportingApi#get_reporting_report_types_report_type\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::ReportingReportType.from_json(body), status_code, headers)
    end

    # &lt;p&gt;Retrieves the details of a Report Type. (Certain report types require a &lt;a href&#x3D;\&quot;https://stripe.com/docs/keys#test-live-modes\&quot;&gt;live-mode API key&lt;/a&gt;.)&lt;/p&gt;
    # @required @param report_type [String?]
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return nil
    def get_reporting_report_types_report_type(
      *,
      report_type : String? = nil,
      expand : Array(Array(String))? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_get_reporting_report_types_report_type(report_type: report_type, expand: expand).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_get_reporting_report_types_report_type(
      *,
      report_type : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Crest::Request
      if debugging
        Log.debug { "Calling API: ReportingApi.get_reporting_report_types_report_type ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"report_type\" is required and cannot be null") if report_type.nil?
      end

      # resource path
      local_var_path = "/v1/reporting/report_types/{report_type}".sub("{" + "report_type" + "}", URI.encode_path(report_type.to_s))

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
        operation: "ReportingApi.get_reporting_report_types_report_type",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # <p>Creates a new object and begin running the report. (Certain report types require a <a href=\"https://stripe.com/docs/keys#test-live-modes\">live-mode API key</a>.)</p>
    # @required @param post_reporting_report_runs_request [Stripe::PostReportingReportRunsRequest?]
    # @return [Stripe::ReportingReportRun]
    def post_reporting_report_runs(
      *,
      post_reporting_report_runs_request : Stripe::PostReportingReportRunsRequest? = nil
    ) : Stripe::ReportingReportRun
      data, _status_code, _headers = post_reporting_report_runs_with_http_info(post_reporting_report_runs_request: post_reporting_report_runs_request)
      data
    end

    # &lt;p&gt;Creates a new object and begin running the report. (Certain report types require a &lt;a href&#x3D;\&quot;https://stripe.com/docs/keys#test-live-modes\&quot;&gt;live-mode API key&lt;/a&gt;.)&lt;/p&gt;
    # @required @param post_reporting_report_runs_request [Stripe::PostReportingReportRunsRequest?]
    # @return [Tuple(Stripe::ReportingReportRun, Integer, Hash)] Stripe::ReportingReportRun, response status code and response headers
    def post_reporting_report_runs_with_http_info(
      *,
      post_reporting_report_runs_request : Stripe::PostReportingReportRunsRequest? = nil
    ) : Tuple(Stripe::ReportingReportRun, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_post_reporting_report_runs(post_reporting_report_runs_request: post_reporting_report_runs_request)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: ReportingApi#post_reporting_report_runs\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::ReportingReportRun.from_json(body), status_code, headers)
    end

    # &lt;p&gt;Creates a new object and begin running the report. (Certain report types require a &lt;a href&#x3D;\&quot;https://stripe.com/docs/keys#test-live-modes\&quot;&gt;live-mode API key&lt;/a&gt;.)&lt;/p&gt;
    # @required @param post_reporting_report_runs_request [Stripe::PostReportingReportRunsRequest?]
    # @return nil
    def post_reporting_report_runs(
      *,
      post_reporting_report_runs_request : Stripe::PostReportingReportRunsRequest? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_post_reporting_report_runs(post_reporting_report_runs_request: post_reporting_report_runs_request).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_post_reporting_report_runs(
      *,
      post_reporting_report_runs_request : Stripe::PostReportingReportRunsRequest? = nil
    ) : Crest::Request
      if debugging
        Log.debug { "Calling API: ReportingApi.post_reporting_report_runs ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"post_reporting_report_runs_request\" is required and cannot be null") if post_reporting_report_runs_request.nil?
        unless (_post_reporting_report_runs_request = post_reporting_report_runs_request).nil?
          _post_reporting_report_runs_request.validate if _post_reporting_report_runs_request.is_a?(OpenApi::Validatable)
        end
      end

      # resource path
      local_var_path = "/v1/reporting/report_runs"

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
      post_body : IO | String | Nil = @api_client.encode(body: post_reporting_report_runs_request, content_type: header_params["Content-Type"]?) if !post_reporting_report_runs_request.nil?

      # auth_names
      auth_names = ["basicAuth", "bearerAuth"]

      @api_client.build_api_request(
        http_method: :"POST",
        path: local_var_path,
        operation: "ReportingApi.post_reporting_report_runs",
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