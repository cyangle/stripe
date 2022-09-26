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
  class PaymentMethodOptionsCustomerBalanceEuBankAccount
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Required properties

    # The desired country code of the bank account information. Permitted values include: `DE`, `ES`, `FR`, `IE`, or `NL`.
    @[JSON::Field(key: "country", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter country : String? = nil

    ENUM_VALIDATOR_FOR_COUNTRY = EnumValidator.new("country", "String", ["DE", "ES", "FR", "IE", "NL"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @country : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_COUNTRY.error_message) unless ENUM_VALIDATOR_FOR_COUNTRY.valid?(@country, false)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_COUNTRY.valid?(@country, false)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] country Object to be assigned
    def country=(country : String?)
      if country.nil?
        raise ArgumentError.new("\"country\" is required and cannot be null")
      end
      _country = country.not_nil!
      ENUM_VALIDATOR_FOR_COUNTRY.valid!(_country)
      @country = country
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
    def_equals_and_hash(@country)
  end
end