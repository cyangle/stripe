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
  @[JSON::Serializable::Options(emit_nulls: true)]
  class MandateOptionsParam2
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "amount", type: Int64?, presence: true, ignore_serialize: amount.nil? && !amount_present?)]
    property amount : Int64?

    @[JSON::Field(ignore: true)]
    property? amount_present : Bool = false

    @[JSON::Field(key: "amount_type", type: String?, presence: true, ignore_serialize: amount_type.nil? && !amount_type_present?)]
    getter amount_type : String?

    @[JSON::Field(ignore: true)]
    property? amount_type_present : Bool = false

    ENUM_VALIDATOR_FOR_AMOUNT_TYPE = EnumValidator.new("amount_type", "String", ["fixed", "maximum"])

    @[JSON::Field(key: "description", type: String?, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String?

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @amount : Int64? = nil,
      @amount_type : String? = nil,
      @description : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_AMOUNT_TYPE.error_message) unless ENUM_VALIDATOR_FOR_AMOUNT_TYPE.valid?(@amount_type)

      if !@description.nil? && @description.to_s.size > 200
        invalid_properties.push("invalid value for \"description\", the character length must be smaller than or equal to 200.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_AMOUNT_TYPE.valid?(@amount_type)
      return false if !@description.nil? && @description.to_s.size > 200

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount_type Object to be assigned
    def amount_type=(amount_type : String?)
      ENUM_VALIDATOR_FOR_AMOUNT_TYPE.valid!(amount_type)
      @amount_type = amount_type
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description : String?)
      if !description.nil? && description.to_s.size > 200
        raise ArgumentError.new("invalid value for \"description\", the character length must be smaller than or equal to 200.")
      end

      @description = description
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
    def_equals_and_hash(@amount, @amount_present, @amount_type, @amount_type_present, @description, @description_present)
  end
end
