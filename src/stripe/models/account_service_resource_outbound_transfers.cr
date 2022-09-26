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
  # OutboundTransfers contains outbound transfers features for a FinancialAccount.
  class AccountServiceResourceOutboundTransfers
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "ach", type: Stripe::AccountServiceResourceToggleSettings?, default: nil, required: false, nullable: false, emit_null: false)]
    getter ach : Stripe::AccountServiceResourceToggleSettings? = nil

    @[JSON::Field(key: "us_domestic_wire", type: Stripe::AccountServiceResourceToggleSettings?, default: nil, required: false, nullable: false, emit_null: false)]
    getter us_domestic_wire : Stripe::AccountServiceResourceToggleSettings? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @ach : Stripe::AccountServiceResourceToggleSettings? = nil,
      @us_domestic_wire : Stripe::AccountServiceResourceToggleSettings? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      # This is a model ach : Stripe::AccountServiceResourceToggleSettings?
      # This is a model us_domestic_wire : Stripe::AccountServiceResourceToggleSettings?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ach Object to be assigned
    def ach=(ach : Stripe::AccountServiceResourceToggleSettings?)
      if ach.nil?
        return @ach = nil
      end
      @ach = ach
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] us_domestic_wire Object to be assigned
    def us_domestic_wire=(us_domestic_wire : Stripe::AccountServiceResourceToggleSettings?)
      if us_domestic_wire.nil?
        return @us_domestic_wire = nil
      end
      @us_domestic_wire = us_domestic_wire
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
    def_equals_and_hash(@ach, @us_domestic_wire)
  end
end
