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
  #
  @[JSON::Serializable::Options(emit_nulls: true)]
  class DeletedBankAccount
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Always true for a deleted object
    @[JSON::Field(key: "deleted", type: Bool)]
    getter deleted : Bool

    ENUM_VALIDATOR_FOR_DELETED = EnumValidator.new("deleted", "Bool", ["true"])

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String)]
    getter id : String

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String)]
    getter object : String

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["bank_account"])

    # Optional properties

    # Three-letter [ISO code for the currency](https://stripe.com/docs/payouts) paid out to the bank account.
    @[JSON::Field(key: "currency", type: String?, presence: true, ignore_serialize: currency.nil? && !currency_present?)]
    getter currency : String?

    @[JSON::Field(ignore: true)]
    property? currency_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @deleted : Bool,
      @id : String,
      @object : String,
      # Optional properties
      @currency : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_DELETED.error_message) unless ENUM_VALIDATOR_FOR_DELETED.valid?(@deleted, false)

      if @id.to_s.size > 5000
        invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)

      if !@currency.nil? && @currency.to_s.size > 5000
        invalid_properties.push("invalid value for \"currency\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_DELETED.valid?(@deleted, false)
      return false if @id.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false if !@currency.nil? && @currency.to_s.size > 5000

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] deleted Object to be assigned
    def deleted=(deleted : Bool)
      ENUM_VALIDATOR_FOR_DELETED.valid!(deleted, false)
      @deleted = deleted
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id : String)
      if id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      @id = id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object : String)
      ENUM_VALIDATOR_FOR_OBJECT.valid!(object, false)
      @object = object
    end

    # Custom attribute writer method with validation
    # @param [Object] currency Value to be assigned
    def currency=(currency : String?)
      if !currency.nil? && currency.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"currency\", the character length must be smaller than or equal to 5000.")
      end

      @currency = currency
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
    def_equals_and_hash(@deleted, @id, @object, @currency, @currency_present)
  end
end
