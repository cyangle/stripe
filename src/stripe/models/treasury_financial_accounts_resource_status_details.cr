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
  class TreasuryFinancialAccountsResourceStatusDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "closed", type: Stripe::TreasuryFinancialAccountsResourceStatusDetailsClosed?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: closed.nil? && !closed_present?)]
    getter closed : Stripe::TreasuryFinancialAccountsResourceStatusDetailsClosed? = nil

    @[JSON::Field(ignore: true)]
    property? closed_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @closed : Stripe::TreasuryFinancialAccountsResourceStatusDetailsClosed? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_closed = @closed).nil?
        invalid_properties.concat(_closed.list_invalid_properties_for("closed")) if _closed.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_closed = @closed).nil?
        return false if _closed.is_a?(OpenApi::Validatable) && !_closed.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] closed Object to be assigned
    def closed=(new_value : Stripe::TreasuryFinancialAccountsResourceStatusDetailsClosed?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @closed = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@closed, @closed_present)
  end
end
