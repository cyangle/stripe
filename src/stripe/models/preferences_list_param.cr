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
  class PreferencesListParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Only return the personalization design that's set as the default. A connected account uses the Connect platform's default design if no personalization design is set as the default.
    @[JSON::Field(key: "is_default", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter is_default : Bool? = nil

    # Only return the personalization design that is set as the Connect platform's default. This parameter is only applicable to connected accounts.
    @[JSON::Field(key: "is_platform_default", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter is_platform_default : Bool? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @is_default : Bool? = nil,
      @is_platform_default : Bool? = nil
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
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] is_default Object to be assigned
    def is_default=(new_value : Bool?)
      @is_default = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] is_platform_default Object to be assigned
    def is_platform_default=(new_value : Bool?)
      @is_platform_default = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@is_default, @is_platform_default)
  end
end
