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
  class IssuingTransactionFlightDataLeg
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # The three-letter IATA airport code of the flight's destination.
    @[JSON::Field(key: "arrival_airport_code", type: String?, presence: true, ignore_serialize: arrival_airport_code.nil? && !arrival_airport_code_present?)]
    getter arrival_airport_code : String?

    @[JSON::Field(ignore: true)]
    property? arrival_airport_code_present : Bool = false

    # The airline carrier code.
    @[JSON::Field(key: "carrier", type: String?, presence: true, ignore_serialize: carrier.nil? && !carrier_present?)]
    getter carrier : String?

    @[JSON::Field(ignore: true)]
    property? carrier_present : Bool = false

    # The three-letter IATA airport code that the flight departed from.
    @[JSON::Field(key: "departure_airport_code", type: String?, presence: true, ignore_serialize: departure_airport_code.nil? && !departure_airport_code_present?)]
    getter departure_airport_code : String?

    @[JSON::Field(ignore: true)]
    property? departure_airport_code_present : Bool = false

    # The flight number.
    @[JSON::Field(key: "flight_number", type: String?, presence: true, ignore_serialize: flight_number.nil? && !flight_number_present?)]
    getter flight_number : String?

    @[JSON::Field(ignore: true)]
    property? flight_number_present : Bool = false

    # The flight's service class.
    @[JSON::Field(key: "service_class", type: String?, presence: true, ignore_serialize: service_class.nil? && !service_class_present?)]
    getter service_class : String?

    @[JSON::Field(ignore: true)]
    property? service_class_present : Bool = false

    # Whether a stopover is allowed on this flight.
    @[JSON::Field(key: "stopover_allowed", type: Bool?, presence: true, ignore_serialize: stopover_allowed.nil? && !stopover_allowed_present?)]
    property stopover_allowed : Bool?

    @[JSON::Field(ignore: true)]
    property? stopover_allowed_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @arrival_airport_code : String? = nil,
      @carrier : String? = nil,
      @departure_airport_code : String? = nil,
      @flight_number : String? = nil,
      @service_class : String? = nil,
      @stopover_allowed : Bool? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@arrival_airport_code.nil? && @arrival_airport_code.to_s.size > 5000
        invalid_properties.push("invalid value for \"arrival_airport_code\", the character length must be smaller than or equal to 5000.")
      end

      if !@carrier.nil? && @carrier.to_s.size > 5000
        invalid_properties.push("invalid value for \"carrier\", the character length must be smaller than or equal to 5000.")
      end

      if !@departure_airport_code.nil? && @departure_airport_code.to_s.size > 5000
        invalid_properties.push("invalid value for \"departure_airport_code\", the character length must be smaller than or equal to 5000.")
      end

      if !@flight_number.nil? && @flight_number.to_s.size > 5000
        invalid_properties.push("invalid value for \"flight_number\", the character length must be smaller than or equal to 5000.")
      end

      if !@service_class.nil? && @service_class.to_s.size > 5000
        invalid_properties.push("invalid value for \"service_class\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@arrival_airport_code.nil? && @arrival_airport_code.to_s.size > 5000
      return false if !@carrier.nil? && @carrier.to_s.size > 5000
      return false if !@departure_airport_code.nil? && @departure_airport_code.to_s.size > 5000
      return false if !@flight_number.nil? && @flight_number.to_s.size > 5000
      return false if !@service_class.nil? && @service_class.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] arrival_airport_code Value to be assigned
    def arrival_airport_code=(arrival_airport_code)
      if !arrival_airport_code.nil? && arrival_airport_code.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"arrival_airport_code\", the character length must be smaller than or equal to 5000.")
      end

      @arrival_airport_code = arrival_airport_code
    end

    # Custom attribute writer method with validation
    # @param [Object] carrier Value to be assigned
    def carrier=(carrier)
      if !carrier.nil? && carrier.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"carrier\", the character length must be smaller than or equal to 5000.")
      end

      @carrier = carrier
    end

    # Custom attribute writer method with validation
    # @param [Object] departure_airport_code Value to be assigned
    def departure_airport_code=(departure_airport_code)
      if !departure_airport_code.nil? && departure_airport_code.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"departure_airport_code\", the character length must be smaller than or equal to 5000.")
      end

      @departure_airport_code = departure_airport_code
    end

    # Custom attribute writer method with validation
    # @param [Object] flight_number Value to be assigned
    def flight_number=(flight_number)
      if !flight_number.nil? && flight_number.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"flight_number\", the character length must be smaller than or equal to 5000.")
      end

      @flight_number = flight_number
    end

    # Custom attribute writer method with validation
    # @param [Object] service_class Value to be assigned
    def service_class=(service_class)
      if !service_class.nil? && service_class.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"service_class\", the character length must be smaller than or equal to 5000.")
      end

      @service_class = service_class
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
    def_equals_and_hash(@arrival_airport_code, @carrier, @departure_airport_code, @flight_number, @service_class, @stopover_allowed)
  end
end
