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
  class AutomaticTax
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Whether Stripe automatically computes tax on this invoice.
    @[JSON::Field(key: "enabled", type: Bool)]
    property enabled : Bool

    # Optional properties

    # The status of the most recent automated tax calculation for this invoice.
    @[JSON::Field(key: "status", type: String?, presence: true, ignore_serialize: status.nil? && !status_present?)]
    getter status : String?

    @[JSON::Field(ignore: true)]
    property? status_present : Bool = false

    ENUM_VALIDATOR_FOR_STATUS = EnumValidator.new("status", "String", ["complete", "failed", "requires_location_inputs"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @enabled : Bool,
      # Optional properties
      @status : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_STATUS.error_message) unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status : String?)
      ENUM_VALIDATOR_FOR_STATUS.valid!(status)
      @status = status
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
    def_equals_and_hash(@enabled, @status, @status_present)
  end
end
