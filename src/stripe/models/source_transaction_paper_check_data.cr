#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

module Stripe
  #
  class SourceTransactionPaperCheckData
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Time at which the deposited funds will be available for use. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "available_at", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter available_at : String? = nil
    MAX_LENGTH_FOR_AVAILABLE_AT = 5000

    # Comma-separated list of invoice IDs associated with the paper check.
    @[JSON::Field(key: "invoices", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter invoices : String? = nil
    MAX_LENGTH_FOR_INVOICES = 5000

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @available_at : String? = nil,
      @invoices : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_available_at = @available_at).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("available_at", _available_at.to_s.size, MAX_LENGTH_FOR_AVAILABLE_AT)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_invoices = @invoices).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("invoices", _invoices.to_s.size, MAX_LENGTH_FOR_INVOICES)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_available_at = @available_at).nil?
        return false if _available_at.to_s.size > MAX_LENGTH_FOR_AVAILABLE_AT
      end

      unless (_invoices = @invoices).nil?
        return false if _invoices.to_s.size > MAX_LENGTH_FOR_INVOICES
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] available_at Object to be assigned
    def available_at=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("available_at", new_value.to_s.size, MAX_LENGTH_FOR_AVAILABLE_AT)
      end

      @available_at = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invoices Object to be assigned
    def invoices=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("invoices", new_value.to_s.size, MAX_LENGTH_FOR_INVOICES)
      end

      @invoices = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@available_at, @invoices)
  end
end
