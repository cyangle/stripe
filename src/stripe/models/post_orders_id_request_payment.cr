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
  # Payment information associated with the order, including payment settings.
  class PostOrdersIdRequestPayment
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "settings", type: Stripe::PostOrdersIdRequestPaymentSettings?, default: nil, required: true, nullable: false, emit_null: false)]
    getter settings : Stripe::PostOrdersIdRequestPaymentSettings? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @settings : Stripe::PostOrdersIdRequestPaymentSettings? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"settings\" is required and cannot be null") if @settings.nil?

      unless (_settings = @settings).nil?
        invalid_properties.concat(_settings.list_invalid_properties_for("settings")) if _settings.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @settings.nil?
      unless (_settings = @settings).nil?
        return false if _settings.is_a?(OpenApi::Validatable) && !_settings.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] settings Object to be assigned
    def settings=(settings : Stripe::PostOrdersIdRequestPaymentSettings?)
      if settings.nil?
        raise ArgumentError.new("\"settings\" is required and cannot be null")
      end
      _settings = settings.not_nil!
      _settings.validate if _settings.is_a?(OpenApi::Validatable)
      @settings = _settings
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@settings)
  end
end