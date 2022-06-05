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
  @[JSON::Serializable::Options(emit_nulls: true)]
  class PostIssuingDisputesRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "evidence", type: EvidenceParam?, presence: true, ignore_serialize: evidence.nil? && !evidence_present?)]
    property evidence : EvidenceParam?

    @[JSON::Field(ignore: true)]
    property? evidence_present : Bool = false

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, presence: true, ignore_serialize: expand.nil? && !expand_present?)]
    property expand : Array(String)?

    @[JSON::Field(ignore: true)]
    property? expand_present : Bool = false

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    # The ID of the issuing transaction to create a dispute for. For transaction on Treasury FinancialAccounts, use `treasury.received_debit`.
    @[JSON::Field(key: "transaction", type: String?, presence: true, ignore_serialize: transaction.nil? && !transaction_present?)]
    getter transaction : String?

    @[JSON::Field(ignore: true)]
    property? transaction_present : Bool = false

    @[JSON::Field(key: "treasury", type: TreasuryParam?, presence: true, ignore_serialize: treasury.nil? && !treasury_present?)]
    property treasury : TreasuryParam?

    @[JSON::Field(ignore: true)]
    property? treasury_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @evidence : EvidenceParam? = nil,
      @expand : Array(String)? = nil,
      @metadata : Hash(String, String)? = nil,
      @transaction : String? = nil,
      @treasury : TreasuryParam? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@transaction.nil? && @transaction.to_s.size > 5000
        invalid_properties.push("invalid value for \"transaction\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@transaction.nil? && @transaction.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] transaction Value to be assigned
    def transaction=(transaction)
      if !transaction.nil? && transaction.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"transaction\", the character length must be smaller than or equal to 5000.")
      end

      @transaction = transaction
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
    def_equals_and_hash(@evidence, @expand, @metadata, @transaction, @treasury)
  end
end
