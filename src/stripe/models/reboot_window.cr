#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

module Stripe
  class RebootWindow
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Integer between 0 to 23 that represents the end hour of the reboot time window. The value must be different than the start_hour.
    @[JSON::Field(key: "end_hour", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter end_hour : Int64? = nil

    # Integer between 0 to 23 that represents the start hour of the reboot time window.
    @[JSON::Field(key: "start_hour", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter start_hour : Int64? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @end_hour : Int64? = nil,
      @start_hour : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"end_hour\" is required and cannot be null") if @end_hour.nil?

      invalid_properties.push("\"start_hour\" is required and cannot be null") if @start_hour.nil?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @end_hour.nil?

      return false if @start_hour.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] end_hour Object to be assigned
    def end_hour=(new_value : Int64?)
      raise ArgumentError.new("\"end_hour\" is required and cannot be null") if new_value.nil?

      @end_hour = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] start_hour Object to be assigned
    def start_hour=(new_value : Int64?)
      raise ArgumentError.new("\"start_hour\" is required and cannot be null") if new_value.nil?

      @start_hour = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@end_hour, @start_hour)
  end
end
