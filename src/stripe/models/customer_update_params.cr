#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  # Controls what fields on Customer can be updated by the Checkout Session. Can only be provided when `customer` is provided.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class CustomerUpdateParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "address", type: String?, presence: true, ignore_serialize: address.nil? && !address_present?)]
    getter address : String?

    @[JSON::Field(ignore: true)]
    property? address_present : Bool = false

    ENUM_VALIDATOR_FOR_ADDRESS = EnumValidator.new("address", "String", ["auto", "never"])

    @[JSON::Field(key: "name", type: String?, presence: true, ignore_serialize: name.nil? && !name_present?)]
    getter name : String?

    @[JSON::Field(ignore: true)]
    property? name_present : Bool = false

    ENUM_VALIDATOR_FOR_NAME = EnumValidator.new("name", "String", ["auto", "never"])

    @[JSON::Field(key: "shipping", type: String?, presence: true, ignore_serialize: shipping.nil? && !shipping_present?)]
    getter shipping : String?

    @[JSON::Field(ignore: true)]
    property? shipping_present : Bool = false

    ENUM_VALIDATOR_FOR_SHIPPING = EnumValidator.new("shipping", "String", ["auto", "never"])

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
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_ADDRESS.error_message) unless ENUM_VALIDATOR_FOR_ADDRESS.valid?(@address)

      invalid_properties.push(ENUM_VALIDATOR_FOR_NAME.error_message) unless ENUM_VALIDATOR_FOR_NAME.valid?(@name)

      invalid_properties.push(ENUM_VALIDATOR_FOR_SHIPPING.error_message) unless ENUM_VALIDATOR_FOR_SHIPPING.valid?(@shipping)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_ADDRESS.valid?(@address)
      return false unless ENUM_VALIDATOR_FOR_NAME.valid?(@name)
      return false unless ENUM_VALIDATOR_FOR_SHIPPING.valid?(@shipping)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address Object to be assigned
    def address=(address)
      ENUM_VALIDATOR_FOR_ADDRESS.valid!(address)
      @address = address
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name Object to be assigned
    def name=(name)
      ENUM_VALIDATOR_FOR_NAME.valid!(name)
      @name = name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping Object to be assigned
    def shipping=(shipping)
      ENUM_VALIDATOR_FOR_SHIPPING.valid!(shipping)
      @shipping = shipping
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
    def_equals_and_hash(@address, @name, @shipping)
  end
end
