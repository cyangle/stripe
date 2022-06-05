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
  class InboundTransfersResourceTreasuryInboundTransferResourceLinkedFlows
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # If funds for this flow were returned after the flow went to the `succeeded` state, this field contains a reference to the ReceivedDebit return.
    @[JSON::Field(key: "received_debit", type: String?, presence: true, ignore_serialize: received_debit.nil? && !received_debit_present?)]
    getter received_debit : String?

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
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@received_debit.nil? && @received_debit.to_s.size > 5000
        invalid_properties.push("invalid value for \"received_debit\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@received_debit.nil? && @received_debit.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] received_debit Value to be assigned
    def received_debit=(received_debit)
      if !received_debit.nil? && received_debit.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"received_debit\", the character length must be smaller than or equal to 5000.")
      end

      @received_debit = received_debit
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
    def_equals_and_hash(@received_debit)
  end
end
