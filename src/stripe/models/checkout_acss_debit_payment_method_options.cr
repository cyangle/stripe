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
  class CheckoutAcssDebitPaymentMethodOptions
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # Currency supported by the bank account. Returned when the Session is in `setup` mode.
    @[JSON::Field(key: "currency", type: String?, presence: true, ignore_serialize: currency.nil? && !currency_present?)]
    getter currency : String?

    @[JSON::Field(ignore: true)]
    property? currency_present : Bool = false

    ENUM_VALIDATOR_FOR_CURRENCY = EnumValidator.new("currency", "String", ["cad", "usd"])

    @[JSON::Field(key: "mandate_options", type: CheckoutAcssDebitMandateOptions?, presence: true, ignore_serialize: mandate_options.nil? && !mandate_options_present?)]
    property mandate_options : CheckoutAcssDebitMandateOptions?

    @[JSON::Field(ignore: true)]
    property? mandate_options_present : Bool = false

    # Bank account verification method.
    @[JSON::Field(key: "verification_method", type: String?, presence: true, ignore_serialize: verification_method.nil? && !verification_method_present?)]
    getter verification_method : String?

    @[JSON::Field(ignore: true)]
    property? verification_method_present : Bool = false

    ENUM_VALIDATOR_FOR_VERIFICATION_METHOD = EnumValidator.new("verification_method", "String", ["automatic", "instant", "microdeposits"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @currency : String? = nil,
      @mandate_options : CheckoutAcssDebitMandateOptions? = nil,
      @verification_method : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_CURRENCY.error_message) unless ENUM_VALIDATOR_FOR_CURRENCY.valid?(@currency)

      invalid_properties.push(ENUM_VALIDATOR_FOR_VERIFICATION_METHOD.error_message) unless ENUM_VALIDATOR_FOR_VERIFICATION_METHOD.valid?(@verification_method)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_CURRENCY.valid?(@currency)
      return false unless ENUM_VALIDATOR_FOR_VERIFICATION_METHOD.valid?(@verification_method)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(currency)
      ENUM_VALIDATOR_FOR_CURRENCY.valid!(currency)
      @currency = currency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] verification_method Object to be assigned
    def verification_method=(verification_method)
      ENUM_VALIDATOR_FOR_VERIFICATION_METHOD.valid!(verification_method)
      @verification_method = verification_method
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
    def_equals_and_hash(@currency, @mandate_options, @verification_method)
  end
end
