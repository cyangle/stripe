#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  #
  @[JSON::Serializable::Options(emit_nulls: true)]
  class PortalCustomerUpdate
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # The types of customer updates that are supported. When empty, customers are not updateable.
    @[JSON::Field(key: "allowed_updates", type: Array(String))]
    getter allowed_updates : Array(String)

    ENUM_VALIDATOR_FOR_ALLOWED_UPDATES = EnumValidator.new("allowed_updates", "Array(String)", ["address", "email", "phone", "shipping", "tax_id"])

    # Whether the feature is enabled.
    @[JSON::Field(key: "enabled", type: Bool)]
    property enabled : Bool

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @allowed_updates : Array(String),
      @enabled : Bool
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_ALLOWED_UPDATES.error_message) unless ENUM_VALIDATOR_FOR_ALLOWED_UPDATES.all_valid?(@allowed_updates, false)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_ALLOWED_UPDATES.all_valid?(@allowed_updates, false)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] allowed_updates Object to be assigned
    def allowed_updates=(allowed_updates : Array(String))
      ENUM_VALIDATOR_FOR_ALLOWED_UPDATES.all_valid!(allowed_updates, false)
      @allowed_updates = allowed_updates
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@allowed_updates, @enabled)
  end
end
