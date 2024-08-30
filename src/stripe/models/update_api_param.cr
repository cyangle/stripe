#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./networks_update_api_param"

module Stripe
  class UpdateApiParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Two-digit number representing the card's expiration month.
    @[JSON::Field(key: "exp_month", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter exp_month : Int64? = nil

    # Four-digit number representing the card's expiration year.
    @[JSON::Field(key: "exp_year", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter exp_year : Int64? = nil

    @[JSON::Field(key: "networks", type: Stripe::NetworksUpdateApiParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter networks : Stripe::NetworksUpdateApiParam? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @exp_month : Int64? = nil,
      @exp_year : Int64? = nil,
      @networks : Stripe::NetworksUpdateApiParam? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_networks = @networks).nil?
        invalid_properties.concat(_networks.list_invalid_properties_for("networks")) if _networks.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_networks = @networks).nil?
        return false if _networks.is_a?(OpenApi::Validatable) && !_networks.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] exp_month Object to be assigned
    def exp_month=(new_value : Int64?)
      @exp_month = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] exp_year Object to be assigned
    def exp_year=(new_value : Int64?)
      @exp_year = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] networks Object to be assigned
    def networks=(new_value : Stripe::NetworksUpdateApiParam?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @networks = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@exp_month, @exp_year, @networks)
  end
end
