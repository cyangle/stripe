#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./forwarded_request_header"

module Stripe
  # Details about the response from the destination endpoint.
  class ForwardedResponseDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The response body from the destination endpoint to Stripe.
    @[JSON::Field(key: "body", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter body : String? = nil
    MAX_LENGTH_FOR_BODY = 5000

    # HTTP headers that the destination endpoint returned.
    @[JSON::Field(key: "headers", type: Array(Stripe::ForwardedRequestHeader)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter headers : Array(Stripe::ForwardedRequestHeader)? = nil

    # The HTTP status code that the destination endpoint returned.
    @[JSON::Field(key: "status", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : Int64? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @body : String? = nil,
      @headers : Array(Stripe::ForwardedRequestHeader)? = nil,
      @status : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"body\" is required and cannot be null") if @body.nil?

      unless (_body = @body).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("body", _body.to_s.size, MAX_LENGTH_FOR_BODY)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"headers\" is required and cannot be null") if @headers.nil?

      unless (_headers = @headers).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "headers", container: _headers)) if _headers.is_a?(Array)
      end
      invalid_properties.push("\"status\" is required and cannot be null") if @status.nil?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @body.nil?
      unless (_body = @body).nil?
        return false if _body.to_s.size > MAX_LENGTH_FOR_BODY
      end

      return false if @headers.nil?
      unless (_headers = @headers).nil?
        return false if _headers.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _headers)
      end

      return false if @status.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] body Object to be assigned
    def body=(new_value : String?)
      raise ArgumentError.new("\"body\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("body", new_value.to_s.size, MAX_LENGTH_FOR_BODY)
      end

      @body = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] headers Object to be assigned
    def headers=(new_value : Array(Stripe::ForwardedRequestHeader)?)
      raise ArgumentError.new("\"headers\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @headers = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(new_value : Int64?)
      raise ArgumentError.new("\"status\" is required and cannot be null") if new_value.nil?

      @status = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@body, @headers, @status)
  end
end
