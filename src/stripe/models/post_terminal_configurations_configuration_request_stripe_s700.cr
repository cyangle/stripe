#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./stripe_s700"

module Stripe
  # An object containing device type specific settings for Stripe S700 readers
  class PostTerminalConfigurationsConfigurationRequestStripeS700
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "splashscreen", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    property splashscreen : String? = nil
    ERROR_MESSAGE_FOR_SPLASHSCREEN = "invalid value for \"splashscreen\", must be one of []."
    VALID_VALUES_FOR_SPLASHSCREEN  = String.static_array("")

    # List of class defined in anyOf (OpenAPI v3)
    def self.openapi_any_of
      [
        String,
        Stripe::StripeS700,
      ]
    end

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
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      _any_of_found = false
      json_string : String = self.to_json
      _any_of_found = self.class.openapi_any_of.any? do |_class|
        _any_of = begin
          _class.from_json(json_string)
        rescue
          nil
        end

        !_any_of.nil? && _any_of.not_nil!.valid?
      end
      return false if !_any_of_found

      true
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@splashscreen)
  end
end