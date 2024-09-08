#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./fleet_specs"
require "./flight_specs"
require "./fuel_specs"
require "./lodging_specs"
require "./receipt_specs"

module Stripe
  class PurchaseDetailsSpecs
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "fleet", type: Stripe::FleetSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter fleet : Stripe::FleetSpecs? = nil

    @[JSON::Field(key: "flight", type: Stripe::FlightSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter flight : Stripe::FlightSpecs? = nil

    @[JSON::Field(key: "fuel", type: Stripe::FuelSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter fuel : Stripe::FuelSpecs? = nil

    @[JSON::Field(key: "lodging", type: Stripe::LodgingSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter lodging : Stripe::LodgingSpecs? = nil

    # The line items in the purchase.
    @[JSON::Field(key: "receipt", type: Array(Stripe::ReceiptSpecs)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter receipt : Array(Stripe::ReceiptSpecs)? = nil

    # A merchant-specific order number.
    @[JSON::Field(key: "reference", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter reference : String? = nil
    MAX_LENGTH_FOR_REFERENCE = 5000

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @fleet : Stripe::FleetSpecs? = nil,
      @flight : Stripe::FlightSpecs? = nil,
      @fuel : Stripe::FuelSpecs? = nil,
      @lodging : Stripe::LodgingSpecs? = nil,
      @receipt : Array(Stripe::ReceiptSpecs)? = nil,
      @reference : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_fleet = @fleet).nil?
        invalid_properties.concat(_fleet.list_invalid_properties_for("fleet")) if _fleet.is_a?(OpenApi::Validatable)
      end
      unless (_flight = @flight).nil?
        invalid_properties.concat(_flight.list_invalid_properties_for("flight")) if _flight.is_a?(OpenApi::Validatable)
      end
      unless (_fuel = @fuel).nil?
        invalid_properties.concat(_fuel.list_invalid_properties_for("fuel")) if _fuel.is_a?(OpenApi::Validatable)
      end
      unless (_lodging = @lodging).nil?
        invalid_properties.concat(_lodging.list_invalid_properties_for("lodging")) if _lodging.is_a?(OpenApi::Validatable)
      end
      unless (_receipt = @receipt).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "receipt", container: _receipt)) if _receipt.is_a?(Array)
      end
      unless (_reference = @reference).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("reference", _reference.to_s.size, MAX_LENGTH_FOR_REFERENCE)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_fleet = @fleet).nil?
        return false if _fleet.is_a?(OpenApi::Validatable) && !_fleet.valid?
      end

      unless (_flight = @flight).nil?
        return false if _flight.is_a?(OpenApi::Validatable) && !_flight.valid?
      end

      unless (_fuel = @fuel).nil?
        return false if _fuel.is_a?(OpenApi::Validatable) && !_fuel.valid?
      end

      unless (_lodging = @lodging).nil?
        return false if _lodging.is_a?(OpenApi::Validatable) && !_lodging.valid?
      end

      unless (_receipt = @receipt).nil?
        return false if _receipt.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _receipt)
      end

      unless (_reference = @reference).nil?
        return false if _reference.to_s.size > MAX_LENGTH_FOR_REFERENCE
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fleet Object to be assigned
    def fleet=(new_value : Stripe::FleetSpecs?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @fleet = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] flight Object to be assigned
    def flight=(new_value : Stripe::FlightSpecs?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @flight = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fuel Object to be assigned
    def fuel=(new_value : Stripe::FuelSpecs?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @fuel = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] lodging Object to be assigned
    def lodging=(new_value : Stripe::LodgingSpecs?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @lodging = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] receipt Object to be assigned
    def receipt=(new_value : Array(Stripe::ReceiptSpecs)?)
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @receipt = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reference Object to be assigned
    def reference=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("reference", new_value.to_s.size, MAX_LENGTH_FOR_REFERENCE)
      end

      @reference = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@fleet, @flight, @fuel, @lodging, @receipt, @reference)
  end
end
