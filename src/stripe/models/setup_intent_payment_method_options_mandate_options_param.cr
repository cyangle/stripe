#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./mandate_options_param_custom_mandate_url"

module Stripe
  class SetupIntentPaymentMethodOptionsMandateOptionsParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "custom_mandate_url", type: Stripe::MandateOptionsParamCustomMandateUrl?, default: nil, required: false, nullable: false, emit_null: false)]
    getter custom_mandate_url : Stripe::MandateOptionsParamCustomMandateUrl? = nil

    # List of Stripe products where this mandate can be selected automatically.
    @[JSON::Field(key: "default_for", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter default_for : Array(String)? = nil
    ERROR_MESSAGE_FOR_DEFAULT_FOR = "invalid value for \"default_for\", must be one of [invoice, subscription]."
    VALID_VALUES_FOR_DEFAULT_FOR  = String.static_array("invoice", "subscription")

    # Description of the mandate interval. Only required if 'payment_schedule' parameter is 'interval' or 'combined'.
    @[JSON::Field(key: "interval_description", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter interval_description : String? = nil
    MAX_LENGTH_FOR_INTERVAL_DESCRIPTION = 500

    # Payment schedule for the mandate.
    @[JSON::Field(key: "payment_schedule", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_schedule : String? = nil
    ERROR_MESSAGE_FOR_PAYMENT_SCHEDULE = "invalid value for \"payment_schedule\", must be one of [combined, interval, sporadic]."
    VALID_VALUES_FOR_PAYMENT_SCHEDULE  = String.static_array("combined", "interval", "sporadic")

    # Transaction type of the mandate.
    @[JSON::Field(key: "transaction_type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter transaction_type : String? = nil
    ERROR_MESSAGE_FOR_TRANSACTION_TYPE = "invalid value for \"transaction_type\", must be one of [business, personal]."
    VALID_VALUES_FOR_TRANSACTION_TYPE  = String.static_array("business", "personal")

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @custom_mandate_url : Stripe::MandateOptionsParamCustomMandateUrl? = nil,
      @default_for : Array(String)? = nil,
      @interval_description : String? = nil,
      @payment_schedule : String? = nil,
      @transaction_type : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_custom_mandate_url = @custom_mandate_url).nil?
        invalid_properties.concat(_custom_mandate_url.list_invalid_properties_for("custom_mandate_url")) if _custom_mandate_url.is_a?(OpenApi::Validatable)
      end
      unless (_default_for = @default_for).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_DEFAULT_FOR) unless OpenApi::EnumValidator.valid?(_default_for, VALID_VALUES_FOR_DEFAULT_FOR)
      end
      unless (_interval_description = @interval_description).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("interval_description", _interval_description.to_s.size, MAX_LENGTH_FOR_INTERVAL_DESCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_payment_schedule = @payment_schedule).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_PAYMENT_SCHEDULE) unless OpenApi::EnumValidator.valid?(_payment_schedule, VALID_VALUES_FOR_PAYMENT_SCHEDULE)
      end
      unless (_transaction_type = @transaction_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_TRANSACTION_TYPE) unless OpenApi::EnumValidator.valid?(_transaction_type, VALID_VALUES_FOR_TRANSACTION_TYPE)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_custom_mandate_url = @custom_mandate_url).nil?
        return false if _custom_mandate_url.is_a?(OpenApi::Validatable) && !_custom_mandate_url.valid?
      end

      unless (_default_for = @default_for).nil?
        return false unless OpenApi::EnumValidator.valid?(_default_for, VALID_VALUES_FOR_DEFAULT_FOR)
      end

      unless (_interval_description = @interval_description).nil?
        return false if _interval_description.to_s.size > MAX_LENGTH_FOR_INTERVAL_DESCRIPTION
      end

      unless (_payment_schedule = @payment_schedule).nil?
        return false unless OpenApi::EnumValidator.valid?(_payment_schedule, VALID_VALUES_FOR_PAYMENT_SCHEDULE)
      end

      unless (_transaction_type = @transaction_type).nil?
        return false unless OpenApi::EnumValidator.valid?(_transaction_type, VALID_VALUES_FOR_TRANSACTION_TYPE)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] custom_mandate_url Object to be assigned
    def custom_mandate_url=(new_value : Stripe::MandateOptionsParamCustomMandateUrl?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @custom_mandate_url = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_for Object to be assigned
    def default_for=(new_value : Array(String)?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("default_for", new_value, VALID_VALUES_FOR_DEFAULT_FOR)
      end

      @default_for = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interval_description Object to be assigned
    def interval_description=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("interval_description", new_value.to_s.size, MAX_LENGTH_FOR_INTERVAL_DESCRIPTION)
      end

      @interval_description = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_schedule Object to be assigned
    def payment_schedule=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("payment_schedule", new_value, VALID_VALUES_FOR_PAYMENT_SCHEDULE)
      end

      @payment_schedule = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transaction_type Object to be assigned
    def transaction_type=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("transaction_type", new_value, VALID_VALUES_FOR_TRANSACTION_TYPE)
      end

      @transaction_type = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@custom_mandate_url, @default_for, @interval_description, @payment_schedule, @transaction_type)
  end
end
