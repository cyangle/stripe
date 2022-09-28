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
  # Represents an action performed by the reader
  class TerminalReaderReaderResourceReaderAction
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # Status of the action performed by the reader.
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil

    ENUM_VALIDATOR_FOR_STATUS = EnumValidator.new("status", "String", ["failed", "in_progress", "succeeded"])

    # Type of action performed by the reader.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil

    ENUM_VALIDATOR_FOR__TYPE = EnumValidator.new("_type", "String", ["process_payment_intent", "process_setup_intent", "set_reader_display"])

    # Optional properties

    # Failure code, only set if status is `failed`.
    @[JSON::Field(key: "failure_code", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: failure_code.nil? && !failure_code_present?)]
    getter failure_code : String? = nil

    @[JSON::Field(ignore: true)]
    property? failure_code_present : Bool = false

    # Detailed failure message, only set if status is `failed`.
    @[JSON::Field(key: "failure_message", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: failure_message.nil? && !failure_message_present?)]
    getter failure_message : String? = nil

    @[JSON::Field(ignore: true)]
    property? failure_message_present : Bool = false

    @[JSON::Field(key: "process_payment_intent", type: Stripe::TerminalReaderReaderResourceProcessPaymentIntentAction?, default: nil, required: false, nullable: false, emit_null: false)]
    getter process_payment_intent : Stripe::TerminalReaderReaderResourceProcessPaymentIntentAction? = nil

    @[JSON::Field(key: "process_setup_intent", type: Stripe::TerminalReaderReaderResourceProcessSetupIntentAction?, default: nil, required: false, nullable: false, emit_null: false)]
    getter process_setup_intent : Stripe::TerminalReaderReaderResourceProcessSetupIntentAction? = nil

    @[JSON::Field(key: "set_reader_display", type: Stripe::TerminalReaderReaderResourceSetReaderDisplayAction?, default: nil, required: false, nullable: false, emit_null: false)]
    getter set_reader_display : Stripe::TerminalReaderReaderResourceSetReaderDisplayAction? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @status : String? = nil,
      @_type : String? = nil,
      # Optional properties
      @failure_code : String? = nil,
      @failure_message : String? = nil,
      @process_payment_intent : Stripe::TerminalReaderReaderResourceProcessPaymentIntentAction? = nil,
      @process_setup_intent : Stripe::TerminalReaderReaderResourceProcessSetupIntentAction? = nil,
      @set_reader_display : Stripe::TerminalReaderReaderResourceSetReaderDisplayAction? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_STATUS.error_message) unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status, false)

      invalid_properties.push(ENUM_VALIDATOR_FOR__TYPE.error_message) unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)
      if _failure_code = @failure_code
        if _failure_code.to_s.size > 5000
          invalid_properties.push("invalid value for \"failure_code\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _failure_message = @failure_message
        if _failure_message.to_s.size > 5000
          invalid_properties.push("invalid value for \"failure_message\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _process_payment_intent = @process_payment_intent
        if _process_payment_intent.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_process_payment_intent.list_invalid_properties_for("process_payment_intent"))
        end
      end
      if _process_setup_intent = @process_setup_intent
        if _process_setup_intent.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_process_setup_intent.list_invalid_properties_for("process_setup_intent"))
        end
      end
      if _set_reader_display = @set_reader_display
        if _set_reader_display.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_set_reader_display.list_invalid_properties_for("set_reader_display"))
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status, false)
      return false unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)
      if _failure_code = @failure_code
        return false if _failure_code.to_s.size > 5000
      end
      if _failure_message = @failure_message
        return false if _failure_message.to_s.size > 5000
      end
      if _process_payment_intent = @process_payment_intent
        if _process_payment_intent.is_a?(OpenApi::Validatable)
          return false unless _process_payment_intent.valid?
        end
      end
      if _process_setup_intent = @process_setup_intent
        if _process_setup_intent.is_a?(OpenApi::Validatable)
          return false unless _process_setup_intent.valid?
        end
      end
      if _set_reader_display = @set_reader_display
        if _set_reader_display.is_a?(OpenApi::Validatable)
          return false unless _set_reader_display.valid?
        end
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status : String?)
      if status.nil?
        raise ArgumentError.new("\"status\" is required and cannot be null")
      end
      _status = status.not_nil!
      ENUM_VALIDATOR_FOR_STATUS.valid!(_status)
      @status = _status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type : String?)
      if _type.nil?
        raise ArgumentError.new("\"_type\" is required and cannot be null")
      end
      __type = _type.not_nil!
      ENUM_VALIDATOR_FOR__TYPE.valid!(__type)
      @_type = __type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] failure_code Object to be assigned
    def failure_code=(failure_code : String?)
      if failure_code.nil?
        return @failure_code = nil
      end
      _failure_code = failure_code.not_nil!
      if _failure_code.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"failure_code\", the character length must be smaller than or equal to 5000.")
      end

      @failure_code = _failure_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] failure_message Object to be assigned
    def failure_message=(failure_message : String?)
      if failure_message.nil?
        return @failure_message = nil
      end
      _failure_message = failure_message.not_nil!
      if _failure_message.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"failure_message\", the character length must be smaller than or equal to 5000.")
      end

      @failure_message = _failure_message
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] process_payment_intent Object to be assigned
    def process_payment_intent=(process_payment_intent : Stripe::TerminalReaderReaderResourceProcessPaymentIntentAction?)
      if process_payment_intent.nil?
        return @process_payment_intent = nil
      end
      _process_payment_intent = process_payment_intent.not_nil!
      if _process_payment_intent.is_a?(OpenApi::Validatable)
        _process_payment_intent.validate
      end
      @process_payment_intent = _process_payment_intent
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] process_setup_intent Object to be assigned
    def process_setup_intent=(process_setup_intent : Stripe::TerminalReaderReaderResourceProcessSetupIntentAction?)
      if process_setup_intent.nil?
        return @process_setup_intent = nil
      end
      _process_setup_intent = process_setup_intent.not_nil!
      if _process_setup_intent.is_a?(OpenApi::Validatable)
        _process_setup_intent.validate
      end
      @process_setup_intent = _process_setup_intent
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] set_reader_display Object to be assigned
    def set_reader_display=(set_reader_display : Stripe::TerminalReaderReaderResourceSetReaderDisplayAction?)
      if set_reader_display.nil?
        return @set_reader_display = nil
      end
      _set_reader_display = set_reader_display.not_nil!
      if _set_reader_display.is_a?(OpenApi::Validatable)
        _set_reader_display.validate
      end
      @set_reader_display = _set_reader_display
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@status, @_type, @failure_code, @failure_code_present, @failure_message, @failure_message_present, @process_payment_intent, @process_setup_intent, @set_reader_display)
  end
end
