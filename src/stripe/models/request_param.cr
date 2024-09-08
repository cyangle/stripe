#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./header_param"

module Stripe
  class RequestParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The body payload to send to the destination endpoint.
    @[JSON::Field(key: "body", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter body : String? = nil
    MAX_LENGTH_FOR_BODY = 5000

    # The headers to include in the forwarded request. Can be omitted if no additional headers (excluding Stripe-generated ones such as the Content-Type header) should be included.
    @[JSON::Field(key: "headers", type: Array(Stripe::HeaderParam)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter headers : Array(Stripe::HeaderParam)? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @body : String? = nil,
      @headers : Array(Stripe::HeaderParam)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_body = @body).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("body", _body.to_s.size, MAX_LENGTH_FOR_BODY)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_headers = @headers).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "headers", container: _headers)) if _headers.is_a?(Array)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_body = @body).nil?
        return false if _body.to_s.size > MAX_LENGTH_FOR_BODY
      end

      unless (_headers = @headers).nil?
        return false if _headers.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _headers)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] body Object to be assigned
    def body=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("body", new_value.to_s.size, MAX_LENGTH_FOR_BODY)
      end

      @body = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] headers Object to be assigned
    def headers=(new_value : Array(Stripe::HeaderParam)?)
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @headers = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@body, @headers)
  end
end