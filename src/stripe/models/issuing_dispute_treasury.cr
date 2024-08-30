#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

module Stripe
  #
  class IssuingDisputeTreasury
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The Treasury [DebitReversal](https://stripe.com/docs/api/treasury/debit_reversals) representing this Issuing dispute
    @[JSON::Field(key: "debit_reversal", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter debit_reversal : String? = nil
    MAX_LENGTH_FOR_DEBIT_REVERSAL = 5000

    # The Treasury [ReceivedDebit](https://stripe.com/docs/api/treasury/received_debits) that is being disputed.
    @[JSON::Field(key: "received_debit", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter received_debit : String? = nil
    MAX_LENGTH_FOR_RECEIVED_DEBIT = 5000

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @debit_reversal : String? = nil,
      @received_debit : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_debit_reversal = @debit_reversal).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("debit_reversal", _debit_reversal.to_s.size, MAX_LENGTH_FOR_DEBIT_REVERSAL)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"received_debit\" is required and cannot be null") if @received_debit.nil?

      unless (_received_debit = @received_debit).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("received_debit", _received_debit.to_s.size, MAX_LENGTH_FOR_RECEIVED_DEBIT)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_debit_reversal = @debit_reversal).nil?
        return false if _debit_reversal.to_s.size > MAX_LENGTH_FOR_DEBIT_REVERSAL
      end

      return false if @received_debit.nil?
      unless (_received_debit = @received_debit).nil?
        return false if _received_debit.to_s.size > MAX_LENGTH_FOR_RECEIVED_DEBIT
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] debit_reversal Object to be assigned
    def debit_reversal=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("debit_reversal", new_value.to_s.size, MAX_LENGTH_FOR_DEBIT_REVERSAL)
      end

      @debit_reversal = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] received_debit Object to be assigned
    def received_debit=(new_value : String?)
      raise ArgumentError.new("\"received_debit\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("received_debit", new_value.to_s.size, MAX_LENGTH_FOR_RECEIVED_DEBIT)
      end

      @received_debit = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@debit_reversal, @received_debit)
  end
end
