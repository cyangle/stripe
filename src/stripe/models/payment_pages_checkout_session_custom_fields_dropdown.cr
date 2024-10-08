#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./payment_pages_checkout_session_custom_fields_option"

module Stripe
  #
  class PaymentPagesCheckoutSessionCustomFieldsDropdown
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The value that will pre-fill on the payment page.
    @[JSON::Field(key: "default_value", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter default_value : String? = nil
    MAX_LENGTH_FOR_DEFAULT_VALUE = 5000

    # The options available for the customer to select. Up to 200 options allowed.
    @[JSON::Field(key: "options", type: Array(Stripe::PaymentPagesCheckoutSessionCustomFieldsOption)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter options : Array(Stripe::PaymentPagesCheckoutSessionCustomFieldsOption)? = nil

    # The option selected by the customer. This will be the `value` for the option.
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
      @options : Array(Stripe::PaymentPagesCheckoutSessionCustomFieldsOption)? = nil,
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
      invalid_properties.push("\"options\" is required and cannot be null") if @options.nil?

      unless (_options = @options).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "options", container: _options)) if _options.is_a?(Array)
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

      return false if @options.nil?
      unless (_options = @options).nil?
        return false if _options.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _options)
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
    # @param [Object] options Object to be assigned
    def options=(new_value : Array(Stripe::PaymentPagesCheckoutSessionCustomFieldsOption)?)
      raise ArgumentError.new("\"options\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @options = new_value
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
    def_equals_and_hash(@default_value, @options, @value)
  end
end
