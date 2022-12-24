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
  class SecretServiceResourceScope
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The secret scope type.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [account, user]."
    VALID_VALUES_FOR__TYPE  = String.static_array("account", "user")

    # End of Required Properties

    # Optional Properties

    # The user ID, if type is set to \"user\"
    @[JSON::Field(key: "user", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter user : String? = nil
    MAX_LENGTH_FOR_USER = 5000

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @_type : String? = nil,
      # Optional properties
      @user : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?

      unless (__type = @_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR__TYPE) unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end
      unless (_user = @user).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("user", _user.to_s.size, MAX_LENGTH_FOR_USER)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @_type.nil?
      unless (__type = @_type).nil?
        return false unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end

      unless (_user = @user).nil?
        return false if _user.to_s.size > MAX_LENGTH_FOR_USER
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(new_value : String?)
      raise ArgumentError.new("\"_type\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("_type", new_value, VALID_VALUES_FOR__TYPE)
      end

      @_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] user Object to be assigned
    def user=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("user", new_value.to_s.size, MAX_LENGTH_FOR_USER)
      end

      @user = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@_type, @user)
  end
end
