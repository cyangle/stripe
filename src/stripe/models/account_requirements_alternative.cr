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
  class AccountRequirementsAlternative
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Fields that can be provided to satisfy all fields in `original_fields_due`.
    @[JSON::Field(key: "alternative_fields_due", type: Array(String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter alternative_fields_due : Array(String)? = nil

    # Fields that are due and can be satisfied by providing all fields in `alternative_fields_due`.
    @[JSON::Field(key: "original_fields_due", type: Array(String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter original_fields_due : Array(String)? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @alternative_fields_due : Array(String)? = nil,
      @original_fields_due : Array(String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"alternative_fields_due\" is required and cannot be null") if @alternative_fields_due.nil?

      invalid_properties.push("\"original_fields_due\" is required and cannot be null") if @original_fields_due.nil?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @alternative_fields_due.nil?

      return false if @original_fields_due.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] alternative_fields_due Object to be assigned
    def alternative_fields_due=(alternative_fields_due : Array(String)?)
      if alternative_fields_due.nil?
        raise ArgumentError.new("\"alternative_fields_due\" is required and cannot be null")
      end
      _alternative_fields_due = alternative_fields_due.not_nil!
      @alternative_fields_due = _alternative_fields_due
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] original_fields_due Object to be assigned
    def original_fields_due=(original_fields_due : Array(String)?)
      if original_fields_due.nil?
        raise ArgumentError.new("\"original_fields_due\" is required and cannot be null")
      end
      _original_fields_due = original_fields_due.not_nil!
      @original_fields_due = _original_fields_due
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@alternative_fields_due, @original_fields_due)
  end
end
