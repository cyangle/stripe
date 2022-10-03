#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-08-01
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  #
  class SigmaScheduledQueryRunError
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Information about the run failure.
    @[JSON::Field(key: "message", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter message : String? = nil
    MAX_LENGTH_FOR_MESSAGE = 5000

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @message : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"message\" is required and cannot be null") if @message.nil?

      unless (_message = @message).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("message", _message.to_s.size, MAX_LENGTH_FOR_MESSAGE)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @message.nil?
      unless (_message = @message).nil?
        return false if _message.to_s.size > MAX_LENGTH_FOR_MESSAGE
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] message Object to be assigned
    def message=(message : String?)
      if message.nil?
        raise ArgumentError.new("\"message\" is required and cannot be null")
      end
      _message = message.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("message", _message.to_s.size, MAX_LENGTH_FOR_MESSAGE)
      @message = _message
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@message)
  end
end
