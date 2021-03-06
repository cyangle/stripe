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
  class Period
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # The end date of this usage period. All usage up to and including this point in time is included.
    @[JSON::Field(key: "end", type: Int64?, presence: true, ignore_serialize: _end.nil? && !_end_present?)]
    property _end : Int64?

    @[JSON::Field(ignore: true)]
    property? _end_present : Bool = false

    # The start date of this usage period. All usage after this point in time is included.
    @[JSON::Field(key: "start", type: Int64?, presence: true, ignore_serialize: start.nil? && !start_present?)]
    property start : Int64?

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
    def_equals_and_hash(@_end, @_end_present, @start, @start_present)
  end
end
