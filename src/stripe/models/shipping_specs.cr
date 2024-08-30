#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./address_validation_param"
require "./customs_param"
require "./required_address"

module Stripe
  class ShippingSpecs
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "address", type: Stripe::RequiredAddress?, default: nil, required: true, nullable: false, emit_null: false)]
    getter address : Stripe::RequiredAddress? = nil

    # The name printed on the shipping label when shipping the card.
    @[JSON::Field(key: "name", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter name : String? = nil
    MAX_LENGTH_FOR_NAME = 5000

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "address_validation", type: Stripe::AddressValidationParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address_validation : Stripe::AddressValidationParam? = nil

    @[JSON::Field(key: "customs", type: Stripe::CustomsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter customs : Stripe::CustomsParam? = nil

    # Phone number of the recipient of the shipment.
    @[JSON::Field(key: "phone_number", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter phone_number : String? = nil

    # Whether a signature is required for card delivery.
    @[JSON::Field(key: "require_signature", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter require_signature : Bool? = nil

    # Shipment service.
    @[JSON::Field(key: "service", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter service : String? = nil
    ERROR_MESSAGE_FOR_SERVICE = "invalid value for \"service\", must be one of [express, priority, standard]."
    VALID_VALUES_FOR_SERVICE  = String.static_array("express", "priority", "standard")

    # Packaging options.
    @[JSON::Field(key: "type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [bulk, individual]."
    VALID_VALUES_FOR__TYPE  = String.static_array("bulk", "individual")

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @address : Stripe::RequiredAddress? = nil,
      @name : String? = nil,
      # Optional properties
      @address_validation : Stripe::AddressValidationParam? = nil,
      @customs : Stripe::CustomsParam? = nil,
      @phone_number : String? = nil,
      @require_signature : Bool? = nil,
      @service : String? = nil,
      @_type : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"address\" is required and cannot be null") if @address.nil?

      unless (_address = @address).nil?
        invalid_properties.concat(_address.list_invalid_properties_for("address")) if _address.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"name\" is required and cannot be null") if @name.nil?

      unless (_name = @name).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("name", _name.to_s.size, MAX_LENGTH_FOR_NAME)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_address_validation = @address_validation).nil?
        invalid_properties.concat(_address_validation.list_invalid_properties_for("address_validation")) if _address_validation.is_a?(OpenApi::Validatable)
      end
      unless (_customs = @customs).nil?
        invalid_properties.concat(_customs.list_invalid_properties_for("customs")) if _customs.is_a?(OpenApi::Validatable)
      end

      unless (_service = @service).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_SERVICE) unless OpenApi::EnumValidator.valid?(_service, VALID_VALUES_FOR_SERVICE)
      end
      unless (__type = @_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR__TYPE) unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @address.nil?
      unless (_address = @address).nil?
        return false if _address.is_a?(OpenApi::Validatable) && !_address.valid?
      end

      return false if @name.nil?
      unless (_name = @name).nil?
        return false if _name.to_s.size > MAX_LENGTH_FOR_NAME
      end

      unless (_address_validation = @address_validation).nil?
        return false if _address_validation.is_a?(OpenApi::Validatable) && !_address_validation.valid?
      end

      unless (_customs = @customs).nil?
        return false if _customs.is_a?(OpenApi::Validatable) && !_customs.valid?
      end

      unless (_service = @service).nil?
        return false unless OpenApi::EnumValidator.valid?(_service, VALID_VALUES_FOR_SERVICE)
      end

      unless (__type = @_type).nil?
        return false unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address Object to be assigned
    def address=(new_value : Stripe::RequiredAddress?)
      raise ArgumentError.new("\"address\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @address = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name Object to be assigned
    def name=(new_value : String?)
      raise ArgumentError.new("\"name\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("name", new_value.to_s.size, MAX_LENGTH_FOR_NAME)
      end

      @name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address_validation Object to be assigned
    def address_validation=(new_value : Stripe::AddressValidationParam?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @address_validation = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customs Object to be assigned
    def customs=(new_value : Stripe::CustomsParam?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @customs = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] phone_number Object to be assigned
    def phone_number=(new_value : String?)
      @phone_number = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] require_signature Object to be assigned
    def require_signature=(new_value : Bool?)
      @require_signature = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] service Object to be assigned
    def service=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("service", new_value, VALID_VALUES_FOR_SERVICE)
      end

      @service = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("_type", new_value, VALID_VALUES_FOR__TYPE)
      end

      @_type = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@address, @name, @address_validation, @customs, @phone_number, @require_signature, @service, @_type)
  end
end
