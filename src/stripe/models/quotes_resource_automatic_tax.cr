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
  #
  class QuotesResourceAutomaticTax
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Automatically calculate taxes
    @[JSON::Field(key: "enabled", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter enabled : Bool? = nil

    @[JSON::Field(key: "liability", type: Stripe::ConnectAccountReference?, default: nil, required: true, nullable: true, emit_null: true)]
    getter liability : Stripe::ConnectAccountReference? = nil

    # The status of the most recent automated tax calculation for this quote.
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter status : String? = nil
    ERROR_MESSAGE_FOR_STATUS = "invalid value for \"status\", must be one of [complete, failed, requires_location_inputs]."
    VALID_VALUES_FOR_STATUS  = String.static_array("complete", "failed", "requires_location_inputs")

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @enabled : Bool? = nil,
      @liability : Stripe::ConnectAccountReference? = nil,
      @status : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"enabled\" is required and cannot be null") if @enabled.nil?

      unless (_liability = @liability).nil?
        invalid_properties.concat(_liability.list_invalid_properties_for("liability")) if _liability.is_a?(OpenApi::Validatable)
      end
      unless (_status = @status).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_STATUS) unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @enabled.nil?

      unless (_liability = @liability).nil?
        return false if _liability.is_a?(OpenApi::Validatable) && !_liability.valid?
      end

      unless (_status = @status).nil?
        return false unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] enabled Object to be assigned
    def enabled=(new_value : Bool?)
      raise ArgumentError.new("\"enabled\" is required and cannot be null") if new_value.nil?

      @enabled = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] liability Object to be assigned
    def liability=(new_value : Stripe::ConnectAccountReference?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @liability = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("status", new_value, VALID_VALUES_FOR_STATUS)
      end

      @status = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@enabled, @liability, @status)
  end
end
