#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

module Stripe
  #
  class PaymentMethodDetailsSwish
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Uniquely identifies the payer's Swish account. You can use this attribute to check whether two Swish transactions were paid for by the same payer
    @[JSON::Field(key: "fingerprint", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter fingerprint : String? = nil
    MAX_LENGTH_FOR_FINGERPRINT = 5000

    # Payer bank reference number for the payment
    @[JSON::Field(key: "payment_reference", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter payment_reference : String? = nil
    MAX_LENGTH_FOR_PAYMENT_REFERENCE = 5000

    # The last four digits of the Swish account phone number
    @[JSON::Field(key: "verified_phone_last4", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter verified_phone_last4 : String? = nil
    MAX_LENGTH_FOR_VERIFIED_PHONE_LAST4 = 5000

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @fingerprint : String? = nil,
      @payment_reference : String? = nil,
      @verified_phone_last4 : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_fingerprint = @fingerprint).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("fingerprint", _fingerprint.to_s.size, MAX_LENGTH_FOR_FINGERPRINT)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_payment_reference = @payment_reference).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("payment_reference", _payment_reference.to_s.size, MAX_LENGTH_FOR_PAYMENT_REFERENCE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_verified_phone_last4 = @verified_phone_last4).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("verified_phone_last4", _verified_phone_last4.to_s.size, MAX_LENGTH_FOR_VERIFIED_PHONE_LAST4)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_fingerprint = @fingerprint).nil?
        return false if _fingerprint.to_s.size > MAX_LENGTH_FOR_FINGERPRINT
      end

      unless (_payment_reference = @payment_reference).nil?
        return false if _payment_reference.to_s.size > MAX_LENGTH_FOR_PAYMENT_REFERENCE
      end

      unless (_verified_phone_last4 = @verified_phone_last4).nil?
        return false if _verified_phone_last4.to_s.size > MAX_LENGTH_FOR_VERIFIED_PHONE_LAST4
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fingerprint Object to be assigned
    def fingerprint=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("fingerprint", new_value.to_s.size, MAX_LENGTH_FOR_FINGERPRINT)
      end

      @fingerprint = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_reference Object to be assigned
    def payment_reference=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("payment_reference", new_value.to_s.size, MAX_LENGTH_FOR_PAYMENT_REFERENCE)
      end

      @payment_reference = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] verified_phone_last4 Object to be assigned
    def verified_phone_last4=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("verified_phone_last4", new_value.to_s.size, MAX_LENGTH_FOR_VERIFIED_PHONE_LAST4)
      end

      @verified_phone_last4 = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@fingerprint, @payment_reference, @verified_phone_last4)
  end
end
