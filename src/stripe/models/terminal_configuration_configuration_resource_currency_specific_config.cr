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
  class TerminalConfigurationConfigurationResourceCurrencySpecificConfig
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Fixed amounts displayed when collecting a tip
    @[JSON::Field(key: "fixed_amounts", type: Array(Int32)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: fixed_amounts.nil? && !fixed_amounts_present?)]
    getter fixed_amounts : Array(Int32)? = nil

    @[JSON::Field(ignore: true)]
    property? fixed_amounts_present : Bool = false

    # Percentages displayed when collecting a tip
    @[JSON::Field(key: "percentages", type: Array(Int32)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: percentages.nil? && !percentages_present?)]
    getter percentages : Array(Int32)? = nil

    @[JSON::Field(ignore: true)]
    property? percentages_present : Bool = false

    # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
    @[JSON::Field(key: "smart_tip_threshold", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter smart_tip_threshold : Int64? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @fixed_amounts : Array(Int32)? = nil,
      @percentages : Array(Int32)? = nil,
      @smart_tip_threshold : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fixed_amounts Object to be assigned
    def fixed_amounts=(fixed_amounts : Array(Int32)?)
      if fixed_amounts.nil?
        return @fixed_amounts = nil
      end
      _fixed_amounts = fixed_amounts.not_nil!
      @fixed_amounts = _fixed_amounts
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] percentages Object to be assigned
    def percentages=(percentages : Array(Int32)?)
      if percentages.nil?
        return @percentages = nil
      end
      _percentages = percentages.not_nil!
      @percentages = _percentages
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] smart_tip_threshold Object to be assigned
    def smart_tip_threshold=(smart_tip_threshold : Int64?)
      if smart_tip_threshold.nil?
        return @smart_tip_threshold = nil
      end
      _smart_tip_threshold = smart_tip_threshold.not_nil!
      @smart_tip_threshold = _smart_tip_threshold
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@fixed_amounts, @fixed_amounts_present, @percentages, @percentages_present, @smart_tip_threshold)
  end
end
