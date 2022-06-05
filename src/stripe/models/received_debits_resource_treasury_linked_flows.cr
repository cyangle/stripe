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
  class ReceivedDebitsResourceTreasuryLinkedFlows
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # Set if the ReceivedDebit is associated with an InboundTransfer's return of funds.
    @[JSON::Field(key: "inbound_transfer", type: String?, presence: true, ignore_serialize: inbound_transfer.nil? && !inbound_transfer_present?)]
    getter inbound_transfer : String?

    @[JSON::Field(ignore: true)]
    property? inbound_transfer_present : Bool = false

    # Set if the ReceivedCredit was created due to an [Issuing Authorization](https://stripe.com/docs/api#issuing_authorizations) object.
    @[JSON::Field(key: "issuing_authorization", type: String?, presence: true, ignore_serialize: issuing_authorization.nil? && !issuing_authorization_present?)]
    getter issuing_authorization : String?

    @[JSON::Field(ignore: true)]
    property? issuing_authorization_present : Bool = false

    # Set if the ReceivedDebit is also viewable as an [Issuing Dispute](https://stripe.com/docs/api#issuing_disputes) object.
    @[JSON::Field(key: "issuing_transaction", type: String?, presence: true, ignore_serialize: issuing_transaction.nil? && !issuing_transaction_present?)]
    getter issuing_transaction : String?

    @[JSON::Field(ignore: true)]
    property? issuing_transaction_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @inbound_transfer : String? = nil,
      @issuing_authorization : String? = nil,
      @issuing_transaction : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@inbound_transfer.nil? && @inbound_transfer.to_s.size > 5000
        invalid_properties.push("invalid value for \"inbound_transfer\", the character length must be smaller than or equal to 5000.")
      end

      if !@issuing_authorization.nil? && @issuing_authorization.to_s.size > 5000
        invalid_properties.push("invalid value for \"issuing_authorization\", the character length must be smaller than or equal to 5000.")
      end

      if !@issuing_transaction.nil? && @issuing_transaction.to_s.size > 5000
        invalid_properties.push("invalid value for \"issuing_transaction\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@inbound_transfer.nil? && @inbound_transfer.to_s.size > 5000
      return false if !@issuing_authorization.nil? && @issuing_authorization.to_s.size > 5000
      return false if !@issuing_transaction.nil? && @issuing_transaction.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] inbound_transfer Value to be assigned
    def inbound_transfer=(inbound_transfer)
      if !inbound_transfer.nil? && inbound_transfer.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"inbound_transfer\", the character length must be smaller than or equal to 5000.")
      end

      @inbound_transfer = inbound_transfer
    end

    # Custom attribute writer method with validation
    # @param [Object] issuing_authorization Value to be assigned
    def issuing_authorization=(issuing_authorization)
      if !issuing_authorization.nil? && issuing_authorization.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"issuing_authorization\", the character length must be smaller than or equal to 5000.")
      end

      @issuing_authorization = issuing_authorization
    end

    # Custom attribute writer method with validation
    # @param [Object] issuing_transaction Value to be assigned
    def issuing_transaction=(issuing_transaction)
      if !issuing_transaction.nil? && issuing_transaction.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"issuing_transaction\", the character length must be smaller than or equal to 5000.")
      end

      @issuing_transaction = issuing_transaction
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
    def_equals_and_hash(@inbound_transfer, @issuing_authorization, @issuing_transaction)
  end
end
