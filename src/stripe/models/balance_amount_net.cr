#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./balance_amount_by_source_type"
require "./balance_net_available"

module Stripe
  #
  class BalanceAmountNet
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Balance amount.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    # End of Required Properties

    # Optional Properties

    # Breakdown of balance by destination.
    @[JSON::Field(key: "net_available", type: Array(Stripe::BalanceNetAvailable)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter net_available : Array(Stripe::BalanceNetAvailable)? = nil

    @[JSON::Field(key: "source_types", type: Stripe::BalanceAmountBySourceType?, default: nil, required: false, nullable: false, emit_null: false)]
    getter source_types : Stripe::BalanceAmountBySourceType? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64? = nil,
      @currency : String? = nil,
      # Optional properties
      @net_available : Array(Stripe::BalanceNetAvailable)? = nil,
      @source_types : Stripe::BalanceAmountBySourceType? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"amount\" is required and cannot be null") if @amount.nil?

      invalid_properties.push("\"currency\" is required and cannot be null") if @currency.nil?

      unless (_net_available = @net_available).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "net_available", container: _net_available)) if _net_available.is_a?(Array)
      end
      unless (_source_types = @source_types).nil?
        invalid_properties.concat(_source_types.list_invalid_properties_for("source_types")) if _source_types.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @amount.nil?

      return false if @currency.nil?

      unless (_net_available = @net_available).nil?
        return false if _net_available.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _net_available)
      end

      unless (_source_types = @source_types).nil?
        return false if _source_types.is_a?(OpenApi::Validatable) && !_source_types.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(new_value : Int64?)
      raise ArgumentError.new("\"amount\" is required and cannot be null") if new_value.nil?

      @amount = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(new_value : String?)
      raise ArgumentError.new("\"currency\" is required and cannot be null") if new_value.nil?

      @currency = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] net_available Object to be assigned
    def net_available=(new_value : Array(Stripe::BalanceNetAvailable)?)
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @net_available = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source_types Object to be assigned
    def source_types=(new_value : Stripe::BalanceAmountBySourceType?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @source_types = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @currency, @net_available, @source_types)
  end
end