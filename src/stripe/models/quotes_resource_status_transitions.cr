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
  class QuotesResourceStatusTransitions
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Optional properties

    # The time that the quote was accepted. Measured in seconds since Unix epoch.
    @[JSON::Field(key: "accepted_at", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: accepted_at.nil? && !accepted_at_present?)]
    getter accepted_at : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? accepted_at_present : Bool = false

    # The time that the quote was canceled. Measured in seconds since Unix epoch.
    @[JSON::Field(key: "canceled_at", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: canceled_at.nil? && !canceled_at_present?)]
    getter canceled_at : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? canceled_at_present : Bool = false

    # The time that the quote was finalized. Measured in seconds since Unix epoch.
    @[JSON::Field(key: "finalized_at", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: finalized_at.nil? && !finalized_at_present?)]
    getter finalized_at : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? finalized_at_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @accepted_at : Int64? = nil,
      @canceled_at : Int64? = nil,
      @finalized_at : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] accepted_at Object to be assigned
    def accepted_at=(accepted_at : Int64?)
      if accepted_at.nil?
        return @accepted_at = nil
      end
      @accepted_at = accepted_at
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] canceled_at Object to be assigned
    def canceled_at=(canceled_at : Int64?)
      if canceled_at.nil?
        return @canceled_at = nil
      end
      @canceled_at = canceled_at
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] finalized_at Object to be assigned
    def finalized_at=(finalized_at : Int64?)
      if finalized_at.nil?
        return @finalized_at = nil
      end
      @finalized_at = finalized_at
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
    def_equals_and_hash(@accepted_at, @accepted_at_present, @canceled_at, @canceled_at_present, @finalized_at, @finalized_at_present)
  end
end
