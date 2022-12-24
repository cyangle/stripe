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
  class TransformQuantity
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Divide usage by this number.
    @[JSON::Field(key: "divide_by", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter divide_by : Int64? = nil

    # After division, either round the result `up` or `down`.
    @[JSON::Field(key: "round", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter round : String? = nil
    ERROR_MESSAGE_FOR_ROUND = "invalid value for \"round\", must be one of [down, up]."
    VALID_VALUES_FOR_ROUND  = String.static_array("down", "up")

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @divide_by : Int64? = nil,
      @round : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"divide_by\" is required and cannot be null") if @divide_by.nil?

      invalid_properties.push("\"round\" is required and cannot be null") if @round.nil?

      unless (_round = @round).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_ROUND) unless OpenApi::EnumValidator.valid?(_round, VALID_VALUES_FOR_ROUND)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @divide_by.nil?

      return false if @round.nil?
      unless (_round = @round).nil?
        return false unless OpenApi::EnumValidator.valid?(_round, VALID_VALUES_FOR_ROUND)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] divide_by Object to be assigned
    def divide_by=(new_value : Int64?)
      raise ArgumentError.new("\"divide_by\" is required and cannot be null") if new_value.nil?

      @divide_by = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] round Object to be assigned
    def round=(new_value : String?)
      raise ArgumentError.new("\"round\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("round", new_value, VALID_VALUES_FOR_ROUND)
      end

      @round = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@divide_by, @round)
  end
end
