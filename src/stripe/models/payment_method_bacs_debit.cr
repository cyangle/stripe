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
  class PaymentMethodBacsDebit
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
    @[JSON::Field(key: "fingerprint", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: fingerprint.nil? && !fingerprint_present?)]
    getter fingerprint : String? = nil

    @[JSON::Field(ignore: true)]
    property? fingerprint_present : Bool = false

    # Last four digits of the bank account number.
    @[JSON::Field(key: "last4", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: last4.nil? && !last4_present?)]
    getter last4 : String? = nil

    @[JSON::Field(ignore: true)]
    property? last4_present : Bool = false

    # Sort code of the bank account. (e.g., `10-20-30`)
    @[JSON::Field(key: "sort_code", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: sort_code.nil? && !sort_code_present?)]
    getter sort_code : String? = nil

    @[JSON::Field(ignore: true)]
    property? sort_code_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @fingerprint : String? = nil,
      @last4 : String? = nil,
      @sort_code : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      if _fingerprint = @fingerprint
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("fingerprint", _fingerprint.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _last4 = @last4
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("last4", _last4.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _sort_code = @sort_code
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("sort_code", _sort_code.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _fingerprint = @fingerprint
        return false if _fingerprint.to_s.size > 5000
      end

      if _last4 = @last4
        return false if _last4.to_s.size > 5000
      end

      if _sort_code = @sort_code
        return false if _sort_code.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fingerprint Object to be assigned
    def fingerprint=(fingerprint : String?)
      if fingerprint.nil?
        return @fingerprint = nil
      end
      _fingerprint = fingerprint.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("fingerprint", _fingerprint.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @fingerprint = _fingerprint
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last4 Object to be assigned
    def last4=(last4 : String?)
      if last4.nil?
        return @last4 = nil
      end
      _last4 = last4.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("last4", _last4.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @last4 = _last4
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sort_code Object to be assigned
    def sort_code=(sort_code : String?)
      if sort_code.nil?
        return @sort_code = nil
      end
      _sort_code = sort_code.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("sort_code", _sort_code.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @sort_code = _sort_code
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@fingerprint, @fingerprint_present, @last4, @last4_present, @sort_code, @sort_code_present)
  end
end
