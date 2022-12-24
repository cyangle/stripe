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
  class PostIssuingDisputesRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The dispute amount in the card's currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). If not set, defaults to the full transaction amount.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    @[JSON::Field(key: "evidence", type: Stripe::EvidenceParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter evidence : Stripe::EvidenceParam? = nil

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # The ID of the issuing transaction to create a dispute for. For transaction on Treasury FinancialAccounts, use `treasury.received_debit`.
    @[JSON::Field(key: "transaction", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter transaction : String? = nil
    MAX_LENGTH_FOR_TRANSACTION = 5000

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
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_evidence = @evidence).nil?
        invalid_properties.concat(_evidence.list_invalid_properties_for("evidence")) if _evidence.is_a?(OpenApi::Validatable)
      end

      unless (_transaction = @transaction).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("transaction", _transaction.to_s.size, MAX_LENGTH_FOR_TRANSACTION)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_treasury = @treasury).nil?
        invalid_properties.concat(_treasury.list_invalid_properties_for("treasury")) if _treasury.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_evidence = @evidence).nil?
        return false if _evidence.is_a?(OpenApi::Validatable) && !_evidence.valid?
      end

      unless (_transaction = @transaction).nil?
        return false if _transaction.to_s.size > MAX_LENGTH_FOR_TRANSACTION
      end

      unless (_treasury = @treasury).nil?
        return false if _treasury.is_a?(OpenApi::Validatable) && !_treasury.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(new_value : Int64?)
      @amount = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] evidence Object to be assigned
    def evidence=(new_value : Stripe::EvidenceParam?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @evidence = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(new_value : Array(String)?)
      @expand = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(new_value : Hash(String, String)?)
      @metadata = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transaction Object to be assigned
    def transaction=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("transaction", new_value.to_s.size, MAX_LENGTH_FOR_TRANSACTION)
      end

      @transaction = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] treasury Object to be assigned
    def treasury=(new_value : Stripe::TreasuryParam?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @treasury = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @evidence, @expand, @metadata, @transaction, @treasury)
  end
end
