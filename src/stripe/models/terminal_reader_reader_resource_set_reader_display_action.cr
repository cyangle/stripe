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
  # Represents a reader action to set the reader display
  class TerminalReaderReaderResourceSetReaderDisplayAction
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Type of information to be displayed by the reader.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [cart]."
    VALID_VALUES_FOR__TYPE  = String.static_array("cart")

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "cart", type: Stripe::TerminalReaderReaderResourceSetReaderDisplayActionCart?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: cart.nil? && !cart_present?)]
    getter cart : Stripe::TerminalReaderReaderResourceSetReaderDisplayActionCart? = nil

    @[JSON::Field(ignore: true)]
    property? cart_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @_type : String? = nil,
      # Optional properties
      @cart : Stripe::TerminalReaderReaderResourceSetReaderDisplayActionCart? = nil
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
      unless (_cart = @cart).nil?
        invalid_properties.concat(_cart.list_invalid_properties_for("cart")) if _cart.is_a?(OpenApi::Validatable)
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

      unless (_cart = @cart).nil?
        return false if _cart.is_a?(OpenApi::Validatable) && !_cart.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type : String?)
      if _type.nil?
        raise ArgumentError.new("\"_type\" is required and cannot be null")
      end
      __type = _type.not_nil!
      OpenApi::EnumValidator.validate("_type", __type, VALID_VALUES_FOR__TYPE)
      @_type = __type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cart Object to be assigned
    def cart=(cart : Stripe::TerminalReaderReaderResourceSetReaderDisplayActionCart?)
      if cart.nil?
        return @cart = nil
      end
      _cart = cart.not_nil!
      _cart.validate if _cart.is_a?(OpenApi::Validatable)
      @cart = _cart
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@_type, @cart, @cart_present)
  end
end
