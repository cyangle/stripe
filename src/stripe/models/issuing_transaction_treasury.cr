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
  class IssuingTransactionTreasury
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    # The Treasury [ReceivedCredit](https://stripe.com/docs/api/treasury/received_debits) representing this Issuing transaction if it is a refund
    @[JSON::Field(key: "received_credit", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: received_credit.nil? && !received_credit_present?)]
    getter received_credit : String? = nil

    @[JSON::Field(ignore: true)]
    property? received_credit_present : Bool = false

    # The Treasury [ReceivedDebit](https://stripe.com/docs/api/treasury/received_credits) representing this Issuing transaction if it is a capture
    @[JSON::Field(key: "received_debit", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: received_debit.nil? && !received_debit_present?)]
    getter received_debit : String? = nil

    @[JSON::Field(ignore: true)]
    property? received_debit_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @received_credit : String? = nil,
      @received_debit : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      if _received_credit = @received_credit
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("received_credit", _received_credit.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _received_debit = @received_debit
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("received_debit", _received_debit.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _received_credit = @received_credit
        return false if _received_credit.to_s.size > 5000
      end
      if _received_debit = @received_debit
        return false if _received_debit.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] received_credit Object to be assigned
    def received_credit=(received_credit : String?)
      if received_credit.nil?
        return @received_credit = nil
      end
      _received_credit = received_credit.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("received_credit", _received_credit.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @received_credit = _received_credit
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] received_debit Object to be assigned
    def received_debit=(received_debit : String?)
      if received_debit.nil?
        return @received_debit = nil
      end
      _received_debit = received_debit.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("received_debit", _received_debit.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @received_debit = _received_debit
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@received_credit, @received_credit_present, @received_debit, @received_debit_present)
  end
end
