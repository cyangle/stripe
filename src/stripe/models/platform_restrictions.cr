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
  class PlatformRestrictions
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "inbound_flows", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter inbound_flows : String? = nil
    ERROR_MESSAGE_FOR_INBOUND_FLOWS = "invalid value for \"inbound_flows\", must be one of [restricted, unrestricted]."
    VALID_VALUES_FOR_INBOUND_FLOWS  = String.static_array("restricted", "unrestricted")

    @[JSON::Field(key: "outbound_flows", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter outbound_flows : String? = nil
    ERROR_MESSAGE_FOR_OUTBOUND_FLOWS = "invalid value for \"outbound_flows\", must be one of [restricted, unrestricted]."
    VALID_VALUES_FOR_OUTBOUND_FLOWS  = String.static_array("restricted", "unrestricted")

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @inbound_flows : String? = nil,
      @outbound_flows : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_inbound_flows = @inbound_flows).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_INBOUND_FLOWS) unless OpenApi::EnumValidator.valid?(_inbound_flows, VALID_VALUES_FOR_INBOUND_FLOWS)
      end
      unless (_outbound_flows = @outbound_flows).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_OUTBOUND_FLOWS) unless OpenApi::EnumValidator.valid?(_outbound_flows, VALID_VALUES_FOR_OUTBOUND_FLOWS)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_inbound_flows = @inbound_flows).nil?
        return false unless OpenApi::EnumValidator.valid?(_inbound_flows, VALID_VALUES_FOR_INBOUND_FLOWS)
      end

      unless (_outbound_flows = @outbound_flows).nil?
        return false unless OpenApi::EnumValidator.valid?(_outbound_flows, VALID_VALUES_FOR_OUTBOUND_FLOWS)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] inbound_flows Object to be assigned
    def inbound_flows=(inbound_flows : String?)
      if inbound_flows.nil?
        return @inbound_flows = nil
      end
      _inbound_flows = inbound_flows.not_nil!
      OpenApi::EnumValidator.validate("inbound_flows", _inbound_flows, VALID_VALUES_FOR_INBOUND_FLOWS)
      @inbound_flows = _inbound_flows
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] outbound_flows Object to be assigned
    def outbound_flows=(outbound_flows : String?)
      if outbound_flows.nil?
        return @outbound_flows = nil
      end
      _outbound_flows = outbound_flows.not_nil!
      OpenApi::EnumValidator.validate("outbound_flows", _outbound_flows, VALID_VALUES_FOR_OUTBOUND_FLOWS)
      @outbound_flows = _outbound_flows
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@inbound_flows, @outbound_flows)
  end
end
