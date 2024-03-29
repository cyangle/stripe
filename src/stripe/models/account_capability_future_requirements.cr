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
  class AccountCapabilityFutureRequirements
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Fields that need to be collected to keep the capability enabled. If not collected by `future_requirements[current_deadline]`, these fields will transition to the main `requirements` hash.
    @[JSON::Field(key: "currently_due", type: Array(String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currently_due : Array(String)? = nil

    # Fields that are `currently_due` and need to be collected again because validation or verification failed.
    @[JSON::Field(key: "errors", type: Array(Stripe::AccountRequirementsError)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter errors : Array(Stripe::AccountRequirementsError)? = nil

    # Fields that need to be collected assuming all volume thresholds are reached. As they become required, they appear in `currently_due` as well.
    @[JSON::Field(key: "eventually_due", type: Array(String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter eventually_due : Array(String)? = nil

    # Fields that weren't collected by `requirements.current_deadline`. These fields need to be collected to enable the capability on the account. New fields will never appear here; `future_requirements.past_due` will always be a subset of `requirements.past_due`.
    @[JSON::Field(key: "past_due", type: Array(String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter past_due : Array(String)? = nil

    # Fields that may become required depending on the results of verification or review. Will be an empty array unless an asynchronous verification is pending. If verification fails, these fields move to `eventually_due` or `currently_due`.
    @[JSON::Field(key: "pending_verification", type: Array(String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter pending_verification : Array(String)? = nil

    # End of Required Properties

    # Optional Properties

    # Fields that are due and can be satisfied by providing the corresponding alternative fields instead.
    @[JSON::Field(key: "alternatives", type: Array(Stripe::AccountRequirementsAlternative)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: alternatives.nil? && !alternatives_present?)]
    getter alternatives : Array(Stripe::AccountRequirementsAlternative)? = nil

    @[JSON::Field(ignore: true)]
    property? alternatives_present : Bool = false

    # Date on which `future_requirements` merges with the main `requirements` hash and `future_requirements` becomes empty. After the transition, `currently_due` requirements may immediately become `past_due`, but the account may also be given a grace period depending on the capability's enablement state prior to transitioning.
    @[JSON::Field(key: "current_deadline", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: current_deadline.nil? && !current_deadline_present?)]
    getter current_deadline : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? current_deadline_present : Bool = false

    # This is typed as a string for consistency with `requirements.disabled_reason`, but it safe to assume `future_requirements.disabled_reason` is empty because fields in `future_requirements` will never disable the account.
    @[JSON::Field(key: "disabled_reason", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: disabled_reason.nil? && !disabled_reason_present?)]
    getter disabled_reason : String? = nil
    MAX_LENGTH_FOR_DISABLED_REASON = 5000

    @[JSON::Field(ignore: true)]
    property? disabled_reason_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @currently_due : Array(String)? = nil,
      @errors : Array(Stripe::AccountRequirementsError)? = nil,
      @eventually_due : Array(String)? = nil,
      @past_due : Array(String)? = nil,
      @pending_verification : Array(String)? = nil,
      # Optional properties
      @alternatives : Array(Stripe::AccountRequirementsAlternative)? = nil,
      @current_deadline : Int64? = nil,
      @disabled_reason : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"currently_due\" is required and cannot be null") if @currently_due.nil?

      invalid_properties.push("\"errors\" is required and cannot be null") if @errors.nil?

      unless (_errors = @errors).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "errors", container: _errors)) if _errors.is_a?(Array)
      end
      invalid_properties.push("\"eventually_due\" is required and cannot be null") if @eventually_due.nil?

      invalid_properties.push("\"past_due\" is required and cannot be null") if @past_due.nil?

      invalid_properties.push("\"pending_verification\" is required and cannot be null") if @pending_verification.nil?

      unless (_alternatives = @alternatives).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "alternatives", container: _alternatives)) if _alternatives.is_a?(Array)
      end

      unless (_disabled_reason = @disabled_reason).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("disabled_reason", _disabled_reason.to_s.size, MAX_LENGTH_FOR_DISABLED_REASON)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @currently_due.nil?

      return false if @errors.nil?
      unless (_errors = @errors).nil?
        return false if _errors.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _errors)
      end

      return false if @eventually_due.nil?

      return false if @past_due.nil?

      return false if @pending_verification.nil?

      unless (_alternatives = @alternatives).nil?
        return false if _alternatives.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _alternatives)
      end

      unless (_disabled_reason = @disabled_reason).nil?
        return false if _disabled_reason.to_s.size > MAX_LENGTH_FOR_DISABLED_REASON
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currently_due Object to be assigned
    def currently_due=(new_value : Array(String)?)
      raise ArgumentError.new("\"currently_due\" is required and cannot be null") if new_value.nil?

      @currently_due = new_value
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
    # @param [Object] disabled_reason Object to be assigned
    def disabled_reason=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("disabled_reason", new_value.to_s.size, MAX_LENGTH_FOR_DISABLED_REASON)
      end

      @disabled_reason = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@currently_due, @errors, @eventually_due, @past_due, @pending_verification, @alternatives, @alternatives_present, @current_deadline, @current_deadline_present, @disabled_reason, @disabled_reason_present)
  end
end
