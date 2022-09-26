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
  class PostIssuingDisputesRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Optional properties

    # The dispute amount in the card's currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). If not set, defaults to the full transaction amount.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    @[JSON::Field(key: "evidence", type: Stripe::EvidenceParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter evidence : Stripe::EvidenceParam? = nil

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # The ID of the issuing transaction to create a dispute for. For transaction on Treasury FinancialAccounts, use `treasury.received_debit`.
    @[JSON::Field(key: "transaction", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter transaction : String? = nil

    @[JSON::Field(key: "treasury", type: Stripe::TreasuryParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter treasury : Stripe::TreasuryParam? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @amount : Int64? = nil,
      @evidence : Stripe::EvidenceParam? = nil,
      @expand : Array(String)? = nil,
      @metadata : Hash(String, String)? = nil,
      @transaction : String? = nil,
      @treasury : Stripe::TreasuryParam? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      # This is a model evidence : Stripe::EvidenceParam?
      if _transaction = @transaction
        if _transaction.to_s.size > 5000
          invalid_properties.push("invalid value for \"transaction\", the character length must be smaller than or equal to 5000.")
        end
      end
      # This is a model treasury : Stripe::TreasuryParam?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      if _transaction = @transaction
        return false if _transaction.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(amount : Int64?)
      if amount.nil?
        return @amount = nil
      end
      @amount = amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] evidence Object to be assigned
    def evidence=(evidence : Stripe::EvidenceParam?)
      if evidence.nil?
        return @evidence = nil
      end
      @evidence = evidence
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(expand : Array(String)?)
      if expand.nil?
        return @expand = nil
      end
      @expand = expand
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Hash(String, String)?)
      if metadata.nil?
        return @metadata = nil
      end
      @metadata = metadata
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

      @transaction = transaction
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] treasury Object to be assigned
    def treasury=(treasury : Stripe::TreasuryParam?)
      if treasury.nil?
        return @treasury = nil
      end
      @treasury = treasury
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
    def_equals_and_hash(@amount, @evidence, @expand, @metadata, @transaction, @treasury)
  end
end
