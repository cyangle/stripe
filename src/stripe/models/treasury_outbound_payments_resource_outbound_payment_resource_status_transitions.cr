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
  class TreasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitions
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    # Timestamp describing when an OutboundPayment changed status to `canceled`.
    @[JSON::Field(key: "canceled_at", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: canceled_at.nil? && !canceled_at_present?)]
    getter canceled_at : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? canceled_at_present : Bool = false

    # Timestamp describing when an OutboundPayment changed status to `failed`.
    @[JSON::Field(key: "failed_at", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: failed_at.nil? && !failed_at_present?)]
    getter failed_at : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? failed_at_present : Bool = false

    # Timestamp describing when an OutboundPayment changed status to `posted`.
    @[JSON::Field(key: "posted_at", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: posted_at.nil? && !posted_at_present?)]
    getter posted_at : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? posted_at_present : Bool = false

    # Timestamp describing when an OutboundPayment changed status to `returned`.
    @[JSON::Field(key: "returned_at", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: returned_at.nil? && !returned_at_present?)]
    getter returned_at : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? returned_at_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @canceled_at : Int64? = nil,
      @failed_at : Int64? = nil,
      @posted_at : Int64? = nil,
      @returned_at : Int64? = nil
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
    # @param [Object] canceled_at Object to be assigned
    def canceled_at=(canceled_at : Int64?)
      if canceled_at.nil?
        return @canceled_at = nil
      end
      _canceled_at = canceled_at.not_nil!
      @canceled_at = _canceled_at
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] failed_at Object to be assigned
    def failed_at=(failed_at : Int64?)
      if failed_at.nil?
        return @failed_at = nil
      end
      _failed_at = failed_at.not_nil!
      @failed_at = _failed_at
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] posted_at Object to be assigned
    def posted_at=(posted_at : Int64?)
      if posted_at.nil?
        return @posted_at = nil
      end
      _posted_at = posted_at.not_nil!
      @posted_at = _posted_at
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] returned_at Object to be assigned
    def returned_at=(returned_at : Int64?)
      if returned_at.nil?
        return @returned_at = nil
      end
      _returned_at = returned_at.not_nil!
      @returned_at = _returned_at
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@canceled_at, @canceled_at_present, @failed_at, @failed_at_present, @posted_at, @posted_at_present, @returned_at, @returned_at_present)
  end
end
