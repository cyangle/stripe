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
  class LinkedFlowsParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "source_flow_type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter source_flow_type : String? = nil
    ERROR_MESSAGE_FOR_SOURCE_FLOW_TYPE = "invalid value for \"source_flow_type\", must be one of [credit_reversal, other, outbound_payment, payout]."
    VALID_VALUES_FOR_SOURCE_FLOW_TYPE  = StaticArray["credit_reversal", "other", "outbound_payment", "payout"]

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @source_flow_type : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"source_flow_type\" is required and cannot be null") if @source_flow_type.nil?

      unless (_source_flow_type = @source_flow_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_SOURCE_FLOW_TYPE) unless OpenApi::EnumValidator.valid?(_source_flow_type, VALID_VALUES_FOR_SOURCE_FLOW_TYPE)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @source_flow_type.nil?
      unless (_source_flow_type = @source_flow_type).nil?
        return false unless OpenApi::EnumValidator.valid?(_source_flow_type, VALID_VALUES_FOR_SOURCE_FLOW_TYPE)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source_flow_type Object to be assigned
    def source_flow_type=(source_flow_type : String?)
      if source_flow_type.nil?
        raise ArgumentError.new("\"source_flow_type\" is required and cannot be null")
      end
      _source_flow_type = source_flow_type.not_nil!
      OpenApi::EnumValidator.validate("source_flow_type", _source_flow_type, VALID_VALUES_FOR_SOURCE_FLOW_TYPE)
      @source_flow_type = _source_flow_type
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@source_flow_type)
  end
end
