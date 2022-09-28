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
  class IssuingAuthorizationTreasury
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # The array of [ReceivedCredits](https://stripe.com/docs/api/treasury/received_credits) associated with this authorization
    @[JSON::Field(key: "received_credits", type: Array(String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter received_credits : Array(String)? = nil

    # The array of [ReceivedDebits](https://stripe.com/docs/api/treasury/received_debits) associated with this authorization
    @[JSON::Field(key: "received_debits", type: Array(String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter received_debits : Array(String)? = nil

    # Optional properties

    # The Treasury [Transaction](https://stripe.com/docs/api/treasury/transactions) associated with this authorization
    @[JSON::Field(key: "transaction", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: transaction.nil? && !transaction_present?)]
    getter transaction : String? = nil

    @[JSON::Field(ignore: true)]
    property? transaction_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @received_credits : Array(String)? = nil,
      @received_debits : Array(String)? = nil,
      # Optional properties
      @transaction : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"received_credits\" is required and cannot be null") if @received_credits.nil?

      invalid_properties.push("\"received_debits\" is required and cannot be null") if @received_debits.nil?

      if _transaction = @transaction
        if _transaction.to_s.size > 5000
          invalid_properties.push("invalid value for \"transaction\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @received_credits.nil?

      return false if @received_debits.nil?

      if _transaction = @transaction
        return false if _transaction.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] received_credits Object to be assigned
    def received_credits=(received_credits : Array(String)?)
      if received_credits.nil?
        raise ArgumentError.new("\"received_credits\" is required and cannot be null")
      end
      _received_credits = received_credits.not_nil!
      @received_credits = _received_credits
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] received_debits Object to be assigned
    def received_debits=(received_debits : Array(String)?)
      if received_debits.nil?
        raise ArgumentError.new("\"received_debits\" is required and cannot be null")
      end
      _received_debits = received_debits.not_nil!
      @received_debits = _received_debits
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transaction Object to be assigned
    def transaction=(transaction : String?)
      if transaction.nil?
        return @transaction = nil
      end
      _transaction = transaction.not_nil!
      if _transaction.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"transaction\", the character length must be smaller than or equal to 5000.")
      end

      @transaction = _transaction
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@received_credits, @received_debits, @transaction, @transaction_present)
  end
end
