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
  class DocumentOptions
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "allowed_types", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter allowed_types : Array(String)? = nil

    VALID_VALUES_FOR_ALLOWED_TYPES = StaticArray["driving_license", "id_card", "passport"]

    @[JSON::Field(key: "require_id_number", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter require_id_number : Bool? = nil

    @[JSON::Field(key: "require_live_capture", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter require_live_capture : Bool? = nil

    @[JSON::Field(key: "require_matching_selfie", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter require_matching_selfie : Bool? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @allowed_types : Array(String)? = nil,
      @require_id_number : Bool? = nil,
      @require_live_capture : Bool? = nil,
      @require_matching_selfie : Bool? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      if _allowed_types = @allowed_types
        invalid_properties.push(OpenApi::EnumValidator.error_message("allowed_types", VALID_VALUES_FOR_ALLOWED_TYPES)) unless OpenApi::EnumValidator.valid?(_allowed_types, VALID_VALUES_FOR_ALLOWED_TYPES)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _allowed_types = @allowed_types
        return false unless OpenApi::EnumValidator.valid?(_allowed_types, VALID_VALUES_FOR_ALLOWED_TYPES)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] allowed_types Object to be assigned
    def allowed_types=(allowed_types : Array(String)?)
      if allowed_types.nil?
        return @allowed_types = nil
      end
      _allowed_types = allowed_types.not_nil!
      OpenApi::EnumValidator.validate("allowed_types", _allowed_types, VALID_VALUES_FOR_ALLOWED_TYPES)
      @allowed_types = _allowed_types
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] require_id_number Object to be assigned
    def require_id_number=(require_id_number : Bool?)
      if require_id_number.nil?
        return @require_id_number = nil
      end
      _require_id_number = require_id_number.not_nil!
      @require_id_number = _require_id_number
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] require_live_capture Object to be assigned
    def require_live_capture=(require_live_capture : Bool?)
      if require_live_capture.nil?
        return @require_live_capture = nil
      end
      _require_live_capture = require_live_capture.not_nil!
      @require_live_capture = _require_live_capture
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] require_matching_selfie Object to be assigned
    def require_matching_selfie=(require_matching_selfie : Bool?)
      if require_matching_selfie.nil?
        return @require_matching_selfie = nil
      end
      _require_matching_selfie = require_matching_selfie.not_nil!
      @require_matching_selfie = _require_matching_selfie
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@allowed_types, @require_id_number, @require_live_capture, @require_matching_selfie)
  end
end
