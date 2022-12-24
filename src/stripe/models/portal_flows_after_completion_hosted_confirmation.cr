#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  #
  class PortalFlowsAfterCompletionHostedConfirmation
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # A custom message to display to the customer after the flow is completed.
    @[JSON::Field(key: "custom_message", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: custom_message.nil? && !custom_message_present?)]
    getter custom_message : String? = nil
    MAX_LENGTH_FOR_CUSTOM_MESSAGE = 5000

    @[JSON::Field(ignore: true)]
    property? custom_message_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @custom_message : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_custom_message = @custom_message).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("custom_message", _custom_message.to_s.size, MAX_LENGTH_FOR_CUSTOM_MESSAGE)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_custom_message = @custom_message).nil?
        return false if _custom_message.to_s.size > MAX_LENGTH_FOR_CUSTOM_MESSAGE
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] custom_message Object to be assigned
    def custom_message=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("custom_message", new_value.to_s.size, MAX_LENGTH_FOR_CUSTOM_MESSAGE)
      end

      @custom_message = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@custom_message, @custom_message_present)
  end
end
