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
  class PaymentMethodDetailsKonbiniStore
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    # The name of the convenience store chain where the payment was completed.
    @[JSON::Field(key: "chain", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: chain.nil? && !chain_present?)]
    getter chain : String? = nil

    @[JSON::Field(ignore: true)]
    property? chain_present : Bool = false

    ENUM_VALIDATOR_FOR_CHAIN = OpenApi::EnumValidator.new("chain", "String", ["familymart", "lawson", "ministop", "seicomart"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @chain : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_CHAIN.error_message) unless ENUM_VALIDATOR_FOR_CHAIN.valid?(@chain)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false unless ENUM_VALIDATOR_FOR_CHAIN.valid?(@chain)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] chain Object to be assigned
    def chain=(chain : String?)
      if chain.nil?
        return @chain = nil
      end
      _chain = chain.not_nil!
      ENUM_VALIDATOR_FOR_CHAIN.valid!(_chain)
      @chain = _chain
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@chain, @chain_present)
  end
end
