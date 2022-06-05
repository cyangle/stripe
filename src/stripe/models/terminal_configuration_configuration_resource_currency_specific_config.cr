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
  class TerminalConfigurationConfigurationResourceCurrencySpecificConfig
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # Fixed amounts displayed when collecting a tip
    @[JSON::Field(key: "fixed_amounts", type: Array(Int64)?, presence: true, ignore_serialize: fixed_amounts.nil? && !fixed_amounts_present?)]
    property fixed_amounts : Array(Int64)?

    @[JSON::Field(ignore: true)]
    property? fixed_amounts_present : Bool = false

    # Percentages displayed when collecting a tip
    @[JSON::Field(key: "percentages", type: Array(Int64)?, presence: true, ignore_serialize: percentages.nil? && !percentages_present?)]
    property percentages : Array(Int64)?

    @[JSON::Field(ignore: true)]
    property? percentages_present : Bool = false

    # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
    @[JSON::Field(key: "smart_tip_threshold", type: Int64?, presence: true, ignore_serialize: smart_tip_threshold.nil? && !smart_tip_threshold_present?)]
    property smart_tip_threshold : Int64?

    @[JSON::Field(ignore: true)]
    property? smart_tip_threshold_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @fixed_amounts : Array(Int64)? = nil,
      @percentages : Array(Int64)? = nil,
      @smart_tip_threshold : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
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
    def_equals_and_hash(@fixed_amounts, @percentages, @smart_tip_threshold)
  end
end
