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
  class PaymentMethodCardWallet
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The type of the card wallet, one of `amex_express_checkout`, `apple_pay`, `google_pay`, `masterpass`, `samsung_pay`, or `visa_checkout`. An additional hash is included on the Wallet subhash with a name matching this value. It contains additional information specific to the card wallet type.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [amex_express_checkout, apple_pay, google_pay, masterpass, samsung_pay, visa_checkout]."
    VALID_VALUES_FOR__TYPE  = String.static_array("amex_express_checkout", "apple_pay", "google_pay", "masterpass", "samsung_pay", "visa_checkout")

    # End of Required Properties

    # Optional Properties

    #
    @[JSON::Field(key: "amex_express_checkout", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter amex_express_checkout : JSON::Any? = nil

    #
    @[JSON::Field(key: "apple_pay", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter apple_pay : JSON::Any? = nil

    # (For tokenized numbers only.) The last four digits of the device account number.
    @[JSON::Field(key: "dynamic_last4", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: dynamic_last4.nil? && !dynamic_last4_present?)]
    getter dynamic_last4 : String? = nil
    MAX_LENGTH_FOR_DYNAMIC_LAST4 = 5000

    @[JSON::Field(ignore: true)]
    property? dynamic_last4_present : Bool = false

    #
    @[JSON::Field(key: "google_pay", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter google_pay : JSON::Any? = nil

    @[JSON::Field(key: "masterpass", type: Stripe::PaymentMethodCardWalletMasterpass?, default: nil, required: false, nullable: false, emit_null: false)]
    getter masterpass : Stripe::PaymentMethodCardWalletMasterpass? = nil

    #
    @[JSON::Field(key: "samsung_pay", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter samsung_pay : JSON::Any? = nil

    @[JSON::Field(key: "visa_checkout", type: Stripe::PaymentMethodCardWalletVisaCheckout?, default: nil, required: false, nullable: false, emit_null: false)]
    getter visa_checkout : Stripe::PaymentMethodCardWalletVisaCheckout? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @_type : String? = nil,
      # Optional properties
      @amex_express_checkout : JSON::Any? = nil,
      @apple_pay : JSON::Any? = nil,
      @dynamic_last4 : String? = nil,
      @google_pay : JSON::Any? = nil,
      @masterpass : Stripe::PaymentMethodCardWalletMasterpass? = nil,
      @samsung_pay : JSON::Any? = nil,
      @visa_checkout : Stripe::PaymentMethodCardWalletVisaCheckout? = nil
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

      unless (_dynamic_last4 = @dynamic_last4).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("dynamic_last4", _dynamic_last4.to_s.size, MAX_LENGTH_FOR_DYNAMIC_LAST4)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_masterpass = @masterpass).nil?
        invalid_properties.concat(_masterpass.list_invalid_properties_for("masterpass")) if _masterpass.is_a?(OpenApi::Validatable)
      end

      unless (_visa_checkout = @visa_checkout).nil?
        invalid_properties.concat(_visa_checkout.list_invalid_properties_for("visa_checkout")) if _visa_checkout.is_a?(OpenApi::Validatable)
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

      unless (_dynamic_last4 = @dynamic_last4).nil?
        return false if _dynamic_last4.to_s.size > MAX_LENGTH_FOR_DYNAMIC_LAST4
      end

      unless (_masterpass = @masterpass).nil?
        return false if _masterpass.is_a?(OpenApi::Validatable) && !_masterpass.valid?
      end

      unless (_visa_checkout = @visa_checkout).nil?
        return false if _visa_checkout.is_a?(OpenApi::Validatable) && !_visa_checkout.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(new_value : String?)
      raise ArgumentError.new("\"_type\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("_type", new_value, VALID_VALUES_FOR__TYPE)
      end

      @_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amex_express_checkout Object to be assigned
    def amex_express_checkout=(new_value : JSON::Any?)
      @amex_express_checkout = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] apple_pay Object to be assigned
    def apple_pay=(new_value : JSON::Any?)
      @apple_pay = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] dynamic_last4 Object to be assigned
    def dynamic_last4=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("dynamic_last4", new_value.to_s.size, MAX_LENGTH_FOR_DYNAMIC_LAST4)
      end

      @dynamic_last4 = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] google_pay Object to be assigned
    def google_pay=(new_value : JSON::Any?)
      @google_pay = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] masterpass Object to be assigned
    def masterpass=(new_value : Stripe::PaymentMethodCardWalletMasterpass?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @masterpass = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] samsung_pay Object to be assigned
    def samsung_pay=(new_value : JSON::Any?)
      @samsung_pay = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] visa_checkout Object to be assigned
    def visa_checkout=(new_value : Stripe::PaymentMethodCardWalletVisaCheckout?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @visa_checkout = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@_type, @amex_express_checkout, @apple_pay, @dynamic_last4, @dynamic_last4_present, @google_pay, @masterpass, @samsung_pay, @visa_checkout)
  end
end
