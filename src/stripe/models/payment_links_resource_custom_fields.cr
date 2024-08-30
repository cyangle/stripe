#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./payment_links_resource_custom_fields_dropdown"
require "./payment_links_resource_custom_fields_label"
require "./payment_links_resource_custom_fields_numeric"
require "./payment_links_resource_custom_fields_text"

module Stripe
  #
  class PaymentLinksResourceCustomFields
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # String of your choice that your integration can use to reconcile this field. Must be unique to this field, alphanumeric, and up to 200 characters.
    @[JSON::Field(key: "key", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter key : String? = nil
    MAX_LENGTH_FOR_KEY = 5000

    @[JSON::Field(key: "label", type: Stripe::PaymentLinksResourceCustomFieldsLabel?, default: nil, required: true, nullable: false, emit_null: false)]
    getter label : Stripe::PaymentLinksResourceCustomFieldsLabel? = nil

    # Whether the customer is required to complete the field before completing the Checkout Session. Defaults to `false`.
    @[JSON::Field(key: "optional", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter optional : Bool? = nil

    # The type of the field.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [dropdown, numeric, text]."
    VALID_VALUES_FOR__TYPE  = String.static_array("dropdown", "numeric", "text")

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "dropdown", type: Stripe::PaymentLinksResourceCustomFieldsDropdown?, default: nil, required: false, nullable: false, emit_null: false)]
    getter dropdown : Stripe::PaymentLinksResourceCustomFieldsDropdown? = nil

    @[JSON::Field(key: "numeric", type: Stripe::PaymentLinksResourceCustomFieldsNumeric?, default: nil, required: false, nullable: false, emit_null: false)]
    getter numeric : Stripe::PaymentLinksResourceCustomFieldsNumeric? = nil

    @[JSON::Field(key: "text", type: Stripe::PaymentLinksResourceCustomFieldsText?, default: nil, required: false, nullable: false, emit_null: false)]
    getter text : Stripe::PaymentLinksResourceCustomFieldsText? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @key : String? = nil,
      @label : Stripe::PaymentLinksResourceCustomFieldsLabel? = nil,
      @optional : Bool? = nil,
      @_type : String? = nil,
      # Optional properties
      @dropdown : Stripe::PaymentLinksResourceCustomFieldsDropdown? = nil,
      @numeric : Stripe::PaymentLinksResourceCustomFieldsNumeric? = nil,
      @text : Stripe::PaymentLinksResourceCustomFieldsText? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"key\" is required and cannot be null") if @key.nil?

      unless (_key = @key).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("key", _key.to_s.size, MAX_LENGTH_FOR_KEY)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"label\" is required and cannot be null") if @label.nil?

      unless (_label = @label).nil?
        invalid_properties.concat(_label.list_invalid_properties_for("label")) if _label.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"optional\" is required and cannot be null") if @optional.nil?

      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?

      unless (__type = @_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR__TYPE) unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end
      unless (_dropdown = @dropdown).nil?
        invalid_properties.concat(_dropdown.list_invalid_properties_for("dropdown")) if _dropdown.is_a?(OpenApi::Validatable)
      end
      unless (_numeric = @numeric).nil?
        invalid_properties.concat(_numeric.list_invalid_properties_for("numeric")) if _numeric.is_a?(OpenApi::Validatable)
      end
      unless (_text = @text).nil?
        invalid_properties.concat(_text.list_invalid_properties_for("text")) if _text.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @key.nil?
      unless (_key = @key).nil?
        return false if _key.to_s.size > MAX_LENGTH_FOR_KEY
      end

      return false if @label.nil?
      unless (_label = @label).nil?
        return false if _label.is_a?(OpenApi::Validatable) && !_label.valid?
      end

      return false if @optional.nil?

      return false if @_type.nil?
      unless (__type = @_type).nil?
        return false unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end

      unless (_dropdown = @dropdown).nil?
        return false if _dropdown.is_a?(OpenApi::Validatable) && !_dropdown.valid?
      end

      unless (_numeric = @numeric).nil?
        return false if _numeric.is_a?(OpenApi::Validatable) && !_numeric.valid?
      end

      unless (_text = @text).nil?
        return false if _text.is_a?(OpenApi::Validatable) && !_text.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] key Object to be assigned
    def key=(new_value : String?)
      raise ArgumentError.new("\"key\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("key", new_value.to_s.size, MAX_LENGTH_FOR_KEY)
      end

      @key = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] label Object to be assigned
    def label=(new_value : Stripe::PaymentLinksResourceCustomFieldsLabel?)
      raise ArgumentError.new("\"label\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @label = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] optional Object to be assigned
    def optional=(new_value : Bool?)
      raise ArgumentError.new("\"optional\" is required and cannot be null") if new_value.nil?

      @optional = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(new_value : String?)
      raise ArgumentError.new("\"_type\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("_type", new_value, VALID_VALUES_FOR__TYPE)
      end

      @_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] dropdown Object to be assigned
    def dropdown=(new_value : Stripe::PaymentLinksResourceCustomFieldsDropdown?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @dropdown = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] numeric Object to be assigned
    def numeric=(new_value : Stripe::PaymentLinksResourceCustomFieldsNumeric?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @numeric = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] text Object to be assigned
    def text=(new_value : Stripe::PaymentLinksResourceCustomFieldsText?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @text = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@key, @label, @optional, @_type, @dropdown, @numeric, @text)
  end
end
