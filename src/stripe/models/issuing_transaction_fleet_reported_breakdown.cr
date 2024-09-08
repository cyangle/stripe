#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./issuing_transaction_fleet_reported_breakdown_fuel"
require "./issuing_transaction_fleet_reported_breakdown_non_fuel"
require "./issuing_transaction_fleet_reported_breakdown_tax"

module Stripe
  #
  class IssuingTransactionFleetReportedBreakdown
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "fuel", type: Stripe::IssuingTransactionFleetReportedBreakdownFuel?, default: nil, required: true, nullable: true, emit_null: true)]
    getter fuel : Stripe::IssuingTransactionFleetReportedBreakdownFuel? = nil

    @[JSON::Field(key: "non_fuel", type: Stripe::IssuingTransactionFleetReportedBreakdownNonFuel?, default: nil, required: true, nullable: true, emit_null: true)]
    getter non_fuel : Stripe::IssuingTransactionFleetReportedBreakdownNonFuel? = nil

    @[JSON::Field(key: "tax", type: Stripe::IssuingTransactionFleetReportedBreakdownTax?, default: nil, required: true, nullable: true, emit_null: true)]
    getter tax : Stripe::IssuingTransactionFleetReportedBreakdownTax? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @fuel : Stripe::IssuingTransactionFleetReportedBreakdownFuel? = nil,
      @non_fuel : Stripe::IssuingTransactionFleetReportedBreakdownNonFuel? = nil,
      @tax : Stripe::IssuingTransactionFleetReportedBreakdownTax? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_fuel = @fuel).nil?
        invalid_properties.concat(_fuel.list_invalid_properties_for("fuel")) if _fuel.is_a?(OpenApi::Validatable)
      end
      unless (_non_fuel = @non_fuel).nil?
        invalid_properties.concat(_non_fuel.list_invalid_properties_for("non_fuel")) if _non_fuel.is_a?(OpenApi::Validatable)
      end
      unless (_tax = @tax).nil?
        invalid_properties.concat(_tax.list_invalid_properties_for("tax")) if _tax.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_fuel = @fuel).nil?
        return false if _fuel.is_a?(OpenApi::Validatable) && !_fuel.valid?
      end

      unless (_non_fuel = @non_fuel).nil?
        return false if _non_fuel.is_a?(OpenApi::Validatable) && !_non_fuel.valid?
      end

      unless (_tax = @tax).nil?
        return false if _tax.is_a?(OpenApi::Validatable) && !_tax.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fuel Object to be assigned
    def fuel=(new_value : Stripe::IssuingTransactionFleetReportedBreakdownFuel?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @fuel = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] non_fuel Object to be assigned
    def non_fuel=(new_value : Stripe::IssuingTransactionFleetReportedBreakdownNonFuel?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @non_fuel = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax Object to be assigned
    def tax=(new_value : Stripe::IssuingTransactionFleetReportedBreakdownTax?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @tax = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@fuel, @non_fuel, @tax)
  end
end
