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
  #
  class PortalCustomerUpdate
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # The types of customer updates that are supported. When empty, customers are not updateable.
    @[JSON::Field(key: "allowed_updates", type: Array(String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter allowed_updates : Array(String)? = nil

    ENUM_VALIDATOR_FOR_ALLOWED_UPDATES = EnumValidator.new("allowed_updates", "Array(String)", ["address", "email", "phone", "shipping", "tax_id"])

    # Whether the feature is enabled.
    @[JSON::Field(key: "enabled", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter enabled : Bool? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @allowed_updates : Array(String)? = nil,
      @enabled : Bool? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_ALLOWED_UPDATES.error_message) unless ENUM_VALIDATOR_FOR_ALLOWED_UPDATES.all_valid?(@allowed_updates, false)
      invalid_properties.push("\"enabled\" is required and cannot be null") if @enabled.nil?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false unless ENUM_VALIDATOR_FOR_ALLOWED_UPDATES.all_valid?(@allowed_updates, false)
      return false if @enabled.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] allowed_updates Object to be assigned
    def allowed_updates=(allowed_updates : Array(String)?)
      if allowed_updates.nil?
        raise ArgumentError.new("\"allowed_updates\" is required and cannot be null")
      end
      _allowed_updates = allowed_updates.not_nil!
      ENUM_VALIDATOR_FOR_ALLOWED_UPDATES.all_valid!(_allowed_updates)
      @allowed_updates = _allowed_updates
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

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@allowed_updates, @enabled)
  end
end
