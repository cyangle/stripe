#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./account_requirements_alternative"
require "./account_requirements_error"

module Stripe
  #
  class AccountCapabilityRequirements
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Fields that are due and can be satisfied by providing the corresponding alternative fields instead.
    @[JSON::Field(key: "alternatives", type: Array(Stripe::AccountRequirementsAlternative)?, default: nil, required: true, nullable: true, emit_null: true)]
    getter alternatives : Array(Stripe::AccountRequirementsAlternative)? = nil

    # Date by which the fields in `currently_due` must be collected to keep the capability enabled for the account. These fields may disable the capability sooner if the next threshold is reached before they are collected.
    @[JSON::Field(key: "current_deadline", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    getter current_deadline : Int64? = nil

    # Fields that need to be collected to keep the capability enabled. If not collected by `current_deadline`, these fields appear in `past_due` as well, and the capability is disabled.
    @[JSON::Field(key: "currently_due", type: Array(String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currently_due : Array(String)? = nil

    # Description of why the capability is disabled. [Learn more about handling verification issues](https://stripe.com/docs/connect/handling-api-verification).
    @[JSON::Field(key: "disabled_reason", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter disabled_reason : String? = nil
    ERROR_MESSAGE_FOR_DISABLED_REASON = "invalid value for \"disabled_reason\", must be one of [other, paused.inactivity, pending.onboarding, pending.review, platform_disabled, platform_paused, rejected.inactivity, rejected.other, rejected.unsupported_business, requirements.fields_needed]."
    VALID_VALUES_FOR_DISABLED_REASON  = String.static_array("other", "paused.inactivity", "pending.onboarding", "pending.review", "platform_disabled", "platform_paused", "rejected.inactivity", "rejected.other", "rejected.unsupported_business", "requirements.fields_needed")

    # Fields that are `currently_due` and need to be collected again because validation or verification failed.
    @[JSON::Field(key: "errors", type: Array(Stripe::AccountRequirementsError)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter errors : Array(Stripe::AccountRequirementsError)? = nil

    # Fields that need to be collected assuming all volume thresholds are reached. As they become required, they appear in `currently_due` as well, and `current_deadline` becomes set.
    @[JSON::Field(key: "eventually_due", type: Array(String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter eventually_due : Array(String)? = nil

    # Fields that weren't collected by `current_deadline`. These fields need to be collected to enable the capability on the account.
    @[JSON::Field(key: "past_due", type: Array(String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter past_due : Array(String)? = nil

    # Fields that might become required depending on the results of verification or review. It's an empty array unless an asynchronous verification is pending. If verification fails, these fields move to `eventually_due`, `currently_due`, or `past_due`. Fields might appear in `eventually_due`, `currently_due`, or `past_due` and in `pending_verification` if verification fails but another verification is still pending.
    @[JSON::Field(key: "pending_verification", type: Array(String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter pending_verification : Array(String)? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @alternatives : Array(Stripe::AccountRequirementsAlternative)? = nil,
      @current_deadline : Int64? = nil,
      @currently_due : Array(String)? = nil,
      @disabled_reason : String? = nil,
      @errors : Array(Stripe::AccountRequirementsError)? = nil,
      @eventually_due : Array(String)? = nil,
      @past_due : Array(String)? = nil,
      @pending_verification : Array(String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_alternatives = @alternatives).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "alternatives", container: _alternatives)) if _alternatives.is_a?(Array)
      end

      invalid_properties.push("\"currently_due\" is required and cannot be null") if @currently_due.nil?

      unless (_disabled_reason = @disabled_reason).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_DISABLED_REASON) unless OpenApi::EnumValidator.valid?(_disabled_reason, VALID_VALUES_FOR_DISABLED_REASON)
      end
      invalid_properties.push("\"errors\" is required and cannot be null") if @errors.nil?

      unless (_errors = @errors).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "errors", container: _errors)) if _errors.is_a?(Array)
      end
      invalid_properties.push("\"eventually_due\" is required and cannot be null") if @eventually_due.nil?

      invalid_properties.push("\"past_due\" is required and cannot be null") if @past_due.nil?

      invalid_properties.push("\"pending_verification\" is required and cannot be null") if @pending_verification.nil?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_alternatives = @alternatives).nil?
        return false if _alternatives.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _alternatives)
      end

      return false if @currently_due.nil?

      unless (_disabled_reason = @disabled_reason).nil?
        return false unless OpenApi::EnumValidator.valid?(_disabled_reason, VALID_VALUES_FOR_DISABLED_REASON)
      end

      return false if @errors.nil?
      unless (_errors = @errors).nil?
        return false if _errors.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _errors)
      end

      return false if @eventually_due.nil?

      return false if @past_due.nil?

      return false if @pending_verification.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] alternatives Object to be assigned
    def alternatives=(new_value : Array(Stripe::AccountRequirementsAlternative)?)
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @alternatives = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] current_deadline Object to be assigned
    def current_deadline=(new_value : Int64?)
      @current_deadline = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currently_due Object to be assigned
    def currently_due=(new_value : Array(String)?)
      raise ArgumentError.new("\"currently_due\" is required and cannot be null") if new_value.nil?

      @currently_due = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] disabled_reason Object to be assigned
    def disabled_reason=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("disabled_reason", new_value, VALID_VALUES_FOR_DISABLED_REASON)
      end

      @disabled_reason = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] errors Object to be assigned
    def errors=(new_value : Array(Stripe::AccountRequirementsError)?)
      raise ArgumentError.new("\"errors\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @errors = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] eventually_due Object to be assigned
    def eventually_due=(new_value : Array(String)?)
      raise ArgumentError.new("\"eventually_due\" is required and cannot be null") if new_value.nil?

      @eventually_due = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] past_due Object to be assigned
    def past_due=(new_value : Array(String)?)
      raise ArgumentError.new("\"past_due\" is required and cannot be null") if new_value.nil?

      @past_due = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pending_verification Object to be assigned
    def pending_verification=(new_value : Array(String)?)
      raise ArgumentError.new("\"pending_verification\" is required and cannot be null") if new_value.nil?

      @pending_verification = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@alternatives, @current_deadline, @currently_due, @disabled_reason, @errors, @eventually_due, @past_due, @pending_verification)
  end
end
