#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  #
  class IssuingAuthorizationVerificationData
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Whether the cardholder provided an address first line and if it matched the cardholder’s `billing.address.line1`.
    @[JSON::Field(key: "address_line1_check", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter address_line1_check : String? = nil
    ERROR_MESSAGE_FOR_ADDRESS_LINE1_CHECK = "invalid value for \"address_line1_check\", must be one of [match, mismatch, not_provided]."
    VALID_VALUES_FOR_ADDRESS_LINE1_CHECK  = String.static_array("match", "mismatch", "not_provided")

    # Whether the cardholder provided a postal code and if it matched the cardholder’s `billing.address.postal_code`.
    @[JSON::Field(key: "address_postal_code_check", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter address_postal_code_check : String? = nil
    ERROR_MESSAGE_FOR_ADDRESS_POSTAL_CODE_CHECK = "invalid value for \"address_postal_code_check\", must be one of [match, mismatch, not_provided]."
    VALID_VALUES_FOR_ADDRESS_POSTAL_CODE_CHECK  = String.static_array("match", "mismatch", "not_provided")

    # Whether the cardholder provided a CVC and if it matched Stripe’s record.
    @[JSON::Field(key: "cvc_check", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter cvc_check : String? = nil
    ERROR_MESSAGE_FOR_CVC_CHECK = "invalid value for \"cvc_check\", must be one of [match, mismatch, not_provided]."
    VALID_VALUES_FOR_CVC_CHECK  = String.static_array("match", "mismatch", "not_provided")

    # Whether the cardholder provided an expiry date and if it matched Stripe’s record.
    @[JSON::Field(key: "expiry_check", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter expiry_check : String? = nil
    ERROR_MESSAGE_FOR_EXPIRY_CHECK = "invalid value for \"expiry_check\", must be one of [match, mismatch, not_provided]."
    VALID_VALUES_FOR_EXPIRY_CHECK  = String.static_array("match", "mismatch", "not_provided")

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @address_line1_check : String? = nil,
      @address_postal_code_check : String? = nil,
      @cvc_check : String? = nil,
      @expiry_check : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"address_line1_check\" is required and cannot be null") if @address_line1_check.nil?

      unless (_address_line1_check = @address_line1_check).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_ADDRESS_LINE1_CHECK) unless OpenApi::EnumValidator.valid?(_address_line1_check, VALID_VALUES_FOR_ADDRESS_LINE1_CHECK)
      end
      invalid_properties.push("\"address_postal_code_check\" is required and cannot be null") if @address_postal_code_check.nil?

      unless (_address_postal_code_check = @address_postal_code_check).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_ADDRESS_POSTAL_CODE_CHECK) unless OpenApi::EnumValidator.valid?(_address_postal_code_check, VALID_VALUES_FOR_ADDRESS_POSTAL_CODE_CHECK)
      end
      invalid_properties.push("\"cvc_check\" is required and cannot be null") if @cvc_check.nil?

      unless (_cvc_check = @cvc_check).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_CVC_CHECK) unless OpenApi::EnumValidator.valid?(_cvc_check, VALID_VALUES_FOR_CVC_CHECK)
      end
      invalid_properties.push("\"expiry_check\" is required and cannot be null") if @expiry_check.nil?

      unless (_expiry_check = @expiry_check).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_EXPIRY_CHECK) unless OpenApi::EnumValidator.valid?(_expiry_check, VALID_VALUES_FOR_EXPIRY_CHECK)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @address_line1_check.nil?
      unless (_address_line1_check = @address_line1_check).nil?
        return false unless OpenApi::EnumValidator.valid?(_address_line1_check, VALID_VALUES_FOR_ADDRESS_LINE1_CHECK)
      end

      return false if @address_postal_code_check.nil?
      unless (_address_postal_code_check = @address_postal_code_check).nil?
        return false unless OpenApi::EnumValidator.valid?(_address_postal_code_check, VALID_VALUES_FOR_ADDRESS_POSTAL_CODE_CHECK)
      end

      return false if @cvc_check.nil?
      unless (_cvc_check = @cvc_check).nil?
        return false unless OpenApi::EnumValidator.valid?(_cvc_check, VALID_VALUES_FOR_CVC_CHECK)
      end

      return false if @expiry_check.nil?
      unless (_expiry_check = @expiry_check).nil?
        return false unless OpenApi::EnumValidator.valid?(_expiry_check, VALID_VALUES_FOR_EXPIRY_CHECK)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address_line1_check Object to be assigned
    def address_line1_check=(new_value : String?)
      raise ArgumentError.new("\"address_line1_check\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("address_line1_check", new_value, VALID_VALUES_FOR_ADDRESS_LINE1_CHECK)
      end

      @address_line1_check = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address_postal_code_check Object to be assigned
    def address_postal_code_check=(new_value : String?)
      raise ArgumentError.new("\"address_postal_code_check\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("address_postal_code_check", new_value, VALID_VALUES_FOR_ADDRESS_POSTAL_CODE_CHECK)
      end

      @address_postal_code_check = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cvc_check Object to be assigned
    def cvc_check=(new_value : String?)
      raise ArgumentError.new("\"cvc_check\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("cvc_check", new_value, VALID_VALUES_FOR_CVC_CHECK)
      end

      @cvc_check = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expiry_check Object to be assigned
    def expiry_check=(new_value : String?)
      raise ArgumentError.new("\"expiry_check\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("expiry_check", new_value, VALID_VALUES_FOR_EXPIRY_CHECK)
      end

      @expiry_check = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@address_line1_check, @address_postal_code_check, @cvc_check, @expiry_check)
  end
end
