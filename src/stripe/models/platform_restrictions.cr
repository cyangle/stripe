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
  # The set of functionalities that the platform can restrict on the FinancialAccount.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class PlatformRestrictions
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "inbound_flows", type: String?, presence: true, ignore_serialize: inbound_flows.nil? && !inbound_flows_present?)]
    getter inbound_flows : String?

    @[JSON::Field(ignore: true)]
    property? inbound_flows_present : Bool = false

    ENUM_VALIDATOR_FOR_INBOUND_FLOWS = EnumValidator.new("inbound_flows", "String", ["restricted", "unrestricted"])

    @[JSON::Field(key: "outbound_flows", type: String?, presence: true, ignore_serialize: outbound_flows.nil? && !outbound_flows_present?)]
    getter outbound_flows : String?

    @[JSON::Field(ignore: true)]
    property? outbound_flows_present : Bool = false

    ENUM_VALIDATOR_FOR_OUTBOUND_FLOWS = EnumValidator.new("outbound_flows", "String", ["restricted", "unrestricted"])

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
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_INBOUND_FLOWS.error_message) unless ENUM_VALIDATOR_FOR_INBOUND_FLOWS.valid?(@inbound_flows)

      invalid_properties.push(ENUM_VALIDATOR_FOR_OUTBOUND_FLOWS.error_message) unless ENUM_VALIDATOR_FOR_OUTBOUND_FLOWS.valid?(@outbound_flows)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_INBOUND_FLOWS.valid?(@inbound_flows)
      return false unless ENUM_VALIDATOR_FOR_OUTBOUND_FLOWS.valid?(@outbound_flows)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] inbound_flows Object to be assigned
    def inbound_flows=(inbound_flows)
      ENUM_VALIDATOR_FOR_INBOUND_FLOWS.valid!(inbound_flows)
      @inbound_flows = inbound_flows
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] outbound_flows Object to be assigned
    def outbound_flows=(outbound_flows)
      ENUM_VALIDATOR_FOR_OUTBOUND_FLOWS.valid!(outbound_flows)
      @outbound_flows = outbound_flows
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
    def_equals_and_hash(@inbound_flows, @outbound_flows)
  end
end
