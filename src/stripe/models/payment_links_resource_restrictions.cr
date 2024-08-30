#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./payment_links_resource_completed_sessions"

module Stripe
  #
  class PaymentLinksResourceRestrictions
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "completed_sessions", type: Stripe::PaymentLinksResourceCompletedSessions?, default: nil, required: true, nullable: false, emit_null: false)]
    getter completed_sessions : Stripe::PaymentLinksResourceCompletedSessions? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @completed_sessions : Stripe::PaymentLinksResourceCompletedSessions? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"completed_sessions\" is required and cannot be null") if @completed_sessions.nil?

      unless (_completed_sessions = @completed_sessions).nil?
        invalid_properties.concat(_completed_sessions.list_invalid_properties_for("completed_sessions")) if _completed_sessions.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @completed_sessions.nil?
      unless (_completed_sessions = @completed_sessions).nil?
        return false if _completed_sessions.is_a?(OpenApi::Validatable) && !_completed_sessions.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] completed_sessions Object to be assigned
    def completed_sessions=(new_value : Stripe::PaymentLinksResourceCompletedSessions?)
      raise ArgumentError.new("\"completed_sessions\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @completed_sessions = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@completed_sessions)
  end
end