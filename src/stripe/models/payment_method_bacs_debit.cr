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
  class PaymentMethodBacsDebit
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
    @[JSON::Field(key: "fingerprint", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter fingerprint : String? = nil
    MAX_LENGTH_FOR_FINGERPRINT = 5000

    # Last four digits of the bank account number.
    @[JSON::Field(key: "last4", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter last4 : String? = nil
    MAX_LENGTH_FOR_LAST4 = 5000

    # Sort code of the bank account. (e.g., `10-20-30`)
    @[JSON::Field(key: "sort_code", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter sort_code : String? = nil
    MAX_LENGTH_FOR_SORT_CODE = 5000

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @fingerprint : String? = nil,
      @last4 : String? = nil,
      @sort_code : String? = nil
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
      unless (_last4 = @last4).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("last4", _last4.to_s.size, MAX_LENGTH_FOR_LAST4)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_sort_code = @sort_code).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("sort_code", _sort_code.to_s.size, MAX_LENGTH_FOR_SORT_CODE)
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

      unless (_last4 = @last4).nil?
        return false if _last4.to_s.size > MAX_LENGTH_FOR_LAST4
      end

      unless (_sort_code = @sort_code).nil?
        return false if _sort_code.to_s.size > MAX_LENGTH_FOR_SORT_CODE
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
    # @param [Object] last4 Object to be assigned
    def last4=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("last4", new_value.to_s.size, MAX_LENGTH_FOR_LAST4)
      end

      @last4 = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sort_code Object to be assigned
    def sort_code=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("sort_code", new_value.to_s.size, MAX_LENGTH_FOR_SORT_CODE)
      end

      @sort_code = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@fingerprint, @last4, @sort_code)
  end
end
