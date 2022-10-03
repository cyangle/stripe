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
  class BalanceAmountBySourceType
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Amount for bank account.
    @[JSON::Field(key: "bank_account", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter bank_account : Int64? = nil

    # Amount for card.
    @[JSON::Field(key: "card", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter card : Int64? = nil

    # Amount for FPX.
    @[JSON::Field(key: "fpx", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter fpx : Int64? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @bank_account : Int64? = nil,
      @card : Int64? = nil,
      @fpx : Int64? = nil
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
    # @param [Object] bank_account Object to be assigned
    def bank_account=(bank_account : Int64?)
      if bank_account.nil?
        return @bank_account = nil
      end
      _bank_account = bank_account.not_nil!
      @bank_account = _bank_account
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] card Object to be assigned
    def card=(card : Int64?)
      if card.nil?
        return @card = nil
      end
      _card = card.not_nil!
      @card = _card
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fpx Object to be assigned
    def fpx=(fpx : Int64?)
      if fpx.nil?
        return @fpx = nil
      end
      _fpx = fpx.not_nil!
      @fpx = _fpx
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@bank_account, @card, @fpx)
  end
end
