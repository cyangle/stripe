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
  class ApiErrors
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The type of error returned. One of `api_error`, `card_error`, `idempotency_error`, or `invalid_request_error`
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [api_error, card_error, idempotency_error, invalid_request_error]."
    VALID_VALUES_FOR__TYPE  = StaticArray["api_error", "card_error", "idempotency_error", "invalid_request_error"]

    # End of Required Properties

    # Optional Properties

    # For card errors, the ID of the failed charge.
    @[JSON::Field(key: "charge", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter charge : String? = nil
    MAX_LENGTH_FOR_CHARGE = 5000

    # For some errors that could be handled programmatically, a short string indicating the [error code](https://stripe.com/docs/error-codes) reported.
    @[JSON::Field(key: "code", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter code : String? = nil
    MAX_LENGTH_FOR_CODE = 5000

    # For card errors resulting from a card issuer decline, a short string indicating the [card issuer's reason for the decline](https://stripe.com/docs/declines#issuer-declines) if they provide one.
    @[JSON::Field(key: "decline_code", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter decline_code : String? = nil
    MAX_LENGTH_FOR_DECLINE_CODE = 5000

    # A URL to more information about the [error code](https://stripe.com/docs/error-codes) reported.
    @[JSON::Field(key: "doc_url", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter doc_url : String? = nil
    MAX_LENGTH_FOR_DOC_URL = 5000

    # A human-readable message providing more details about the error. For card errors, these messages can be shown to your users.
    @[JSON::Field(key: "message", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter message : String? = nil
    MAX_LENGTH_FOR_MESSAGE = 40000

    # If the error is parameter-specific, the parameter related to the error. For example, you can use this to display a message near the correct form field.
    @[JSON::Field(key: "param", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter param : String? = nil
    MAX_LENGTH_FOR_PARAM = 5000

    @[JSON::Field(key: "payment_intent", type: Stripe::PaymentIntent?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_intent : Stripe::PaymentIntent? = nil

    @[JSON::Field(key: "payment_method", type: Stripe::PaymentMethod?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_method : Stripe::PaymentMethod? = nil

    # If the error is specific to the type of payment method, the payment method type that had a problem. This field is only populated for invoice-related errors.
    @[JSON::Field(key: "payment_method_type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_method_type : String? = nil
    MAX_LENGTH_FOR_PAYMENT_METHOD_TYPE = 5000

    @[JSON::Field(key: "setup_intent", type: Stripe::SetupIntent?, default: nil, required: false, nullable: false, emit_null: false)]
    getter setup_intent : Stripe::SetupIntent? = nil

    @[JSON::Field(key: "source", type: Stripe::ApiErrorsSource?, default: nil, required: false, nullable: false, emit_null: false)]
    getter source : Stripe::ApiErrorsSource? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @_type : String? = nil,
      # Optional properties
      @charge : String? = nil,
      @code : String? = nil,
      @decline_code : String? = nil,
      @doc_url : String? = nil,
      @message : String? = nil,
      @param : String? = nil,
      @payment_intent : Stripe::PaymentIntent? = nil,
      @payment_method : Stripe::PaymentMethod? = nil,
      @payment_method_type : String? = nil,
      @setup_intent : Stripe::SetupIntent? = nil,
      @source : Stripe::ApiErrorsSource? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?

      unless (__type = @_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR__TYPE) unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end
      unless (_charge = @charge).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("charge", _charge.to_s.size, MAX_LENGTH_FOR_CHARGE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_code = @code).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("code", _code.to_s.size, MAX_LENGTH_FOR_CODE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_decline_code = @decline_code).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("decline_code", _decline_code.to_s.size, MAX_LENGTH_FOR_DECLINE_CODE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_doc_url = @doc_url).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("doc_url", _doc_url.to_s.size, MAX_LENGTH_FOR_DOC_URL)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_message = @message).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("message", _message.to_s.size, MAX_LENGTH_FOR_MESSAGE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_param = @param).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("param", _param.to_s.size, MAX_LENGTH_FOR_PARAM)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_payment_intent = @payment_intent).nil?
        invalid_properties.concat(_payment_intent.list_invalid_properties_for("payment_intent")) if _payment_intent.is_a?(OpenApi::Validatable)
      end
      unless (_payment_method = @payment_method).nil?
        invalid_properties.concat(_payment_method.list_invalid_properties_for("payment_method")) if _payment_method.is_a?(OpenApi::Validatable)
      end
      unless (_payment_method_type = @payment_method_type).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("payment_method_type", _payment_method_type.to_s.size, MAX_LENGTH_FOR_PAYMENT_METHOD_TYPE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_setup_intent = @setup_intent).nil?
        invalid_properties.concat(_setup_intent.list_invalid_properties_for("setup_intent")) if _setup_intent.is_a?(OpenApi::Validatable)
      end
      unless (_source = @source).nil?
        invalid_properties.concat(_source.list_invalid_properties_for("source")) if _source.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @_type.nil?
      unless (__type = @_type).nil?
        return false unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end

      unless (_charge = @charge).nil?
        return false if _charge.to_s.size > MAX_LENGTH_FOR_CHARGE
      end

      unless (_code = @code).nil?
        return false if _code.to_s.size > MAX_LENGTH_FOR_CODE
      end

      unless (_decline_code = @decline_code).nil?
        return false if _decline_code.to_s.size > MAX_LENGTH_FOR_DECLINE_CODE
      end

      unless (_doc_url = @doc_url).nil?
        return false if _doc_url.to_s.size > MAX_LENGTH_FOR_DOC_URL
      end

      unless (_message = @message).nil?
        return false if _message.to_s.size > MAX_LENGTH_FOR_MESSAGE
      end

      unless (_param = @param).nil?
        return false if _param.to_s.size > MAX_LENGTH_FOR_PARAM
      end

      unless (_payment_intent = @payment_intent).nil?
        return false if _payment_intent.is_a?(OpenApi::Validatable) && !_payment_intent.valid?
      end

      unless (_payment_method = @payment_method).nil?
        return false if _payment_method.is_a?(OpenApi::Validatable) && !_payment_method.valid?
      end

      unless (_payment_method_type = @payment_method_type).nil?
        return false if _payment_method_type.to_s.size > MAX_LENGTH_FOR_PAYMENT_METHOD_TYPE
      end

      unless (_setup_intent = @setup_intent).nil?
        return false if _setup_intent.is_a?(OpenApi::Validatable) && !_setup_intent.valid?
      end

      unless (_source = @source).nil?
        return false if _source.is_a?(OpenApi::Validatable) && !_source.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type : String?)
      if _type.nil?
        raise ArgumentError.new("\"_type\" is required and cannot be null")
      end
      __type = _type.not_nil!
      OpenApi::EnumValidator.validate("_type", __type, VALID_VALUES_FOR__TYPE)
      @_type = __type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] charge Object to be assigned
    def charge=(charge : String?)
      if charge.nil?
        return @charge = nil
      end
      _charge = charge.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("charge", _charge.to_s.size, MAX_LENGTH_FOR_CHARGE)
      @charge = _charge
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] code Object to be assigned
    def code=(code : String?)
      if code.nil?
        return @code = nil
      end
      _code = code.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("code", _code.to_s.size, MAX_LENGTH_FOR_CODE)
      @code = _code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] decline_code Object to be assigned
    def decline_code=(decline_code : String?)
      if decline_code.nil?
        return @decline_code = nil
      end
      _decline_code = decline_code.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("decline_code", _decline_code.to_s.size, MAX_LENGTH_FOR_DECLINE_CODE)
      @decline_code = _decline_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] doc_url Object to be assigned
    def doc_url=(doc_url : String?)
      if doc_url.nil?
        return @doc_url = nil
      end
      _doc_url = doc_url.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("doc_url", _doc_url.to_s.size, MAX_LENGTH_FOR_DOC_URL)
      @doc_url = _doc_url
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] message Object to be assigned
    def message=(message : String?)
      if message.nil?
        return @message = nil
      end
      _message = message.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("message", _message.to_s.size, MAX_LENGTH_FOR_MESSAGE)
      @message = _message
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] param Object to be assigned
    def param=(param : String?)
      if param.nil?
        return @param = nil
      end
      _param = param.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("param", _param.to_s.size, MAX_LENGTH_FOR_PARAM)
      @param = _param
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_intent Object to be assigned
    def payment_intent=(payment_intent : Stripe::PaymentIntent?)
      if payment_intent.nil?
        return @payment_intent = nil
      end
      _payment_intent = payment_intent.not_nil!
      _payment_intent.validate if _payment_intent.is_a?(OpenApi::Validatable)
      @payment_intent = _payment_intent
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method Object to be assigned
    def payment_method=(payment_method : Stripe::PaymentMethod?)
      if payment_method.nil?
        return @payment_method = nil
      end
      _payment_method = payment_method.not_nil!
      _payment_method.validate if _payment_method.is_a?(OpenApi::Validatable)
      @payment_method = _payment_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method_type Object to be assigned
    def payment_method_type=(payment_method_type : String?)
      if payment_method_type.nil?
        return @payment_method_type = nil
      end
      _payment_method_type = payment_method_type.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("payment_method_type", _payment_method_type.to_s.size, MAX_LENGTH_FOR_PAYMENT_METHOD_TYPE)
      @payment_method_type = _payment_method_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] setup_intent Object to be assigned
    def setup_intent=(setup_intent : Stripe::SetupIntent?)
      if setup_intent.nil?
        return @setup_intent = nil
      end
      _setup_intent = setup_intent.not_nil!
      _setup_intent.validate if _setup_intent.is_a?(OpenApi::Validatable)
      @setup_intent = _setup_intent
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source Object to be assigned
    def source=(source : Stripe::ApiErrorsSource?)
      if source.nil?
        return @source = nil
      end
      _source = source.not_nil!
      _source.validate if _source.is_a?(OpenApi::Validatable)
      @source = _source
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@_type, @charge, @code, @decline_code, @doc_url, @message, @param, @payment_intent, @payment_method, @payment_method_type, @setup_intent, @source)
  end
end
