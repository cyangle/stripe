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
  class TransferDataSpecs
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "destination", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter destination : String? = nil
    MAX_LENGTH_FOR_DESTINATION = 5000

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    @[JSON::Field(key: "amount_percent", type: Float64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter amount_percent : Float64? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @destination : String? = nil,
      # Optional properties
      @amount : Int64? = nil,
      @amount_percent : Float64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"destination\" is required and cannot be null") if @destination.nil?

      unless (_destination = @destination).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("destination", _destination.to_s.size, MAX_LENGTH_FOR_DESTINATION)
          invalid_properties.push(max_length_error)
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @destination.nil?
      unless (_destination = @destination).nil?
        return false if _destination.to_s.size > MAX_LENGTH_FOR_DESTINATION
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] destination Object to be assigned
    def destination=(destination : String?)
      if destination.nil?
        raise ArgumentError.new("\"destination\" is required and cannot be null")
      end
      _destination = destination.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("destination", _destination.to_s.size, MAX_LENGTH_FOR_DESTINATION)
      @destination = _destination
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(amount : Int64?)
      if amount.nil?
        return @amount = nil
      end
      _amount = amount.not_nil!
      @amount = _amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount_percent Object to be assigned
    def amount_percent=(amount_percent : Float64?)
      if amount_percent.nil?
        return @amount_percent = nil
      end
      _amount_percent = amount_percent.not_nil!
      @amount_percent = _amount_percent
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@destination, @amount, @amount_percent)
  end
end
