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
  class PostSubscriptionSchedulesScheduleRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "default_settings", type: Stripe::DefaultSettingsParams?, default: nil, required: false, nullable: false, emit_null: false)]
    getter default_settings : Stripe::DefaultSettingsParams? = nil

    # Configures how the subscription schedule behaves when it ends. Possible values are `release` or `cancel` with the default being `release`. `release` will end the subscription schedule and keep the underlying subscription running.`cancel` will end the subscription schedule and cancel the underlying subscription.
    @[JSON::Field(key: "end_behavior", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter end_behavior : String? = nil
    ERROR_MESSAGE_FOR_END_BEHAVIOR = "invalid value for \"end_behavior\", must be one of [cancel, none, release, renew]."
    VALID_VALUES_FOR_END_BEHAVIOR  = String.static_array("cancel", "none", "release", "renew")

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    @[JSON::Field(key: "metadata", type: Stripe::PostAccountsRequestMetadata?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Stripe::PostAccountsRequestMetadata? = nil

    # List representing phases of the subscription schedule. Each phase can be customized to have different durations, plans, and coupons. If there are multiple phases, the `end_date` of one phase will always equal the `start_date` of the next phase. Note that past phases can be omitted.
    @[JSON::Field(key: "phases", type: Array(Stripe::PhaseConfigurationParams)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter phases : Array(Stripe::PhaseConfigurationParams)? = nil

    # If the update changes the current phase, indicates whether the changes should be prorated. The default value is `create_prorations`.
    @[JSON::Field(key: "proration_behavior", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter proration_behavior : String? = nil
    ERROR_MESSAGE_FOR_PRORATION_BEHAVIOR = "invalid value for \"proration_behavior\", must be one of [always_invoice, create_prorations, none]."
    VALID_VALUES_FOR_PRORATION_BEHAVIOR  = String.static_array("always_invoice", "create_prorations", "none")

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @default_settings : Stripe::DefaultSettingsParams? = nil,
      @end_behavior : String? = nil,
      @expand : Array(String)? = nil,
      @metadata : Stripe::PostAccountsRequestMetadata? = nil,
      @phases : Array(Stripe::PhaseConfigurationParams)? = nil,
      @proration_behavior : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_default_settings = @default_settings).nil?
        invalid_properties.concat(_default_settings.list_invalid_properties_for("default_settings")) if _default_settings.is_a?(OpenApi::Validatable)
      end
      unless (_end_behavior = @end_behavior).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_END_BEHAVIOR) unless OpenApi::EnumValidator.valid?(_end_behavior, VALID_VALUES_FOR_END_BEHAVIOR)
      end

      unless (_metadata = @metadata).nil?
        invalid_properties.concat(_metadata.list_invalid_properties_for("metadata")) if _metadata.is_a?(OpenApi::Validatable)
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
      unless (_default_settings = @default_settings).nil?
        return false if _default_settings.is_a?(OpenApi::Validatable) && !_default_settings.valid?
      end

      unless (_end_behavior = @end_behavior).nil?
        return false unless OpenApi::EnumValidator.valid?(_end_behavior, VALID_VALUES_FOR_END_BEHAVIOR)
      end

      unless (_metadata = @metadata).nil?
        return false if _metadata.is_a?(OpenApi::Validatable) && !_metadata.valid?
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
    # @param [Object] default_settings Object to be assigned
    def default_settings=(default_settings : Stripe::DefaultSettingsParams?)
      if default_settings.nil?
        return @default_settings = nil
      end
      _default_settings = default_settings.not_nil!
      _default_settings.validate if _default_settings.is_a?(OpenApi::Validatable)
      @default_settings = _default_settings
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] end_behavior Object to be assigned
    def end_behavior=(end_behavior : String?)
      if end_behavior.nil?
        return @end_behavior = nil
      end
      _end_behavior = end_behavior.not_nil!
      OpenApi::EnumValidator.validate("end_behavior", _end_behavior, VALID_VALUES_FOR_END_BEHAVIOR)
      @end_behavior = _end_behavior
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(expand : Array(String)?)
      if expand.nil?
        return @expand = nil
      end
      _expand = expand.not_nil!
      @expand = _expand
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Stripe::PostAccountsRequestMetadata?)
      if metadata.nil?
        return @metadata = nil
      end
      _metadata = metadata.not_nil!
      _metadata.validate if _metadata.is_a?(OpenApi::Validatable)
      @metadata = _metadata
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] phases Object to be assigned
    def phases=(phases : Array(Stripe::PhaseConfigurationParams)?)
      if phases.nil?
        return @phases = nil
      end
      _phases = phases.not_nil!
      OpenApi::ContainerValidator.validate(container: _phases) if _phases.is_a?(Array)
      @phases = _phases
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] proration_behavior Object to be assigned
    def proration_behavior=(proration_behavior : String?)
      if proration_behavior.nil?
        return @proration_behavior = nil
      end
      _proration_behavior = proration_behavior.not_nil!
      OpenApi::EnumValidator.validate("proration_behavior", _proration_behavior, VALID_VALUES_FOR_PRORATION_BEHAVIOR)
      @proration_behavior = _proration_behavior
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@default_settings, @end_behavior, @expand, @metadata, @phases, @proration_behavior)
  end
end
