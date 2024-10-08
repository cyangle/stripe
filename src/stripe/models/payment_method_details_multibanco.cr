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
  class PaymentMethodDetailsMultibanco
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Entity number associated with this Multibanco payment.
    @[JSON::Field(key: "entity", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter entity : String? = nil
    MAX_LENGTH_FOR_ENTITY = 5000

    # Reference number associated with this Multibanco payment.
    @[JSON::Field(key: "reference", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter reference : String? = nil
    MAX_LENGTH_FOR_REFERENCE = 5000

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @entity : String? = nil,
      @reference : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_entity = @entity).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("entity", _entity.to_s.size, MAX_LENGTH_FOR_ENTITY)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_reference = @reference).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("reference", _reference.to_s.size, MAX_LENGTH_FOR_REFERENCE)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_entity = @entity).nil?
        return false if _entity.to_s.size > MAX_LENGTH_FOR_ENTITY
      end

      unless (_reference = @reference).nil?
        return false if _reference.to_s.size > MAX_LENGTH_FOR_REFERENCE
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] entity Object to be assigned
    def entity=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("entity", new_value.to_s.size, MAX_LENGTH_FOR_ENTITY)
      end

      @entity = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reference Object to be assigned
    def reference=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("reference", new_value.to_s.size, MAX_LENGTH_FOR_REFERENCE)
      end

      @reference = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@entity, @reference)
  end
end
