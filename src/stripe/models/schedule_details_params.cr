#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./phase_configuration_params"

module Stripe
  class ScheduleDetailsParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Behavior of the subscription schedule and underlying subscription when it ends. Possible values are `release` or `cancel` with the default being `release`. `release` will end the subscription schedule and keep the underlying subscription running. `cancel` will end the subscription schedule and cancel the underlying subscription.
    @[JSON::Field(key: "end_behavior", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter end_behavior : String? = nil
    ERROR_MESSAGE_FOR_END_BEHAVIOR = "invalid value for \"end_behavior\", must be one of [cancel, release]."
    VALID_VALUES_FOR_END_BEHAVIOR  = String.static_array("cancel", "release")

    # List representing phases of the subscription schedule. Each phase can be customized to have different durations, plans, and coupons. If there are multiple phases, the `end_date` of one phase will always equal the `start_date` of the next phase.
    @[JSON::Field(key: "phases", type: Array(Stripe::PhaseConfigurationParams)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter phases : Array(Stripe::PhaseConfigurationParams)? = nil

    # In cases where the `schedule_details` params update the currently active phase, specifies if and how to prorate at the time of the request.
    @[JSON::Field(key: "proration_behavior", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter proration_behavior : String? = nil
    ERROR_MESSAGE_FOR_PRORATION_BEHAVIOR = "invalid value for \"proration_behavior\", must be one of [always_invoice, create_prorations, none]."
    VALID_VALUES_FOR_PRORATION_BEHAVIOR  = String.static_array("always_invoice", "create_prorations", "none")

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @end_behavior : String? = nil,
      @phases : Array(Stripe::PhaseConfigurationParams)? = nil,
      @proration_behavior : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_end_behavior = @end_behavior).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_END_BEHAVIOR) unless OpenApi::EnumValidator.valid?(_end_behavior, VALID_VALUES_FOR_END_BEHAVIOR)
      end
      unless (_phases = @phases).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "phases", container: _phases)) if _phases.is_a?(Array)
      end
      unless (_proration_behavior = @proration_behavior).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_PRORATION_BEHAVIOR) unless OpenApi::EnumValidator.valid?(_proration_behavior, VALID_VALUES_FOR_PRORATION_BEHAVIOR)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_end_behavior = @end_behavior).nil?
        return false unless OpenApi::EnumValidator.valid?(_end_behavior, VALID_VALUES_FOR_END_BEHAVIOR)
      end

      unless (_phases = @phases).nil?
        return false if _phases.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _phases)
      end

      unless (_proration_behavior = @proration_behavior).nil?
        return false unless OpenApi::EnumValidator.valid?(_proration_behavior, VALID_VALUES_FOR_PRORATION_BEHAVIOR)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] end_behavior Object to be assigned
    def end_behavior=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("end_behavior", new_value, VALID_VALUES_FOR_END_BEHAVIOR)
      end

      @end_behavior = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] phases Object to be assigned
    def phases=(new_value : Array(Stripe::PhaseConfigurationParams)?)
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @phases = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] proration_behavior Object to be assigned
    def proration_behavior=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("proration_behavior", new_value, VALID_VALUES_FOR_PRORATION_BEHAVIOR)
      end

      @proration_behavior = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@end_behavior, @phases, @proration_behavior)
  end
end