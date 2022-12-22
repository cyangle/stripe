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
  class PaymentIntentParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "capture_method", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter capture_method : String? = nil
    ERROR_MESSAGE_FOR_CAPTURE_METHOD = "invalid value for \"capture_method\", must be one of [, manual]."
    VALID_VALUES_FOR_CAPTURE_METHOD  = String.static_array("", "manual")

    @[JSON::Field(key: "cvc_token", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter cvc_token : String? = nil
    MAX_LENGTH_FOR_CVC_TOKEN = 5000

    @[JSON::Field(key: "installments", type: Stripe::InstallmentsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter installments : Stripe::InstallmentsParam? = nil

    @[JSON::Field(key: "mandate_options", type: Stripe::PaymentMethodOptionsCardMandateOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter mandate_options : Stripe::PaymentMethodOptionsCardMandateOptions? = nil

    @[JSON::Field(key: "network", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter network : String? = nil
    MAX_LENGTH_FOR_NETWORK    = 5000
    ERROR_MESSAGE_FOR_NETWORK = "invalid value for \"network\", must be one of [amex, cartes_bancaires, diners, discover, interac, jcb, mastercard, unionpay, unknown, visa]."
    VALID_VALUES_FOR_NETWORK  = String.static_array("amex", "cartes_bancaires", "diners", "discover", "interac", "jcb", "mastercard", "unionpay", "unknown", "visa")

    @[JSON::Field(key: "request_three_d_secure", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter request_three_d_secure : String? = nil
    MAX_LENGTH_FOR_REQUEST_THREE_D_SECURE    = 5000
    ERROR_MESSAGE_FOR_REQUEST_THREE_D_SECURE = "invalid value for \"request_three_d_secure\", must be one of [any, automatic]."
    VALID_VALUES_FOR_REQUEST_THREE_D_SECURE  = String.static_array("any", "automatic")

    @[JSON::Field(key: "setup_future_usage", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter setup_future_usage : String? = nil
    ERROR_MESSAGE_FOR_SETUP_FUTURE_USAGE = "invalid value for \"setup_future_usage\", must be one of [, none, off_session, on_session]."
    VALID_VALUES_FOR_SETUP_FUTURE_USAGE  = String.static_array("", "none", "off_session", "on_session")

    @[JSON::Field(key: "statement_descriptor_suffix_kana", type: Stripe::PaymentIntentParamStatementDescriptorSuffixKana?, default: nil, required: false, nullable: false, emit_null: false)]
    getter statement_descriptor_suffix_kana : Stripe::PaymentIntentParamStatementDescriptorSuffixKana? = nil

    @[JSON::Field(key: "statement_descriptor_suffix_kanji", type: Stripe::PaymentIntentParamStatementDescriptorSuffixKanji?, default: nil, required: false, nullable: false, emit_null: false)]
    getter statement_descriptor_suffix_kanji : Stripe::PaymentIntentParamStatementDescriptorSuffixKanji? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @capture_method : String? = nil,
      @cvc_token : String? = nil,
      @installments : Stripe::InstallmentsParam? = nil,
      @mandate_options : Stripe::PaymentMethodOptionsCardMandateOptions? = nil,
      @network : String? = nil,
      @request_three_d_secure : String? = nil,
      @setup_future_usage : String? = nil,
      @statement_descriptor_suffix_kana : Stripe::PaymentIntentParamStatementDescriptorSuffixKana? = nil,
      @statement_descriptor_suffix_kanji : Stripe::PaymentIntentParamStatementDescriptorSuffixKanji? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_capture_method = @capture_method).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_CAPTURE_METHOD) unless OpenApi::EnumValidator.valid?(_capture_method, VALID_VALUES_FOR_CAPTURE_METHOD)
      end
      unless (_cvc_token = @cvc_token).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("cvc_token", _cvc_token.to_s.size, MAX_LENGTH_FOR_CVC_TOKEN)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_installments = @installments).nil?
        invalid_properties.concat(_installments.list_invalid_properties_for("installments")) if _installments.is_a?(OpenApi::Validatable)
      end
      unless (_mandate_options = @mandate_options).nil?
        invalid_properties.concat(_mandate_options.list_invalid_properties_for("mandate_options")) if _mandate_options.is_a?(OpenApi::Validatable)
      end
      unless (_network = @network).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_NETWORK) unless OpenApi::EnumValidator.valid?(_network, VALID_VALUES_FOR_NETWORK)
      end
      unless (_request_three_d_secure = @request_three_d_secure).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_REQUEST_THREE_D_SECURE) unless OpenApi::EnumValidator.valid?(_request_three_d_secure, VALID_VALUES_FOR_REQUEST_THREE_D_SECURE)
      end
      unless (_setup_future_usage = @setup_future_usage).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_SETUP_FUTURE_USAGE) unless OpenApi::EnumValidator.valid?(_setup_future_usage, VALID_VALUES_FOR_SETUP_FUTURE_USAGE)
      end
      unless (_statement_descriptor_suffix_kana = @statement_descriptor_suffix_kana).nil?
        invalid_properties.concat(_statement_descriptor_suffix_kana.list_invalid_properties_for("statement_descriptor_suffix_kana")) if _statement_descriptor_suffix_kana.is_a?(OpenApi::Validatable)
      end
      unless (_statement_descriptor_suffix_kanji = @statement_descriptor_suffix_kanji).nil?
        invalid_properties.concat(_statement_descriptor_suffix_kanji.list_invalid_properties_for("statement_descriptor_suffix_kanji")) if _statement_descriptor_suffix_kanji.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_capture_method = @capture_method).nil?
        return false unless OpenApi::EnumValidator.valid?(_capture_method, VALID_VALUES_FOR_CAPTURE_METHOD)
      end

      unless (_cvc_token = @cvc_token).nil?
        return false if _cvc_token.to_s.size > MAX_LENGTH_FOR_CVC_TOKEN
      end

      unless (_installments = @installments).nil?
        return false if _installments.is_a?(OpenApi::Validatable) && !_installments.valid?
      end

      unless (_mandate_options = @mandate_options).nil?
        return false if _mandate_options.is_a?(OpenApi::Validatable) && !_mandate_options.valid?
      end

      unless (_network = @network).nil?
        return false unless OpenApi::EnumValidator.valid?(_network, VALID_VALUES_FOR_NETWORK)
      end

      unless (_request_three_d_secure = @request_three_d_secure).nil?
        return false unless OpenApi::EnumValidator.valid?(_request_three_d_secure, VALID_VALUES_FOR_REQUEST_THREE_D_SECURE)
      end

      unless (_setup_future_usage = @setup_future_usage).nil?
        return false unless OpenApi::EnumValidator.valid?(_setup_future_usage, VALID_VALUES_FOR_SETUP_FUTURE_USAGE)
      end

      unless (_statement_descriptor_suffix_kana = @statement_descriptor_suffix_kana).nil?
        return false if _statement_descriptor_suffix_kana.is_a?(OpenApi::Validatable) && !_statement_descriptor_suffix_kana.valid?
      end

      unless (_statement_descriptor_suffix_kanji = @statement_descriptor_suffix_kanji).nil?
        return false if _statement_descriptor_suffix_kanji.is_a?(OpenApi::Validatable) && !_statement_descriptor_suffix_kanji.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] capture_method Object to be assigned
    def capture_method=(capture_method : String?)
      if capture_method.nil?
        return @capture_method = nil
      end
      _capture_method = capture_method.not_nil!
      OpenApi::EnumValidator.validate("capture_method", _capture_method, VALID_VALUES_FOR_CAPTURE_METHOD)
      @capture_method = _capture_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cvc_token Object to be assigned
    def cvc_token=(cvc_token : String?)
      if cvc_token.nil?
        return @cvc_token = nil
      end
      _cvc_token = cvc_token.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("cvc_token", _cvc_token.to_s.size, MAX_LENGTH_FOR_CVC_TOKEN)
      @cvc_token = _cvc_token
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] installments Object to be assigned
    def installments=(installments : Stripe::InstallmentsParam?)
      if installments.nil?
        return @installments = nil
      end
      _installments = installments.not_nil!
      _installments.validate if _installments.is_a?(OpenApi::Validatable)
      @installments = _installments
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mandate_options Object to be assigned
    def mandate_options=(mandate_options : Stripe::PaymentMethodOptionsCardMandateOptions?)
      if mandate_options.nil?
        return @mandate_options = nil
      end
      _mandate_options = mandate_options.not_nil!
      _mandate_options.validate if _mandate_options.is_a?(OpenApi::Validatable)
      @mandate_options = _mandate_options
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] network Object to be assigned
    def network=(network : String?)
      if network.nil?
        return @network = nil
      end
      _network = network.not_nil!
      OpenApi::EnumValidator.validate("network", _network, VALID_VALUES_FOR_NETWORK)
      @network = _network
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] request_three_d_secure Object to be assigned
    def request_three_d_secure=(request_three_d_secure : String?)
      if request_three_d_secure.nil?
        return @request_three_d_secure = nil
      end
      _request_three_d_secure = request_three_d_secure.not_nil!
      OpenApi::EnumValidator.validate("request_three_d_secure", _request_three_d_secure, VALID_VALUES_FOR_REQUEST_THREE_D_SECURE)
      @request_three_d_secure = _request_three_d_secure
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] setup_future_usage Object to be assigned
    def setup_future_usage=(setup_future_usage : String?)
      if setup_future_usage.nil?
        return @setup_future_usage = nil
      end
      _setup_future_usage = setup_future_usage.not_nil!
      OpenApi::EnumValidator.validate("setup_future_usage", _setup_future_usage, VALID_VALUES_FOR_SETUP_FUTURE_USAGE)
      @setup_future_usage = _setup_future_usage
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor_suffix_kana Object to be assigned
    def statement_descriptor_suffix_kana=(statement_descriptor_suffix_kana : Stripe::PaymentIntentParamStatementDescriptorSuffixKana?)
      if statement_descriptor_suffix_kana.nil?
        return @statement_descriptor_suffix_kana = nil
      end
      _statement_descriptor_suffix_kana = statement_descriptor_suffix_kana.not_nil!
      _statement_descriptor_suffix_kana.validate if _statement_descriptor_suffix_kana.is_a?(OpenApi::Validatable)
      @statement_descriptor_suffix_kana = _statement_descriptor_suffix_kana
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor_suffix_kanji Object to be assigned
    def statement_descriptor_suffix_kanji=(statement_descriptor_suffix_kanji : Stripe::PaymentIntentParamStatementDescriptorSuffixKanji?)
      if statement_descriptor_suffix_kanji.nil?
        return @statement_descriptor_suffix_kanji = nil
      end
      _statement_descriptor_suffix_kanji = statement_descriptor_suffix_kanji.not_nil!
      _statement_descriptor_suffix_kanji.validate if _statement_descriptor_suffix_kanji.is_a?(OpenApi::Validatable)
      @statement_descriptor_suffix_kanji = _statement_descriptor_suffix_kanji
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@capture_method, @cvc_token, @installments, @mandate_options, @network, @request_three_d_secure, @setup_future_usage, @statement_descriptor_suffix_kana, @statement_descriptor_suffix_kanji)
  end
end
