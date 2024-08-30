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
  class BbposWisePose
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "splashscreen", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter splashscreen : String? = nil
    ERROR_MESSAGE_FOR_SPLASHSCREEN = "invalid value for \"splashscreen\", must be one of []."
    VALID_VALUES_FOR_SPLASHSCREEN  = String.static_array("")

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @splashscreen : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_splashscreen = @splashscreen).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_SPLASHSCREEN) unless OpenApi::EnumValidator.valid?(_splashscreen, VALID_VALUES_FOR_SPLASHSCREEN)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_splashscreen = @splashscreen).nil?
        return false unless OpenApi::EnumValidator.valid?(_splashscreen, VALID_VALUES_FOR_SPLASHSCREEN)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] splashscreen Object to be assigned
    def splashscreen=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("splashscreen", new_value, VALID_VALUES_FOR_SPLASHSCREEN)
      end

      @splashscreen = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@splashscreen)
  end
end
