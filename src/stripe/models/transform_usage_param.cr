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
  # Apply a transformation to the reported usage or set quantity before computing the billed price. Cannot be combined with `tiers`.
  class TransformUsageParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "divide_by", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter divide_by : Int64? = nil

    @[JSON::Field(key: "round", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter round : String? = nil

    ENUM_VALIDATOR_FOR_ROUND = EnumValidator.new("round", "String", ["down", "up"])

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

      invalid_properties.push(ENUM_VALIDATOR_FOR_ROUND.error_message) unless ENUM_VALIDATOR_FOR_ROUND.valid?(@round, false)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @divide_by.nil?

      return false unless ENUM_VALIDATOR_FOR_ROUND.valid?(@round, false)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] divide_by Object to be assigned
    def divide_by=(divide_by : Int64?)
      if divide_by.nil?
        raise ArgumentError.new("\"divide_by\" is required and cannot be null")
      end
      _divide_by = divide_by.not_nil!
      @divide_by = _divide_by
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] round Object to be assigned
    def round=(round : String?)
      if round.nil?
        raise ArgumentError.new("\"round\" is required and cannot be null")
      end
      _round = round.not_nil!
      ENUM_VALIDATOR_FOR_ROUND.valid!(_round)
      @round = _round
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@divide_by, @round)
  end
end
