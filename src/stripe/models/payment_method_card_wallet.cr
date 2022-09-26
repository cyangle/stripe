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
  class PaymentMethodCardWallet
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Required properties

    # The type of the card wallet, one of `amex_express_checkout`, `apple_pay`, `google_pay`, `masterpass`, `samsung_pay`, or `visa_checkout`. An additional hash is included on the Wallet subhash with a name matching this value. It contains additional information specific to the card wallet type.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil

    ENUM_VALIDATOR_FOR__TYPE = EnumValidator.new("_type", "String", ["amex_express_checkout", "apple_pay", "google_pay", "masterpass", "samsung_pay", "visa_checkout"])

    # Optional properties

    #
    @[JSON::Field(key: "amex_express_checkout", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter amex_express_checkout : JSON::Any? = nil

    #
    @[JSON::Field(key: "apple_pay", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter apple_pay : JSON::Any? = nil

    # (For tokenized numbers only.) The last four digits of the device account number.
    @[JSON::Field(key: "dynamic_last4", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: dynamic_last4.nil? && !dynamic_last4_present?)]
    getter dynamic_last4 : String? = nil

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
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR__TYPE.error_message) unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)
      if _dynamic_last4 = @dynamic_last4
        if _dynamic_last4.to_s.size > 5000
          invalid_properties.push("invalid value for \"dynamic_last4\", the character length must be smaller than or equal to 5000.")
        end
      end
      # This is a model masterpass : Stripe::PaymentMethodCardWalletMasterpass?
      # This is a model visa_checkout : Stripe::PaymentMethodCardWalletVisaCheckout?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)
      if _dynamic_last4 = @dynamic_last4
        return false if _dynamic_last4.to_s.size > 5000
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
      ENUM_VALIDATOR_FOR__TYPE.valid!(__type)
      @_type = _type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amex_express_checkout Object to be assigned
    def amex_express_checkout=(amex_express_checkout : JSON::Any?)
      if amex_express_checkout.nil?
        return @amex_express_checkout = nil
      end
      @amex_express_checkout = amex_express_checkout
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] apple_pay Object to be assigned
    def apple_pay=(apple_pay : JSON::Any?)
      if apple_pay.nil?
        return @apple_pay = nil
      end
      @apple_pay = apple_pay
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] dynamic_last4 Object to be assigned
    def dynamic_last4=(dynamic_last4 : String?)
      if dynamic_last4.nil?
        return @dynamic_last4 = nil
      end
      _dynamic_last4 = dynamic_last4.not_nil!
      if _dynamic_last4.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"dynamic_last4\", the character length must be smaller than or equal to 5000.")
      end

      @dynamic_last4 = dynamic_last4
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] google_pay Object to be assigned
    def google_pay=(google_pay : JSON::Any?)
      if google_pay.nil?
        return @google_pay = nil
      end
      @google_pay = google_pay
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] masterpass Object to be assigned
    def masterpass=(masterpass : Stripe::PaymentMethodCardWalletMasterpass?)
      if masterpass.nil?
        return @masterpass = nil
      end
      @masterpass = masterpass
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] samsung_pay Object to be assigned
    def samsung_pay=(samsung_pay : JSON::Any?)
      if samsung_pay.nil?
        return @samsung_pay = nil
      end
      @samsung_pay = samsung_pay
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] visa_checkout Object to be assigned
    def visa_checkout=(visa_checkout : Stripe::PaymentMethodCardWalletVisaCheckout?)
      if visa_checkout.nil?
        return @visa_checkout = nil
      end
      @visa_checkout = visa_checkout
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@_type, @amex_express_checkout, @apple_pay, @dynamic_last4, @dynamic_last4_present, @google_pay, @masterpass, @samsung_pay, @visa_checkout)
  end
end
