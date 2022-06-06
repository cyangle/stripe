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
  # Point in Time
  @[JSON::Serializable::Options(emit_nulls: true)]
  class GelatoDataDocumentReportIssuedDate
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # Numerical day between 1 and 31.
    @[JSON::Field(key: "day", type: Int64?, presence: true, ignore_serialize: day.nil? && !day_present?)]
    property day : Int64?

    @[JSON::Field(ignore: true)]
    property? day_present : Bool = false

    # Numerical month between 1 and 12.
    @[JSON::Field(key: "month", type: Int64?, presence: true, ignore_serialize: month.nil? && !month_present?)]
    property month : Int64?

    @[JSON::Field(ignore: true)]
    property? month_present : Bool = false

    # The four-digit year.
    @[JSON::Field(key: "year", type: Int64?, presence: true, ignore_serialize: year.nil? && !year_present?)]
    property year : Int64?

    @[JSON::Field(ignore: true)]
    property? year_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @day : Int64? = nil,
      @month : Int64? = nil,
      @year : Int64? = nil
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
    def_equals_and_hash(@day, @day_present, @month, @month_present, @year, @year_present)
  end
end
