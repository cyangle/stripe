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
  #
  class TaxProductRegistrationsResourceCountryOptionsEuStandard
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Place of supply scheme used in an EU standard registration.
    @[JSON::Field(key: "place_of_supply_scheme", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter place_of_supply_scheme : String? = nil
    ERROR_MESSAGE_FOR_PLACE_OF_SUPPLY_SCHEME = "invalid value for \"place_of_supply_scheme\", must be one of [small_seller, standard]."
    VALID_VALUES_FOR_PLACE_OF_SUPPLY_SCHEME  = String.static_array("small_seller", "standard")

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @place_of_supply_scheme : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"place_of_supply_scheme\" is required and cannot be null") if @place_of_supply_scheme.nil?

      unless (_place_of_supply_scheme = @place_of_supply_scheme).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_PLACE_OF_SUPPLY_SCHEME) unless OpenApi::EnumValidator.valid?(_place_of_supply_scheme, VALID_VALUES_FOR_PLACE_OF_SUPPLY_SCHEME)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @place_of_supply_scheme.nil?
      unless (_place_of_supply_scheme = @place_of_supply_scheme).nil?
        return false unless OpenApi::EnumValidator.valid?(_place_of_supply_scheme, VALID_VALUES_FOR_PLACE_OF_SUPPLY_SCHEME)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] place_of_supply_scheme Object to be assigned
    def place_of_supply_scheme=(new_value : String?)
      raise ArgumentError.new("\"place_of_supply_scheme\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("place_of_supply_scheme", new_value, VALID_VALUES_FOR_PLACE_OF_SUPPLY_SCHEME)
      end

      @place_of_supply_scheme = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@place_of_supply_scheme)
  end
end
