#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

module Stripe
  class ApiError < Exception
    getter code : Int32?
    getter response_headers : Hash(String, Array(String) | String)?

    # Usage examples:
    #   ApiError.new
    #   ApiError.new(message: "message")
    #   ApiError.new(code: 500, response_headers: {}, message: "")
    #   ApiError.new(code: 404, message: "Not Found")
    def initialize(@code, @message, @response_headers)
    end

    def initialize(@code, @message)
    end

    # Override to_s to display a friendly error message
    def to_s
      msg = ""
      msg = msg + "\nHTTP status code: #{code}" if @code
      msg = msg + "\nResponse headers: #{response_headers}" if @response_headers
      if @message.nil? || @message.to_s.empty?
        msg = msg + "\nError message: the server returns an error but the HTTP response body is empty."
      else
        msg = msg + "\nResponse body: #{@message}"
      end

      msg
    end
  end
end
