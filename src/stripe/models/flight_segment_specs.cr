#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

module Stripe
  class FlightSegmentSpecs
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The three-letter IATA airport code of the flight's destination.
    @[JSON::Field(key: "arrival_airport_code", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter arrival_airport_code : String? = nil
    MAX_LENGTH_FOR_ARRIVAL_AIRPORT_CODE = 3

    # The airline carrier code.
    @[JSON::Field(key: "carrier", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter carrier : String? = nil
    MAX_LENGTH_FOR_CARRIER = 5000

    # The three-letter IATA airport code that the flight departed from.
    @[JSON::Field(key: "departure_airport_code", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter departure_airport_code : String? = nil
    MAX_LENGTH_FOR_DEPARTURE_AIRPORT_CODE = 3

    # The flight number.
    @[JSON::Field(key: "flight_number", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter flight_number : String? = nil
    MAX_LENGTH_FOR_FLIGHT_NUMBER = 5000

    # The flight's service class.
    @[JSON::Field(key: "service_class", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter service_class : String? = nil
    MAX_LENGTH_FOR_SERVICE_CLASS = 5000

    # Whether a stopover is allowed on this flight.
    @[JSON::Field(key: "stopover_allowed", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter stopover_allowed : Bool? = nil

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
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_arrival_airport_code = @arrival_airport_code).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("arrival_airport_code", _arrival_airport_code.to_s.size, MAX_LENGTH_FOR_ARRIVAL_AIRPORT_CODE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_carrier = @carrier).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("carrier", _carrier.to_s.size, MAX_LENGTH_FOR_CARRIER)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_departure_airport_code = @departure_airport_code).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("departure_airport_code", _departure_airport_code.to_s.size, MAX_LENGTH_FOR_DEPARTURE_AIRPORT_CODE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_flight_number = @flight_number).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("flight_number", _flight_number.to_s.size, MAX_LENGTH_FOR_FLIGHT_NUMBER)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_service_class = @service_class).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("service_class", _service_class.to_s.size, MAX_LENGTH_FOR_SERVICE_CLASS)
          invalid_properties.push(max_length_error)
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_arrival_airport_code = @arrival_airport_code).nil?
        return false if _arrival_airport_code.to_s.size > MAX_LENGTH_FOR_ARRIVAL_AIRPORT_CODE
      end

      unless (_carrier = @carrier).nil?
        return false if _carrier.to_s.size > MAX_LENGTH_FOR_CARRIER
      end

      unless (_departure_airport_code = @departure_airport_code).nil?
        return false if _departure_airport_code.to_s.size > MAX_LENGTH_FOR_DEPARTURE_AIRPORT_CODE
      end

      unless (_flight_number = @flight_number).nil?
        return false if _flight_number.to_s.size > MAX_LENGTH_FOR_FLIGHT_NUMBER
      end

      unless (_service_class = @service_class).nil?
        return false if _service_class.to_s.size > MAX_LENGTH_FOR_SERVICE_CLASS
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] arrival_airport_code Object to be assigned
    def arrival_airport_code=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("arrival_airport_code", new_value.to_s.size, MAX_LENGTH_FOR_ARRIVAL_AIRPORT_CODE)
      end

      @arrival_airport_code = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] carrier Object to be assigned
    def carrier=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("carrier", new_value.to_s.size, MAX_LENGTH_FOR_CARRIER)
      end

      @carrier = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] departure_airport_code Object to be assigned
    def departure_airport_code=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("departure_airport_code", new_value.to_s.size, MAX_LENGTH_FOR_DEPARTURE_AIRPORT_CODE)
      end

      @departure_airport_code = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] flight_number Object to be assigned
    def flight_number=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("flight_number", new_value.to_s.size, MAX_LENGTH_FOR_FLIGHT_NUMBER)
      end

      @flight_number = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] service_class Object to be assigned
    def service_class=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("service_class", new_value.to_s.size, MAX_LENGTH_FOR_SERVICE_CLASS)
      end

      @service_class = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] stopover_allowed Object to be assigned
    def stopover_allowed=(new_value : Bool?)
      @stopover_allowed = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@arrival_airport_code, @carrier, @departure_airport_code, @flight_number, @service_class, @stopover_allowed)
  end
end