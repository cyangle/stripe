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
  class CustomerUpdateParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "address", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address : String? = nil
    ERROR_MESSAGE_FOR_ADDRESS = "invalid value for \"address\", must be one of [auto, never]."
    VALID_VALUES_FOR_ADDRESS  = String.static_array("auto", "never")

    @[JSON::Field(key: "name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter name : String? = nil
    ERROR_MESSAGE_FOR_NAME = "invalid value for \"name\", must be one of [auto, never]."
    VALID_VALUES_FOR_NAME  = String.static_array("auto", "never")

    @[JSON::Field(key: "shipping", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter shipping : String? = nil
    ERROR_MESSAGE_FOR_SHIPPING = "invalid value for \"shipping\", must be one of [auto, never]."
    VALID_VALUES_FOR_SHIPPING  = String.static_array("auto", "never")

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @address : String? = nil,
      @name : String? = nil,
      @shipping : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_address = @address).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_ADDRESS) unless OpenApi::EnumValidator.valid?(_address, VALID_VALUES_FOR_ADDRESS)
      end
      unless (_name = @name).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_NAME) unless OpenApi::EnumValidator.valid?(_name, VALID_VALUES_FOR_NAME)
      end
      unless (_shipping = @shipping).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_SHIPPING) unless OpenApi::EnumValidator.valid?(_shipping, VALID_VALUES_FOR_SHIPPING)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_address = @address).nil?
        return false unless OpenApi::EnumValidator.valid?(_address, VALID_VALUES_FOR_ADDRESS)
      end

      unless (_name = @name).nil?
        return false unless OpenApi::EnumValidator.valid?(_name, VALID_VALUES_FOR_NAME)
      end

      unless (_shipping = @shipping).nil?
        return false unless OpenApi::EnumValidator.valid?(_shipping, VALID_VALUES_FOR_SHIPPING)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address Object to be assigned
    def address=(address : String?)
      if address.nil?
        return @address = nil
      end
      _address = address.not_nil!
      OpenApi::EnumValidator.validate("address", _address, VALID_VALUES_FOR_ADDRESS)
      @address = _address
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name Object to be assigned
    def name=(name : String?)
      if name.nil?
        return @name = nil
      end
      _name = name.not_nil!
      OpenApi::EnumValidator.validate("name", _name, VALID_VALUES_FOR_NAME)
      @name = _name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping Object to be assigned
    def shipping=(shipping : String?)
      if shipping.nil?
        return @shipping = nil
      end
      _shipping = shipping.not_nil!
      OpenApi::EnumValidator.validate("shipping", _shipping, VALID_VALUES_FOR_SHIPPING)
      @shipping = _shipping
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@address, @name, @shipping)
  end
end
