#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-08-01
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  class VerifoneP400
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "splashscreen", type: Stripe::BbposWisePoseSplashscreen?, default: nil, required: false, nullable: false, emit_null: false)]
    getter splashscreen : Stripe::BbposWisePoseSplashscreen? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @splashscreen : Stripe::BbposWisePoseSplashscreen? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_splashscreen = @splashscreen).nil?
        invalid_properties.concat(_splashscreen.list_invalid_properties_for("splashscreen")) if _splashscreen.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_splashscreen = @splashscreen).nil?
        return false if _splashscreen.is_a?(OpenApi::Validatable) && !_splashscreen.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] splashscreen Object to be assigned
    def splashscreen=(splashscreen : Stripe::BbposWisePoseSplashscreen?)
      if splashscreen.nil?
        return @splashscreen = nil
      end
      _splashscreen = splashscreen.not_nil!
      _splashscreen.validate if _splashscreen.is_a?(OpenApi::Validatable)
      @splashscreen = _splashscreen
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@splashscreen)
  end
end
