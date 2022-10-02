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
  class LinkedAccountOptionsParam1
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "permissions", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter permissions : Array(String)? = nil
    ERROR_MESSAGE_FOR_PERMISSIONS = "invalid value for \"permissions\", must be one of [balances, ownership, payment_method, transactions]."
    VALID_VALUES_FOR_PERMISSIONS  = StaticArray["balances", "ownership", "payment_method", "transactions"]

    @[JSON::Field(key: "return_url", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter return_url : String? = nil
    MAX_LENGTH_FOR_RETURN_URL = 5000

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @permissions : Array(String)? = nil,
      @return_url : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      if _permissions = @permissions
        invalid_properties.push(ERROR_MESSAGE_FOR_PERMISSIONS) unless OpenApi::EnumValidator.valid?(_permissions, VALID_VALUES_FOR_PERMISSIONS)
      end
      if _return_url = @return_url
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("return_url", _return_url.to_s.size, MAX_LENGTH_FOR_RETURN_URL)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _permissions = @permissions
        return false unless OpenApi::EnumValidator.valid?(_permissions, VALID_VALUES_FOR_PERMISSIONS)
      end

      if _return_url = @return_url
        return false if _return_url.to_s.size > MAX_LENGTH_FOR_RETURN_URL
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] permissions Object to be assigned
    def permissions=(permissions : Array(String)?)
      if permissions.nil?
        return @permissions = nil
      end
      _permissions = permissions.not_nil!
      OpenApi::EnumValidator.validate("permissions", _permissions, VALID_VALUES_FOR_PERMISSIONS)
      @permissions = _permissions
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] return_url Object to be assigned
    def return_url=(return_url : String?)
      if return_url.nil?
        return @return_url = nil
      end
      _return_url = return_url.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("return_url", _return_url.to_s.size, MAX_LENGTH_FOR_RETURN_URL)
      @return_url = _return_url
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@permissions, @return_url)
  end
end
