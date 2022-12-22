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
  class IssuingTransactionAmountDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The fee charged by the ATM for the cash withdrawal.
    @[JSON::Field(key: "atm_fee", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: atm_fee.nil? && !atm_fee_present?)]
    getter atm_fee : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? atm_fee_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @atm_fee : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] atm_fee Object to be assigned
    def atm_fee=(atm_fee : Int64?)
      if atm_fee.nil?
        return @atm_fee = nil
      end
      _atm_fee = atm_fee.not_nil!
      @atm_fee = _atm_fee
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@atm_fee, @atm_fee_present)
  end
end
