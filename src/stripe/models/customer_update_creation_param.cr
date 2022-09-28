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
  class CustomerUpdateCreationParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "enabled", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter enabled : Bool? = nil

    # Optional properties

    @[JSON::Field(key: "allowed_updates", type: Stripe::CustomerUpdateCreationParamAllowedUpdates?, default: nil, required: false, nullable: false, emit_null: false)]
    getter allowed_updates : Stripe::CustomerUpdateCreationParamAllowedUpdates? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @enabled : Bool? = nil,
      # Optional properties
      @allowed_updates : Stripe::CustomerUpdateCreationParamAllowedUpdates? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"enabled\" is required and cannot be null") if @enabled.nil?

      if _allowed_updates = @allowed_updates
        if _allowed_updates.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_allowed_updates.list_invalid_properties_for("allowed_updates"))
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @enabled.nil?

      if _allowed_updates = @allowed_updates
        if _allowed_updates.is_a?(OpenApi::Validatable)
          return false unless _allowed_updates.valid?
        end
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] enabled Object to be assigned
    def enabled=(enabled : Bool?)
      if enabled.nil?
        raise ArgumentError.new("\"enabled\" is required and cannot be null")
      end
      _enabled = enabled.not_nil!
      @enabled = _enabled
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] allowed_updates Object to be assigned
    def allowed_updates=(allowed_updates : Stripe::CustomerUpdateCreationParamAllowedUpdates?)
      if allowed_updates.nil?
        return @allowed_updates = nil
      end
      _allowed_updates = allowed_updates.not_nil!
      if _allowed_updates.is_a?(OpenApi::Validatable)
        _allowed_updates.validate
      end
      @allowed_updates = _allowed_updates
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@enabled, @allowed_updates)
  end
end
