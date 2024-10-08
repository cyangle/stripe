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
  class PaymentPagesCheckoutSessionCustomFieldsNumeric
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The value that will pre-fill the field on the payment page.
    @[JSON::Field(key: "default_value", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter default_value : String? = nil
    MAX_LENGTH_FOR_DEFAULT_VALUE = 5000

    # The maximum character length constraint for the customer's input.
    @[JSON::Field(key: "maximum_length", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    getter maximum_length : Int64? = nil

    # The minimum character length requirement for the customer's input.
    @[JSON::Field(key: "minimum_length", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    getter minimum_length : Int64? = nil

    # The value entered by the customer, containing only digits.
    @[JSON::Field(key: "value", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter value : String? = nil
    MAX_LENGTH_FOR_VALUE = 5000

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @default_value : String? = nil,
      @maximum_length : Int64? = nil,
      @minimum_length : Int64? = nil,
      @value : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_default_value = @default_value).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("default_value", _default_value.to_s.size, MAX_LENGTH_FOR_DEFAULT_VALUE)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_value = @value).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("value", _value.to_s.size, MAX_LENGTH_FOR_VALUE)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_default_value = @default_value).nil?
        return false if _default_value.to_s.size > MAX_LENGTH_FOR_DEFAULT_VALUE
      end

      unless (_value = @value).nil?
        return false if _value.to_s.size > MAX_LENGTH_FOR_VALUE
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_value Object to be assigned
    def default_value=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("default_value", new_value.to_s.size, MAX_LENGTH_FOR_DEFAULT_VALUE)
      end

      @default_value = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] maximum_length Object to be assigned
    def maximum_length=(new_value : Int64?)
      @maximum_length = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] minimum_length Object to be assigned
    def minimum_length=(new_value : Int64?)
      @minimum_length = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] value Object to be assigned
    def value=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("value", new_value.to_s.size, MAX_LENGTH_FOR_VALUE)
      end

      @value = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@default_value, @maximum_length, @minimum_length, @value)
  end
end
