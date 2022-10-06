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
  class PaymentIntentPaymentMethodOptionsCard
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Controls when the funds will be captured from the customer's account.
    @[JSON::Field(key: "capture_method", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter capture_method : String? = nil
    ERROR_MESSAGE_FOR_CAPTURE_METHOD = "invalid value for \"capture_method\", must be one of [manual]."
    VALID_VALUES_FOR_CAPTURE_METHOD  = String.static_array("manual")

    @[JSON::Field(key: "installments", type: Stripe::PaymentIntentPaymentMethodOptionsCardInstallments?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: installments.nil? && !installments_present?)]
    getter installments : Stripe::PaymentIntentPaymentMethodOptionsCardInstallments? = nil

    @[JSON::Field(ignore: true)]
    property? installments_present : Bool = false

    @[JSON::Field(key: "mandate_options", type: Stripe::PaymentIntentPaymentMethodOptionsCardMandateOptions?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: mandate_options.nil? && !mandate_options_present?)]
    getter mandate_options : Stripe::PaymentIntentPaymentMethodOptionsCardMandateOptions? = nil

    @[JSON::Field(ignore: true)]
    property? mandate_options_present : Bool = false

    # Selected network to process this payment intent on. Depends on the available networks of the card attached to the payment intent. Can be only set confirm-time.
    @[JSON::Field(key: "network", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: network.nil? && !network_present?)]
    getter network : String? = nil
    ERROR_MESSAGE_FOR_NETWORK = "invalid value for \"network\", must be one of [amex, cartes_bancaires, diners, discover, interac, jcb, mastercard, unionpay, unknown, visa]."
    VALID_VALUES_FOR_NETWORK  = String.static_array("amex", "cartes_bancaires", "diners", "discover", "interac", "jcb", "mastercard", "unionpay", "unknown", "visa")

    @[JSON::Field(ignore: true)]
    property? network_present : Bool = false

    # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. Permitted values include: `automatic` or `any`. If not provided, defaults to `automatic`. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
    @[JSON::Field(key: "request_three_d_secure", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: request_three_d_secure.nil? && !request_three_d_secure_present?)]
    getter request_three_d_secure : String? = nil
    ERROR_MESSAGE_FOR_REQUEST_THREE_D_SECURE = "invalid value for \"request_three_d_secure\", must be one of [any, automatic, challenge_only]."
    VALID_VALUES_FOR_REQUEST_THREE_D_SECURE  = String.static_array("any", "automatic", "challenge_only")

    @[JSON::Field(ignore: true)]
    property? request_three_d_secure_present : Bool = false

    # Indicates that you intend to make future payments with this PaymentIntent's payment method.  Providing this parameter will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the PaymentIntent's Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https://stripe.com/docs/api/payment_methods/attach) to a Customer after the transaction completes.  When processing card payments, Stripe also uses `setup_future_usage` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https://stripe.com/docs/strong-customer-authentication).
    @[JSON::Field(key: "setup_future_usage", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter setup_future_usage : String? = nil
    ERROR_MESSAGE_FOR_SETUP_FUTURE_USAGE = "invalid value for \"setup_future_usage\", must be one of [none, off_session, on_session]."
    VALID_VALUES_FOR_SETUP_FUTURE_USAGE  = String.static_array("none", "off_session", "on_session")

    # Provides information about a card payment that customers see on their statements. Concatenated with the Kana prefix (shortened Kana descriptor) or Kana statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters. On card statements, the *concatenation* of both prefix and suffix (including separators) will appear truncated to 22 characters.
    @[JSON::Field(key: "statement_descriptor_suffix_kana", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter statement_descriptor_suffix_kana : String? = nil
    MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_SUFFIX_KANA = 5000

    # Provides information about a card payment that customers see on their statements. Concatenated with the Kanji prefix (shortened Kanji descriptor) or Kanji statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 17 characters. On card statements, the *concatenation* of both prefix and suffix (including separators) will appear truncated to 17 characters.
    @[JSON::Field(key: "statement_descriptor_suffix_kanji", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter statement_descriptor_suffix_kanji : String? = nil
    MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_SUFFIX_KANJI = 5000

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @capture_method : String? = nil,
      @installments : Stripe::PaymentIntentPaymentMethodOptionsCardInstallments? = nil,
      @mandate_options : Stripe::PaymentIntentPaymentMethodOptionsCardMandateOptions? = nil,
      @network : String? = nil,
      @request_three_d_secure : String? = nil,
      @setup_future_usage : String? = nil,
      @statement_descriptor_suffix_kana : String? = nil,
      @statement_descriptor_suffix_kanji : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_capture_method = @capture_method).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_CAPTURE_METHOD) unless OpenApi::EnumValidator.valid?(_capture_method, VALID_VALUES_FOR_CAPTURE_METHOD)
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
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor_suffix_kana", _statement_descriptor_suffix_kana.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_SUFFIX_KANA)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_statement_descriptor_suffix_kanji = @statement_descriptor_suffix_kanji).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor_suffix_kanji", _statement_descriptor_suffix_kanji.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_SUFFIX_KANJI)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_capture_method = @capture_method).nil?
        return false unless OpenApi::EnumValidator.valid?(_capture_method, VALID_VALUES_FOR_CAPTURE_METHOD)
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
        return false if _statement_descriptor_suffix_kana.to_s.size > MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_SUFFIX_KANA
      end

      unless (_statement_descriptor_suffix_kanji = @statement_descriptor_suffix_kanji).nil?
        return false if _statement_descriptor_suffix_kanji.to_s.size > MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_SUFFIX_KANJI
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
    # @param [Object] installments Object to be assigned
    def installments=(installments : Stripe::PaymentIntentPaymentMethodOptionsCardInstallments?)
      if installments.nil?
        return @installments = nil
      end
      _installments = installments.not_nil!
      _installments.validate if _installments.is_a?(OpenApi::Validatable)
      @installments = _installments
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mandate_options Object to be assigned
    def mandate_options=(mandate_options : Stripe::PaymentIntentPaymentMethodOptionsCardMandateOptions?)
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
    def statement_descriptor_suffix_kana=(statement_descriptor_suffix_kana : String?)
      if statement_descriptor_suffix_kana.nil?
        return @statement_descriptor_suffix_kana = nil
      end
      _statement_descriptor_suffix_kana = statement_descriptor_suffix_kana.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("statement_descriptor_suffix_kana", _statement_descriptor_suffix_kana.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_SUFFIX_KANA)
      @statement_descriptor_suffix_kana = _statement_descriptor_suffix_kana
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor_suffix_kanji Object to be assigned
    def statement_descriptor_suffix_kanji=(statement_descriptor_suffix_kanji : String?)
      if statement_descriptor_suffix_kanji.nil?
        return @statement_descriptor_suffix_kanji = nil
      end
      _statement_descriptor_suffix_kanji = statement_descriptor_suffix_kanji.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("statement_descriptor_suffix_kanji", _statement_descriptor_suffix_kanji.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_SUFFIX_KANJI)
      @statement_descriptor_suffix_kanji = _statement_descriptor_suffix_kanji
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@capture_method, @installments, @installments_present, @mandate_options, @mandate_options_present, @network, @network_present, @request_three_d_secure, @request_three_d_secure_present, @setup_future_usage, @statement_descriptor_suffix_kana, @statement_descriptor_suffix_kanji)
  end
end
