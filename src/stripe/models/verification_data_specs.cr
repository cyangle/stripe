#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./authentication_exemption_specs"
require "./three_d_secure_specs"

module Stripe
  class VerificationDataSpecs
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Whether the cardholder provided an address first line and if it matched the cardholder’s `billing.address.line1`.
    @[JSON::Field(key: "address_line1_check", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address_line1_check : String? = nil
    ERROR_MESSAGE_FOR_ADDRESS_LINE1_CHECK = "invalid value for \"address_line1_check\", must be one of [match, mismatch, not_provided]."
    VALID_VALUES_FOR_ADDRESS_LINE1_CHECK  = String.static_array("match", "mismatch", "not_provided")

    # Whether the cardholder provided a postal code and if it matched the cardholder’s `billing.address.postal_code`.
    @[JSON::Field(key: "address_postal_code_check", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address_postal_code_check : String? = nil
    ERROR_MESSAGE_FOR_ADDRESS_POSTAL_CODE_CHECK = "invalid value for \"address_postal_code_check\", must be one of [match, mismatch, not_provided]."
    VALID_VALUES_FOR_ADDRESS_POSTAL_CODE_CHECK  = String.static_array("match", "mismatch", "not_provided")

    @[JSON::Field(key: "authentication_exemption", type: Stripe::AuthenticationExemptionSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter authentication_exemption : Stripe::AuthenticationExemptionSpecs? = nil

    # Whether the cardholder provided a CVC and if it matched Stripe’s record.
    @[JSON::Field(key: "cvc_check", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter cvc_check : String? = nil
    ERROR_MESSAGE_FOR_CVC_CHECK = "invalid value for \"cvc_check\", must be one of [match, mismatch, not_provided]."
    VALID_VALUES_FOR_CVC_CHECK  = String.static_array("match", "mismatch", "not_provided")

    # Whether the cardholder provided an expiry date and if it matched Stripe’s record.
    @[JSON::Field(key: "expiry_check", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expiry_check : String? = nil
    ERROR_MESSAGE_FOR_EXPIRY_CHECK = "invalid value for \"expiry_check\", must be one of [match, mismatch, not_provided]."
    VALID_VALUES_FOR_EXPIRY_CHECK  = String.static_array("match", "mismatch", "not_provided")

    @[JSON::Field(key: "three_d_secure", type: Stripe::ThreeDSecureSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter three_d_secure : Stripe::ThreeDSecureSpecs? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @address_line1_check : String? = nil,
      @address_postal_code_check : String? = nil,
      @authentication_exemption : Stripe::AuthenticationExemptionSpecs? = nil,
      @cvc_check : String? = nil,
      @expiry_check : String? = nil,
      @three_d_secure : Stripe::ThreeDSecureSpecs? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_address_line1_check = @address_line1_check).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_ADDRESS_LINE1_CHECK) unless OpenApi::EnumValidator.valid?(_address_line1_check, VALID_VALUES_FOR_ADDRESS_LINE1_CHECK)
      end
      unless (_address_postal_code_check = @address_postal_code_check).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_ADDRESS_POSTAL_CODE_CHECK) unless OpenApi::EnumValidator.valid?(_address_postal_code_check, VALID_VALUES_FOR_ADDRESS_POSTAL_CODE_CHECK)
      end
      unless (_authentication_exemption = @authentication_exemption).nil?
        invalid_properties.concat(_authentication_exemption.list_invalid_properties_for("authentication_exemption")) if _authentication_exemption.is_a?(OpenApi::Validatable)
      end
      unless (_cvc_check = @cvc_check).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_CVC_CHECK) unless OpenApi::EnumValidator.valid?(_cvc_check, VALID_VALUES_FOR_CVC_CHECK)
      end
      unless (_expiry_check = @expiry_check).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_EXPIRY_CHECK) unless OpenApi::EnumValidator.valid?(_expiry_check, VALID_VALUES_FOR_EXPIRY_CHECK)
      end
      unless (_three_d_secure = @three_d_secure).nil?
        invalid_properties.concat(_three_d_secure.list_invalid_properties_for("three_d_secure")) if _three_d_secure.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_address_line1_check = @address_line1_check).nil?
        return false unless OpenApi::EnumValidator.valid?(_address_line1_check, VALID_VALUES_FOR_ADDRESS_LINE1_CHECK)
      end

      unless (_address_postal_code_check = @address_postal_code_check).nil?
        return false unless OpenApi::EnumValidator.valid?(_address_postal_code_check, VALID_VALUES_FOR_ADDRESS_POSTAL_CODE_CHECK)
      end

      unless (_authentication_exemption = @authentication_exemption).nil?
        return false if _authentication_exemption.is_a?(OpenApi::Validatable) && !_authentication_exemption.valid?
      end

      unless (_cvc_check = @cvc_check).nil?
        return false unless OpenApi::EnumValidator.valid?(_cvc_check, VALID_VALUES_FOR_CVC_CHECK)
      end

      unless (_expiry_check = @expiry_check).nil?
        return false unless OpenApi::EnumValidator.valid?(_expiry_check, VALID_VALUES_FOR_EXPIRY_CHECK)
      end

      unless (_three_d_secure = @three_d_secure).nil?
        return false if _three_d_secure.is_a?(OpenApi::Validatable) && !_three_d_secure.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address_line1_check Object to be assigned
    def address_line1_check=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("address_line1_check", new_value, VALID_VALUES_FOR_ADDRESS_LINE1_CHECK)
      end

      @address_line1_check = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address_postal_code_check Object to be assigned
    def address_postal_code_check=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("address_postal_code_check", new_value, VALID_VALUES_FOR_ADDRESS_POSTAL_CODE_CHECK)
      end

      @address_postal_code_check = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] authentication_exemption Object to be assigned
    def authentication_exemption=(new_value : Stripe::AuthenticationExemptionSpecs?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @authentication_exemption = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cvc_check Object to be assigned
    def cvc_check=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("cvc_check", new_value, VALID_VALUES_FOR_CVC_CHECK)
      end

      @cvc_check = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expiry_check Object to be assigned
    def expiry_check=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("expiry_check", new_value, VALID_VALUES_FOR_EXPIRY_CHECK)
      end

      @expiry_check = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] three_d_secure Object to be assigned
    def three_d_secure=(new_value : Stripe::ThreeDSecureSpecs?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @three_d_secure = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@address_line1_check, @address_postal_code_check, @authentication_exemption, @cvc_check, @expiry_check, @three_d_secure)
  end
end
