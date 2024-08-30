#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./connect_account_reference"

module Stripe
  class QuoteParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Number of days within which a customer must pay the invoice generated by this quote. This value will be `null` for quotes where `collection_method=charge_automatically`.
    @[JSON::Field(key: "days_until_due", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter days_until_due : Int64? = nil

    @[JSON::Field(key: "issuer", type: Stripe::ConnectAccountReference?, default: nil, required: false, nullable: false, emit_null: false)]
    getter issuer : Stripe::ConnectAccountReference? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @days_until_due : Int64? = nil,
      @issuer : Stripe::ConnectAccountReference? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_issuer = @issuer).nil?
        invalid_properties.concat(_issuer.list_invalid_properties_for("issuer")) if _issuer.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_issuer = @issuer).nil?
        return false if _issuer.is_a?(OpenApi::Validatable) && !_issuer.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] days_until_due Object to be assigned
    def days_until_due=(new_value : Int64?)
      @days_until_due = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] issuer Object to be assigned
    def issuer=(new_value : Stripe::ConnectAccountReference?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @issuer = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@days_until_due, @issuer)
  end
end
