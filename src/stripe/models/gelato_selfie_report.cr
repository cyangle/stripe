#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./gelato_selfie_report_error"

module Stripe
  # Result from a selfie check
  class GelatoSelfieReport
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # ID of the [File](https://stripe.com/docs/api/files) holding the image of the identity document used in this check.
    @[JSON::Field(key: "document", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter document : String? = nil
    MAX_LENGTH_FOR_DOCUMENT = 5000

    @[JSON::Field(key: "error", type: Stripe::GelatoSelfieReportError?, default: nil, required: true, nullable: true, emit_null: true)]
    getter error : Stripe::GelatoSelfieReportError? = nil

    # ID of the [File](https://stripe.com/docs/api/files) holding the image of the selfie used in this check.
    @[JSON::Field(key: "selfie", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter selfie : String? = nil
    MAX_LENGTH_FOR_SELFIE = 5000

    # Status of this `selfie` check.
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil
    ERROR_MESSAGE_FOR_STATUS = "invalid value for \"status\", must be one of [unverified, verified]."
    VALID_VALUES_FOR_STATUS  = String.static_array("unverified", "verified")

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @document : String? = nil,
      @error : Stripe::GelatoSelfieReportError? = nil,
      @selfie : String? = nil,
      @status : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_document = @document).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("document", _document.to_s.size, MAX_LENGTH_FOR_DOCUMENT)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_error = @error).nil?
        invalid_properties.concat(_error.list_invalid_properties_for("error")) if _error.is_a?(OpenApi::Validatable)
      end
      unless (_selfie = @selfie).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("selfie", _selfie.to_s.size, MAX_LENGTH_FOR_SELFIE)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"status\" is required and cannot be null") if @status.nil?

      unless (_status = @status).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_STATUS) unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_document = @document).nil?
        return false if _document.to_s.size > MAX_LENGTH_FOR_DOCUMENT
      end

      unless (_error = @error).nil?
        return false if _error.is_a?(OpenApi::Validatable) && !_error.valid?
      end

      unless (_selfie = @selfie).nil?
        return false if _selfie.to_s.size > MAX_LENGTH_FOR_SELFIE
      end

      return false if @status.nil?
      unless (_status = @status).nil?
        return false unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] document Object to be assigned
    def document=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("document", new_value.to_s.size, MAX_LENGTH_FOR_DOCUMENT)
      end

      @document = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] error Object to be assigned
    def error=(new_value : Stripe::GelatoSelfieReportError?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @error = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] selfie Object to be assigned
    def selfie=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("selfie", new_value.to_s.size, MAX_LENGTH_FOR_SELFIE)
      end

      @selfie = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(new_value : String?)
      raise ArgumentError.new("\"status\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("status", new_value, VALID_VALUES_FOR_STATUS)
      end

      @status = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@document, @error, @selfie, @status)
  end
end
