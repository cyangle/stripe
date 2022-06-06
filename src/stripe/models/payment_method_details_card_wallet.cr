#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  #
  @[JSON::Serializable::Options(emit_nulls: true)]
  class PaymentMethodDetailsCardWallet
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # The type of the card wallet, one of `amex_express_checkout`, `apple_pay`, `google_pay`, `masterpass`, `samsung_pay`, or `visa_checkout`. An additional hash is included on the Wallet subhash with a name matching this value. It contains additional information specific to the card wallet type.
    @[JSON::Field(key: "type", type: String)]
    getter _type : String

    ENUM_VALIDATOR_FOR__TYPE = EnumValidator.new("_type", "String", ["amex_express_checkout", "apple_pay", "google_pay", "masterpass", "samsung_pay", "visa_checkout"])

    # Optional properties

    #
    @[JSON::Field(key: "amex_express_checkout", type: JSON::Any, presence: true, ignore_serialize: amex_express_checkout.nil? && !amex_express_checkout_present?)]
    property amex_express_checkout : JSON::Any

    @[JSON::Field(ignore: true)]
    property? amex_express_checkout_present : Bool = false

    #
    @[JSON::Field(key: "apple_pay", type: JSON::Any, presence: true, ignore_serialize: apple_pay.nil? && !apple_pay_present?)]
    property apple_pay : JSON::Any

    @[JSON::Field(ignore: true)]
    property? apple_pay_present : Bool = false

    # (For tokenized numbers only.) The last four digits of the device account number.
    @[JSON::Field(key: "dynamic_last4", type: String?, presence: true, ignore_serialize: dynamic_last4.nil? && !dynamic_last4_present?)]
    getter dynamic_last4 : String?

    @[JSON::Field(ignore: true)]
    property? dynamic_last4_present : Bool = false

    #
    @[JSON::Field(key: "google_pay", type: JSON::Any, presence: true, ignore_serialize: google_pay.nil? && !google_pay_present?)]
    property google_pay : JSON::Any

    @[JSON::Field(ignore: true)]
    property? google_pay_present : Bool = false

    @[JSON::Field(key: "masterpass", type: PaymentMethodDetailsCardWalletMasterpass?, presence: true, ignore_serialize: masterpass.nil? && !masterpass_present?)]
    property masterpass : PaymentMethodDetailsCardWalletMasterpass?

    @[JSON::Field(ignore: true)]
    property? masterpass_present : Bool = false

    #
    @[JSON::Field(key: "samsung_pay", type: JSON::Any, presence: true, ignore_serialize: samsung_pay.nil? && !samsung_pay_present?)]
    property samsung_pay : JSON::Any

    @[JSON::Field(ignore: true)]
    property? samsung_pay_present : Bool = false

    @[JSON::Field(key: "visa_checkout", type: PaymentMethodDetailsCardWalletVisaCheckout?, presence: true, ignore_serialize: visa_checkout.nil? && !visa_checkout_present?)]
    property visa_checkout : PaymentMethodDetailsCardWalletVisaCheckout?

    @[JSON::Field(ignore: true)]
    property? visa_checkout_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @_type : String,
      # Optional properties
      @amex_express_checkout : JSON::Any = nil,
      @apple_pay : JSON::Any = nil,
      @dynamic_last4 : String? = nil,
      @google_pay : JSON::Any = nil,
      @masterpass : PaymentMethodDetailsCardWalletMasterpass? = nil,
      @samsung_pay : JSON::Any = nil,
      @visa_checkout : PaymentMethodDetailsCardWalletVisaCheckout? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR__TYPE.error_message) unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)

      if !@dynamic_last4.nil? && @dynamic_last4.to_s.size > 5000
        invalid_properties.push("invalid value for \"dynamic_last4\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)
      return false if !@dynamic_last4.nil? && @dynamic_last4.to_s.size > 5000

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type : String)
      ENUM_VALIDATOR_FOR__TYPE.valid!(_type, false)
      @_type = _type
    end

    # Custom attribute writer method with validation
    # @param [Object] dynamic_last4 Value to be assigned
    def dynamic_last4=(dynamic_last4 : String?)
      if !dynamic_last4.nil? && dynamic_last4.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"dynamic_last4\", the character length must be smaller than or equal to 5000.")
      end

      @dynamic_last4 = dynamic_last4
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
    def_equals_and_hash(@_type, @amex_express_checkout, @amex_express_checkout_present, @apple_pay, @apple_pay_present, @dynamic_last4, @dynamic_last4_present, @google_pay, @google_pay_present, @masterpass, @masterpass_present, @samsung_pay, @samsung_pay_present, @visa_checkout, @visa_checkout_present)
  end
end
