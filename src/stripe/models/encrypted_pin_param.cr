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
  # The desired new PIN for this card.
  class EncryptedPinParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "encrypted_number", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter encrypted_number : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @encrypted_number : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      if _encrypted_number = @encrypted_number
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("encrypted_number", _encrypted_number.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _encrypted_number = @encrypted_number
        return false if _encrypted_number.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] encrypted_number Object to be assigned
    def encrypted_number=(encrypted_number : String?)
      if encrypted_number.nil?
        return @encrypted_number = nil
      end
      _encrypted_number = encrypted_number.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("encrypted_number", _encrypted_number.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @encrypted_number = _encrypted_number
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@encrypted_number)
  end
end
