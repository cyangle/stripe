#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./customer_param_custom_fields"
require "./customer_param_rendering_options"

module Stripe
  class CustomerParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "custom_fields", type: Stripe::CustomerParamCustomFields?, default: nil, required: false, nullable: false, emit_null: false)]
    getter custom_fields : Stripe::CustomerParamCustomFields? = nil

    # ID of a payment method that's attached to the customer, to be used as the customer's default payment method for subscriptions and invoices.
    @[JSON::Field(key: "default_payment_method", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter default_payment_method : String? = nil
    MAX_LENGTH_FOR_DEFAULT_PAYMENT_METHOD = 5000

    # Default footer to be displayed on invoices for this customer.
    @[JSON::Field(key: "footer", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter footer : String? = nil
    MAX_LENGTH_FOR_FOOTER = 5000

    @[JSON::Field(key: "rendering_options", type: Stripe::CustomerParamRenderingOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter rendering_options : Stripe::CustomerParamRenderingOptions? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @custom_fields : Stripe::CustomerParamCustomFields? = nil,
      @default_payment_method : String? = nil,
      @footer : String? = nil,
      @rendering_options : Stripe::CustomerParamRenderingOptions? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_custom_fields = @custom_fields).nil?
        invalid_properties.concat(_custom_fields.list_invalid_properties_for("custom_fields")) if _custom_fields.is_a?(OpenApi::Validatable)
      end
      unless (_default_payment_method = @default_payment_method).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("default_payment_method", _default_payment_method.to_s.size, MAX_LENGTH_FOR_DEFAULT_PAYMENT_METHOD)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_footer = @footer).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("footer", _footer.to_s.size, MAX_LENGTH_FOR_FOOTER)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_rendering_options = @rendering_options).nil?
        invalid_properties.concat(_rendering_options.list_invalid_properties_for("rendering_options")) if _rendering_options.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_custom_fields = @custom_fields).nil?
        return false if _custom_fields.is_a?(OpenApi::Validatable) && !_custom_fields.valid?
      end

      unless (_default_payment_method = @default_payment_method).nil?
        return false if _default_payment_method.to_s.size > MAX_LENGTH_FOR_DEFAULT_PAYMENT_METHOD
      end

      unless (_footer = @footer).nil?
        return false if _footer.to_s.size > MAX_LENGTH_FOR_FOOTER
      end

      unless (_rendering_options = @rendering_options).nil?
        return false if _rendering_options.is_a?(OpenApi::Validatable) && !_rendering_options.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] custom_fields Object to be assigned
    def custom_fields=(new_value : Stripe::CustomerParamCustomFields?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @custom_fields = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_payment_method Object to be assigned
    def default_payment_method=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("default_payment_method", new_value.to_s.size, MAX_LENGTH_FOR_DEFAULT_PAYMENT_METHOD)
      end

      @default_payment_method = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] footer Object to be assigned
    def footer=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("footer", new_value.to_s.size, MAX_LENGTH_FOR_FOOTER)
      end

      @footer = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] rendering_options Object to be assigned
    def rendering_options=(new_value : Stripe::CustomerParamRenderingOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @rendering_options = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@custom_fields, @default_payment_method, @footer, @rendering_options)
  end
end
