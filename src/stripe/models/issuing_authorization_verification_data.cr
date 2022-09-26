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
  class IssuingAuthorizationVerificationData
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Required properties

    # Whether the cardholder provided an address first line and if it matched the cardholder’s `billing.address.line1`.
    @[JSON::Field(key: "address_line1_check", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter address_line1_check : String? = nil

    ENUM_VALIDATOR_FOR_ADDRESS_LINE1_CHECK = EnumValidator.new("address_line1_check", "String", ["match", "mismatch", "not_provided"])

    # Whether the cardholder provided a postal code and if it matched the cardholder’s `billing.address.postal_code`.
    @[JSON::Field(key: "address_postal_code_check", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter address_postal_code_check : String? = nil

    ENUM_VALIDATOR_FOR_ADDRESS_POSTAL_CODE_CHECK = EnumValidator.new("address_postal_code_check", "String", ["match", "mismatch", "not_provided"])

    # Whether the cardholder provided a CVC and if it matched Stripe’s record.
    @[JSON::Field(key: "cvc_check", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter cvc_check : String? = nil

    ENUM_VALIDATOR_FOR_CVC_CHECK = EnumValidator.new("cvc_check", "String", ["match", "mismatch", "not_provided"])

    # Whether the cardholder provided an expiry date and if it matched Stripe’s record.
    @[JSON::Field(key: "expiry_check", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter expiry_check : String? = nil

    ENUM_VALIDATOR_FOR_EXPIRY_CHECK = EnumValidator.new("expiry_check", "String", ["match", "mismatch", "not_provided"])

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
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_ADDRESS_LINE1_CHECK.error_message) unless ENUM_VALIDATOR_FOR_ADDRESS_LINE1_CHECK.valid?(@address_line1_check, false)

      invalid_properties.push(ENUM_VALIDATOR_FOR_ADDRESS_POSTAL_CODE_CHECK.error_message) unless ENUM_VALIDATOR_FOR_ADDRESS_POSTAL_CODE_CHECK.valid?(@address_postal_code_check, false)

      invalid_properties.push(ENUM_VALIDATOR_FOR_CVC_CHECK.error_message) unless ENUM_VALIDATOR_FOR_CVC_CHECK.valid?(@cvc_check, false)

      invalid_properties.push(ENUM_VALIDATOR_FOR_EXPIRY_CHECK.error_message) unless ENUM_VALIDATOR_FOR_EXPIRY_CHECK.valid?(@expiry_check, false)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_ADDRESS_LINE1_CHECK.valid?(@address_line1_check, false)
      return false unless ENUM_VALIDATOR_FOR_ADDRESS_POSTAL_CODE_CHECK.valid?(@address_postal_code_check, false)
      return false unless ENUM_VALIDATOR_FOR_CVC_CHECK.valid?(@cvc_check, false)
      return false unless ENUM_VALIDATOR_FOR_EXPIRY_CHECK.valid?(@expiry_check, false)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address_line1_check Object to be assigned
    def address_line1_check=(address_line1_check : String?)
      if address_line1_check.nil?
        raise ArgumentError.new("\"address_line1_check\" is required and cannot be null")
      end
      _address_line1_check = address_line1_check.not_nil!
      ENUM_VALIDATOR_FOR_ADDRESS_LINE1_CHECK.valid!(_address_line1_check)
      @address_line1_check = address_line1_check
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address_postal_code_check Object to be assigned
    def address_postal_code_check=(address_postal_code_check : String?)
      if address_postal_code_check.nil?
        raise ArgumentError.new("\"address_postal_code_check\" is required and cannot be null")
      end
      _address_postal_code_check = address_postal_code_check.not_nil!
      ENUM_VALIDATOR_FOR_ADDRESS_POSTAL_CODE_CHECK.valid!(_address_postal_code_check)
      @address_postal_code_check = address_postal_code_check
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cvc_check Object to be assigned
    def cvc_check=(cvc_check : String?)
      if cvc_check.nil?
        raise ArgumentError.new("\"cvc_check\" is required and cannot be null")
      end
      _cvc_check = cvc_check.not_nil!
      ENUM_VALIDATOR_FOR_CVC_CHECK.valid!(_cvc_check)
      @cvc_check = cvc_check
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expiry_check Object to be assigned
    def expiry_check=(expiry_check : String?)
      if expiry_check.nil?
        raise ArgumentError.new("\"expiry_check\" is required and cannot be null")
      end
      _expiry_check = expiry_check.not_nil!
      ENUM_VALIDATOR_FOR_EXPIRY_CHECK.valid!(_expiry_check)
      @expiry_check = expiry_check
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@address_line1_check, @address_postal_code_check, @cvc_check, @expiry_check)
  end
end
