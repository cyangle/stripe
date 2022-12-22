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
  class Period
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The end date of this usage period. All usage up to and including this point in time is included.
    @[JSON::Field(key: "end", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: _end.nil? && !_end_present?)]
    getter _end : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? _end_present : Bool = false

    # The start date of this usage period. All usage after this point in time is included.
    @[JSON::Field(key: "start", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: start.nil? && !start_present?)]
    getter start : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? start_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @_end : Int64? = nil,
      @start : Int64? = nil
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
    # @param [Object] _end Object to be assigned
    def _end=(_end : Int64?)
      if _end.nil?
        return @_end = nil
      end
      __end = _end.not_nil!
      @_end = __end
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] start Object to be assigned
    def start=(start : Int64?)
      if start.nil?
        return @start = nil
      end
      _start = start.not_nil!
      @start = _start
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@_end, @_end_present, @start, @start_present)
  end
end
