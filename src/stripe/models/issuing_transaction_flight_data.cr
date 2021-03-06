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
  class IssuingTransactionFlightData
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # The time that the flight departed.
    @[JSON::Field(key: "departure_at", type: Int64?, presence: true, ignore_serialize: departure_at.nil? && !departure_at_present?)]
    property departure_at : Int64?

    @[JSON::Field(ignore: true)]
    property? departure_at_present : Bool = false

    # The name of the passenger.
    @[JSON::Field(key: "passenger_name", type: String?, presence: true, ignore_serialize: passenger_name.nil? && !passenger_name_present?)]
    getter passenger_name : String?

    @[JSON::Field(ignore: true)]
    property? passenger_name_present : Bool = false

    # Whether the ticket is refundable.
    @[JSON::Field(key: "refundable", type: Bool?, presence: true, ignore_serialize: refundable.nil? && !refundable_present?)]
    property refundable : Bool?

    @[JSON::Field(ignore: true)]
    property? refundable_present : Bool = false

    # The legs of the trip.
    @[JSON::Field(key: "segments", type: Array(IssuingTransactionFlightDataLeg)?, presence: true, ignore_serialize: segments.nil? && !segments_present?)]
    property segments : Array(IssuingTransactionFlightDataLeg)?

    @[JSON::Field(ignore: true)]
    property? segments_present : Bool = false

    # The travel agency that issued the ticket.
    @[JSON::Field(key: "travel_agency", type: String?, presence: true, ignore_serialize: travel_agency.nil? && !travel_agency_present?)]
    getter travel_agency : String?

    @[JSON::Field(ignore: true)]
    property? travel_agency_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @departure_at : Int64? = nil,
      @passenger_name : String? = nil,
      @refundable : Bool? = nil,
      @segments : Array(IssuingTransactionFlightDataLeg)? = nil,
      @travel_agency : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@passenger_name.nil? && @passenger_name.to_s.size > 5000
        invalid_properties.push("invalid value for \"passenger_name\", the character length must be smaller than or equal to 5000.")
      end

      if !@travel_agency.nil? && @travel_agency.to_s.size > 5000
        invalid_properties.push("invalid value for \"travel_agency\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@passenger_name.nil? && @passenger_name.to_s.size > 5000
      return false if !@travel_agency.nil? && @travel_agency.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] passenger_name Value to be assigned
    def passenger_name=(passenger_name : String?)
      if !passenger_name.nil? && passenger_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"passenger_name\", the character length must be smaller than or equal to 5000.")
      end

      @passenger_name = passenger_name
    end

    # Custom attribute writer method with validation
    # @param [Object] travel_agency Value to be assigned
    def travel_agency=(travel_agency : String?)
      if !travel_agency.nil? && travel_agency.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"travel_agency\", the character length must be smaller than or equal to 5000.")
      end

      @travel_agency = travel_agency
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
    def_equals_and_hash(@departure_at, @departure_at_present, @passenger_name, @passenger_name_present, @refundable, @refundable_present, @segments, @segments_present, @travel_agency, @travel_agency_present)
  end
end
