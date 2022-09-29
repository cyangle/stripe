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
  class AccountRequirements
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    # Fields that are due and can be satisfied by providing the corresponding alternative fields instead.
    @[JSON::Field(key: "alternatives", type: Array(Stripe::AccountRequirementsAlternative)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: alternatives.nil? && !alternatives_present?)]
    getter alternatives : Array(Stripe::AccountRequirementsAlternative)? = nil

    @[JSON::Field(ignore: true)]
    property? alternatives_present : Bool = false

    # Date by which the fields in `currently_due` must be collected to keep the account enabled. These fields may disable the account sooner if the next threshold is reached before they are collected.
    @[JSON::Field(key: "current_deadline", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: current_deadline.nil? && !current_deadline_present?)]
    getter current_deadline : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? current_deadline_present : Bool = false

    # Fields that need to be collected to keep the account enabled. If not collected by `current_deadline`, these fields appear in `past_due` as well, and the account is disabled.
    @[JSON::Field(key: "currently_due", type: Array(String)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: currently_due.nil? && !currently_due_present?)]
    getter currently_due : Array(String)? = nil

    @[JSON::Field(ignore: true)]
    property? currently_due_present : Bool = false

    # If the account is disabled, this string describes why. Can be `requirements.past_due`, `requirements.pending_verification`, `listed`, `platform_paused`, `rejected.fraud`, `rejected.listed`, `rejected.terms_of_service`, `rejected.other`, `under_review`, or `other`.
    @[JSON::Field(key: "disabled_reason", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: disabled_reason.nil? && !disabled_reason_present?)]
    getter disabled_reason : String? = nil

    @[JSON::Field(ignore: true)]
    property? disabled_reason_present : Bool = false

    # Fields that are `currently_due` and need to be collected again because validation or verification failed.
    @[JSON::Field(key: "errors", type: Array(Stripe::AccountRequirementsError)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: errors.nil? && !errors_present?)]
    getter errors : Array(Stripe::AccountRequirementsError)? = nil

    @[JSON::Field(ignore: true)]
    property? errors_present : Bool = false

    # Fields that need to be collected assuming all volume thresholds are reached. As they become required, they appear in `currently_due` as well, and `current_deadline` becomes set.
    @[JSON::Field(key: "eventually_due", type: Array(String)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: eventually_due.nil? && !eventually_due_present?)]
    getter eventually_due : Array(String)? = nil

    @[JSON::Field(ignore: true)]
    property? eventually_due_present : Bool = false

    # Fields that weren't collected by `current_deadline`. These fields need to be collected to enable the account.
    @[JSON::Field(key: "past_due", type: Array(String)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: past_due.nil? && !past_due_present?)]
    getter past_due : Array(String)? = nil

    @[JSON::Field(ignore: true)]
    property? past_due_present : Bool = false

    # Fields that may become required depending on the results of verification or review. Will be an empty array unless an asynchronous verification is pending. If verification fails, these fields move to `eventually_due`, `currently_due`, or `past_due`.
    @[JSON::Field(key: "pending_verification", type: Array(String)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: pending_verification.nil? && !pending_verification_present?)]
    getter pending_verification : Array(String)? = nil

    @[JSON::Field(ignore: true)]
    property? pending_verification_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
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
      if _alternatives = @alternatives
        invalid_properties.concat(OpenApi::ArrayValidator.list_invalid_properties_for(key: "alternatives", array: _alternatives)) if _alternatives.is_a?(Array)
      end

      if _disabled_reason = @disabled_reason
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("disabled_reason", _disabled_reason.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _errors = @errors
        invalid_properties.concat(OpenApi::ArrayValidator.list_invalid_properties_for(key: "errors", array: _errors)) if _errors.is_a?(Array)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _alternatives = @alternatives
        return false if _alternatives.is_a?(Array) && !OpenApi::ArrayValidator.valid?(array: _alternatives)
      end

      if _disabled_reason = @disabled_reason
        return false if _disabled_reason.to_s.size > 5000
      end
      if _errors = @errors
        return false if _errors.is_a?(Array) && !OpenApi::ArrayValidator.valid?(array: _errors)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] alternatives Object to be assigned
    def alternatives=(alternatives : Array(Stripe::AccountRequirementsAlternative)?)
      if alternatives.nil?
        return @alternatives = nil
      end
      _alternatives = alternatives.not_nil!
      OpenApi::ArrayValidator.validate(array: _alternatives) if _alternatives.is_a?(Array)
      @alternatives = _alternatives
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] current_deadline Object to be assigned
    def current_deadline=(current_deadline : Int64?)
      if current_deadline.nil?
        return @current_deadline = nil
      end
      _current_deadline = current_deadline.not_nil!
      @current_deadline = _current_deadline
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currently_due Object to be assigned
    def currently_due=(currently_due : Array(String)?)
      if currently_due.nil?
        return @currently_due = nil
      end
      _currently_due = currently_due.not_nil!
      @currently_due = _currently_due
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] disabled_reason Object to be assigned
    def disabled_reason=(disabled_reason : String?)
      if disabled_reason.nil?
        return @disabled_reason = nil
      end
      _disabled_reason = disabled_reason.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("disabled_reason", _disabled_reason.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @disabled_reason = _disabled_reason
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] errors Object to be assigned
    def errors=(errors : Array(Stripe::AccountRequirementsError)?)
      if errors.nil?
        return @errors = nil
      end
      _errors = errors.not_nil!
      OpenApi::ArrayValidator.validate(array: _errors) if _errors.is_a?(Array)
      @errors = _errors
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] eventually_due Object to be assigned
    def eventually_due=(eventually_due : Array(String)?)
      if eventually_due.nil?
        return @eventually_due = nil
      end
      _eventually_due = eventually_due.not_nil!
      @eventually_due = _eventually_due
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] past_due Object to be assigned
    def past_due=(past_due : Array(String)?)
      if past_due.nil?
        return @past_due = nil
      end
      _past_due = past_due.not_nil!
      @past_due = _past_due
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pending_verification Object to be assigned
    def pending_verification=(pending_verification : Array(String)?)
      if pending_verification.nil?
        return @pending_verification = nil
      end
      _pending_verification = pending_verification.not_nil!
      @pending_verification = _pending_verification
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@alternatives, @alternatives_present, @current_deadline, @current_deadline_present, @currently_due, @currently_due_present, @disabled_reason, @disabled_reason_present, @errors, @errors_present, @eventually_due, @eventually_due_present, @past_due, @past_due_present, @pending_verification, @pending_verification_present)
  end
end
