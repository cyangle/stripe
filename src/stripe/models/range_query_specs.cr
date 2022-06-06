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
  @[JSON::Serializable::Options(emit_nulls: true)]
  class RangeQuerySpecs
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "gt", type: Int64?, presence: true, ignore_serialize: gt.nil? && !gt_present?)]
    property gt : Int64?

    @[JSON::Field(ignore: true)]
    property? gt_present : Bool = false

    @[JSON::Field(key: "gte", type: Int64?, presence: true, ignore_serialize: gte.nil? && !gte_present?)]
    property gte : Int64?

    @[JSON::Field(ignore: true)]
    property? gte_present : Bool = false

    @[JSON::Field(key: "lt", type: Int64?, presence: true, ignore_serialize: lt.nil? && !lt_present?)]
    property lt : Int64?

    @[JSON::Field(ignore: true)]
    property? lt_present : Bool = false

    @[JSON::Field(key: "lte", type: Int64?, presence: true, ignore_serialize: lte.nil? && !lte_present?)]
    property lte : Int64?

    @[JSON::Field(ignore: true)]
    property? lte_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @gt : Int64? = nil,
      @gte : Int64? = nil,
      @lt : Int64? = nil,
      @lte : Int64? = nil
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
    def_equals_and_hash(@gt, @gt_present, @gte, @gte_present, @lt, @lt_present, @lte, @lte_present)
  end
end
