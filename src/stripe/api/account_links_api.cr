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
  class AccountLinksApi
    property api_client : ApiClient

    delegate client_side_validation, debugging, to: @api_client.config

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # <p>Creates an AccountLink object that includes a single-use Stripe URL that the platform can redirect their user to in order to take them through the Connect Onboarding flow.</p>
    # @required @param post_account_links_request [Stripe::PostAccountLinksRequest?]
    # @return [Stripe::AccountLink]
    def post_account_links(
      *,
      post_account_links_request : Stripe::PostAccountLinksRequest? = nil
    ) : Stripe::AccountLink
      data, _status_code, _headers = post_account_links_with_http_info(post_account_links_request: post_account_links_request)
      data
    end

    # &lt;p&gt;Creates an AccountLink object that includes a single-use Stripe URL that the platform can redirect their user to in order to take them through the Connect Onboarding flow.&lt;/p&gt;
    # @required @param post_account_links_request [Stripe::PostAccountLinksRequest?]
    # @return [Tuple(Stripe::AccountLink, Integer, Hash)] Stripe::AccountLink, response status code and response headers
    def post_account_links_with_http_info(
      *,
      post_account_links_request : Stripe::PostAccountLinksRequest? = nil
    ) : Tuple(Stripe::AccountLink, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_post_account_links(post_account_links_request: post_account_links_request)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: AccountLinksApi#post_account_links\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::AccountLink.from_json(body), status_code, headers)
    end

    # &lt;p&gt;Creates an AccountLink object that includes a single-use Stripe URL that the platform can redirect their user to in order to take them through the Connect Onboarding flow.&lt;/p&gt;
    # @required @param post_account_links_request [Stripe::PostAccountLinksRequest?]
    # @return nil
    def post_account_links(
      *,
      post_account_links_request : Stripe::PostAccountLinksRequest? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_post_account_links(post_account_links_request: post_account_links_request).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_post_account_links(
      *,
      post_account_links_request : Stripe::PostAccountLinksRequest? = nil
    ) : Crest::Request
      if debugging
        Log.debug { "Calling API: AccountLinksApi.post_account_links ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"post_account_links_request\" is required and cannot be null") if post_account_links_request.nil?
        unless (_post_account_links_request = post_account_links_request).nil?
          _post_account_links_request.validate if _post_account_links_request.is_a?(OpenApi::Validatable)
        end
      end

      # resource path
      local_var_path = "/v1/account_links"

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
      post_body : IO | String | Nil = @api_client.encode(body: post_account_links_request, content_type: header_params["Content-Type"]?) if !post_account_links_request.nil?

      # auth_names
      auth_names = ["basicAuth", "bearerAuth"]

      @api_client.build_api_request(
        http_method: :"POST",
        path: local_var_path,
        operation: "AccountLinksApi.post_account_links",
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
