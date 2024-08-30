#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./portal_flows_retention"

module Stripe
  #
  class PortalFlowsFlowSubscriptionCancel
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "retention", type: Stripe::PortalFlowsRetention?, default: nil, required: true, nullable: true, emit_null: true)]
    getter retention : Stripe::PortalFlowsRetention? = nil

    # The ID of the subscription to be canceled.
    @[JSON::Field(key: "subscription", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter subscription : String? = nil
    MAX_LENGTH_FOR_SUBSCRIPTION = 5000

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @retention : Stripe::PortalFlowsRetention? = nil,
      @subscription : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_retention = @retention).nil?
        invalid_properties.concat(_retention.list_invalid_properties_for("retention")) if _retention.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"subscription\" is required and cannot be null") if @subscription.nil?

      unless (_subscription = @subscription).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("subscription", _subscription.to_s.size, MAX_LENGTH_FOR_SUBSCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_retention = @retention).nil?
        return false if _retention.is_a?(OpenApi::Validatable) && !_retention.valid?
      end

      return false if @subscription.nil?
      unless (_subscription = @subscription).nil?
        return false if _subscription.to_s.size > MAX_LENGTH_FOR_SUBSCRIPTION
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] retention Object to be assigned
    def retention=(new_value : Stripe::PortalFlowsRetention?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @retention = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subscription Object to be assigned
    def subscription=(new_value : String?)
      raise ArgumentError.new("\"subscription\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("subscription", new_value.to_s.size, MAX_LENGTH_FOR_SUBSCRIPTION)
      end

      @subscription = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@retention, @subscription)
  end
end
