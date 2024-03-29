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
  class TreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # If funds for this flow were returned after the flow went to the `succeeded` state, this field contains a reference to the ReceivedDebit return.
    @[JSON::Field(key: "received_debit", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: received_debit.nil? && !received_debit_present?)]
    getter received_debit : String? = nil
    MAX_LENGTH_FOR_RECEIVED_DEBIT = 5000

    @[JSON::Field(ignore: true)]
    property? received_debit_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @received_debit : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

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
      unless (_received_debit = @received_debit).nil?
        return false if _received_debit.to_s.size > MAX_LENGTH_FOR_RECEIVED_DEBIT
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] received_debit Object to be assigned
    def received_debit=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("received_debit", new_value.to_s.size, MAX_LENGTH_FOR_RECEIVED_DEBIT)
      end

      @received_debit = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@received_debit, @received_debit_present)
  end
end
