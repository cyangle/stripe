#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./bank_transfer_param"
require "./linked_account_options_param"
require "./mandate_options_param"
require "./networks_options_param"
require "./payment_intent_payment_method_options_param_reference"

module Stripe
  class PaymentIntentPaymentMethodOptionsParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "bank_transfer", type: Stripe::BankTransferParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter bank_transfer : Stripe::BankTransferParam? = nil

    # Controls when the funds are captured from the customer's account.  If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.  If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
    @[JSON::Field(key: "capture_method", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter capture_method : String? = nil
    ERROR_MESSAGE_FOR_CAPTURE_METHOD = "invalid value for \"capture_method\", must be one of [, manual]."
    VALID_VALUES_FOR_CAPTURE_METHOD  = String.static_array("", "manual")

    # The 6-digit BLIK code that a customer has generated using their banking application. Can only be set on confirmation.
    @[JSON::Field(key: "code", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter code : String? = nil
    MAX_LENGTH_FOR_CODE = 5000

    @[JSON::Field(key: "financial_connections", type: Stripe::LinkedAccountOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter financial_connections : Stripe::LinkedAccountOptionsParam? = nil

    # The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
    @[JSON::Field(key: "funding_type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter funding_type : String? = nil
    ERROR_MESSAGE_FOR_FUNDING_TYPE = "invalid value for \"funding_type\", must be one of [bank_transfer]."
    VALID_VALUES_FOR_FUNDING_TYPE  = String.static_array("bank_transfer")

    @[JSON::Field(key: "mandate_options", type: Stripe::MandateOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter mandate_options : Stripe::MandateOptionsParam? = nil

    @[JSON::Field(key: "networks", type: Stripe::NetworksOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter networks : Stripe::NetworksOptionsParam? = nil

    # [Deprecated] This is a legacy parameter that no longer has any function.
    @[JSON::Field(key: "persistent_token", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter persistent_token : String? = nil
    MAX_LENGTH_FOR_PERSISTENT_TOKEN = 5000

    # Preferred transaction settlement speed
    @[JSON::Field(key: "preferred_settlement_speed", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter preferred_settlement_speed : String? = nil
    ERROR_MESSAGE_FOR_PREFERRED_SETTLEMENT_SPEED = "invalid value for \"preferred_settlement_speed\", must be one of [, fastest, standard]."
    VALID_VALUES_FOR_PREFERRED_SETTLEMENT_SPEED  = String.static_array("", "fastest", "standard")

    @[JSON::Field(key: "reference", type: Stripe::PaymentIntentPaymentMethodOptionsParamReference?, default: nil, required: false, nullable: false, emit_null: false)]
    getter reference : Stripe::PaymentIntentPaymentMethodOptionsParamReference? = nil

    # Indicates that you intend to make future payments with this PaymentIntent's payment method.  If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.  If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.  When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).  If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
    @[JSON::Field(key: "setup_future_usage", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter setup_future_usage : String? = nil
    ERROR_MESSAGE_FOR_SETUP_FUTURE_USAGE = "invalid value for \"setup_future_usage\", must be one of [, none, off_session, on_session]."
    VALID_VALUES_FOR_SETUP_FUTURE_USAGE  = String.static_array("", "none", "off_session", "on_session")

    # Bank account verification method.
    @[JSON::Field(key: "verification_method", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter verification_method : String? = nil
    ERROR_MESSAGE_FOR_VERIFICATION_METHOD = "invalid value for \"verification_method\", must be one of [automatic, instant, microdeposits]."
    VALID_VALUES_FOR_VERIFICATION_METHOD  = String.static_array("automatic", "instant", "microdeposits")

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @bank_transfer : Stripe::BankTransferParam? = nil,
      @capture_method : String? = nil,
      @code : String? = nil,
      @financial_connections : Stripe::LinkedAccountOptionsParam? = nil,
      @funding_type : String? = nil,
      @mandate_options : Stripe::MandateOptionsParam? = nil,
      @networks : Stripe::NetworksOptionsParam? = nil,
      @persistent_token : String? = nil,
      @preferred_settlement_speed : String? = nil,
      @reference : Stripe::PaymentIntentPaymentMethodOptionsParamReference? = nil,
      @setup_future_usage : String? = nil,
      @verification_method : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_bank_transfer = @bank_transfer).nil?
        invalid_properties.concat(_bank_transfer.list_invalid_properties_for("bank_transfer")) if _bank_transfer.is_a?(OpenApi::Validatable)
      end
      unless (_capture_method = @capture_method).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_CAPTURE_METHOD) unless OpenApi::EnumValidator.valid?(_capture_method, VALID_VALUES_FOR_CAPTURE_METHOD)
      end
      unless (_code = @code).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("code", _code.to_s.size, MAX_LENGTH_FOR_CODE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_financial_connections = @financial_connections).nil?
        invalid_properties.concat(_financial_connections.list_invalid_properties_for("financial_connections")) if _financial_connections.is_a?(OpenApi::Validatable)
      end
      unless (_funding_type = @funding_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_FUNDING_TYPE) unless OpenApi::EnumValidator.valid?(_funding_type, VALID_VALUES_FOR_FUNDING_TYPE)
      end
      unless (_mandate_options = @mandate_options).nil?
        invalid_properties.concat(_mandate_options.list_invalid_properties_for("mandate_options")) if _mandate_options.is_a?(OpenApi::Validatable)
      end
      unless (_networks = @networks).nil?
        invalid_properties.concat(_networks.list_invalid_properties_for("networks")) if _networks.is_a?(OpenApi::Validatable)
      end
      unless (_persistent_token = @persistent_token).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("persistent_token", _persistent_token.to_s.size, MAX_LENGTH_FOR_PERSISTENT_TOKEN)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_preferred_settlement_speed = @preferred_settlement_speed).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_PREFERRED_SETTLEMENT_SPEED) unless OpenApi::EnumValidator.valid?(_preferred_settlement_speed, VALID_VALUES_FOR_PREFERRED_SETTLEMENT_SPEED)
      end
      unless (_reference = @reference).nil?
        invalid_properties.concat(_reference.list_invalid_properties_for("reference")) if _reference.is_a?(OpenApi::Validatable)
      end
      unless (_setup_future_usage = @setup_future_usage).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_SETUP_FUTURE_USAGE) unless OpenApi::EnumValidator.valid?(_setup_future_usage, VALID_VALUES_FOR_SETUP_FUTURE_USAGE)
      end
      unless (_verification_method = @verification_method).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_VERIFICATION_METHOD) unless OpenApi::EnumValidator.valid?(_verification_method, VALID_VALUES_FOR_VERIFICATION_METHOD)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_bank_transfer = @bank_transfer).nil?
        return false if _bank_transfer.is_a?(OpenApi::Validatable) && !_bank_transfer.valid?
      end

      unless (_capture_method = @capture_method).nil?
        return false unless OpenApi::EnumValidator.valid?(_capture_method, VALID_VALUES_FOR_CAPTURE_METHOD)
      end

      unless (_code = @code).nil?
        return false if _code.to_s.size > MAX_LENGTH_FOR_CODE
      end

      unless (_financial_connections = @financial_connections).nil?
        return false if _financial_connections.is_a?(OpenApi::Validatable) && !_financial_connections.valid?
      end

      unless (_funding_type = @funding_type).nil?
        return false unless OpenApi::EnumValidator.valid?(_funding_type, VALID_VALUES_FOR_FUNDING_TYPE)
      end

      unless (_mandate_options = @mandate_options).nil?
        return false if _mandate_options.is_a?(OpenApi::Validatable) && !_mandate_options.valid?
      end

      unless (_networks = @networks).nil?
        return false if _networks.is_a?(OpenApi::Validatable) && !_networks.valid?
      end

      unless (_persistent_token = @persistent_token).nil?
        return false if _persistent_token.to_s.size > MAX_LENGTH_FOR_PERSISTENT_TOKEN
      end

      unless (_preferred_settlement_speed = @preferred_settlement_speed).nil?
        return false unless OpenApi::EnumValidator.valid?(_preferred_settlement_speed, VALID_VALUES_FOR_PREFERRED_SETTLEMENT_SPEED)
      end

      unless (_reference = @reference).nil?
        return false if _reference.is_a?(OpenApi::Validatable) && !_reference.valid?
      end

      unless (_setup_future_usage = @setup_future_usage).nil?
        return false unless OpenApi::EnumValidator.valid?(_setup_future_usage, VALID_VALUES_FOR_SETUP_FUTURE_USAGE)
      end

      unless (_verification_method = @verification_method).nil?
        return false unless OpenApi::EnumValidator.valid?(_verification_method, VALID_VALUES_FOR_VERIFICATION_METHOD)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bank_transfer Object to be assigned
    def bank_transfer=(new_value : Stripe::BankTransferParam?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @bank_transfer = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] capture_method Object to be assigned
    def capture_method=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("capture_method", new_value, VALID_VALUES_FOR_CAPTURE_METHOD)
      end

      @capture_method = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] code Object to be assigned
    def code=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("code", new_value.to_s.size, MAX_LENGTH_FOR_CODE)
      end

      @code = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] financial_connections Object to be assigned
    def financial_connections=(new_value : Stripe::LinkedAccountOptionsParam?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @financial_connections = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] funding_type Object to be assigned
    def funding_type=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("funding_type", new_value, VALID_VALUES_FOR_FUNDING_TYPE)
      end

      @funding_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mandate_options Object to be assigned
    def mandate_options=(new_value : Stripe::MandateOptionsParam?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @mandate_options = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] networks Object to be assigned
    def networks=(new_value : Stripe::NetworksOptionsParam?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @networks = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] persistent_token Object to be assigned
    def persistent_token=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("persistent_token", new_value.to_s.size, MAX_LENGTH_FOR_PERSISTENT_TOKEN)
      end

      @persistent_token = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] preferred_settlement_speed Object to be assigned
    def preferred_settlement_speed=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("preferred_settlement_speed", new_value, VALID_VALUES_FOR_PREFERRED_SETTLEMENT_SPEED)
      end

      @preferred_settlement_speed = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reference Object to be assigned
    def reference=(new_value : Stripe::PaymentIntentPaymentMethodOptionsParamReference?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @reference = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] setup_future_usage Object to be assigned
    def setup_future_usage=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("setup_future_usage", new_value, VALID_VALUES_FOR_SETUP_FUTURE_USAGE)
      end

      @setup_future_usage = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] verification_method Object to be assigned
    def verification_method=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("verification_method", new_value, VALID_VALUES_FOR_VERIFICATION_METHOD)
      end

      @verification_method = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@bank_transfer, @capture_method, @code, @financial_connections, @funding_type, @mandate_options, @networks, @persistent_token, @preferred_settlement_speed, @reference, @setup_future_usage, @verification_method)
  end
end
