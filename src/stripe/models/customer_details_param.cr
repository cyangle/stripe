#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-08-01
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  class CustomerDetailsParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "address", type: Stripe::CustomerDetailsParamAddress?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address : Stripe::CustomerDetailsParamAddress? = nil

    @[JSON::Field(key: "shipping", type: Stripe::CustomerDetailsParamShipping?, default: nil, required: false, nullable: false, emit_null: false)]
    getter shipping : Stripe::CustomerDetailsParamShipping? = nil

    @[JSON::Field(key: "tax", type: Stripe::TaxParam1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax : Stripe::TaxParam1? = nil

    @[JSON::Field(key: "tax_exempt", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax_exempt : String? = nil
    ERROR_MESSAGE_FOR_TAX_EXEMPT = "invalid value for \"tax_exempt\", must be one of [, exempt, none, reverse]."
    VALID_VALUES_FOR_TAX_EXEMPT  = StaticArray["", "exempt", "none", "reverse"]

    @[JSON::Field(key: "tax_ids", type: Array(Stripe::DataParams)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax_ids : Array(Stripe::DataParams)? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @address : Stripe::CustomerDetailsParamAddress? = nil,
      @shipping : Stripe::CustomerDetailsParamShipping? = nil,
      @tax : Stripe::TaxParam1? = nil,
      @tax_exempt : String? = nil,
      @tax_ids : Array(Stripe::DataParams)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_address = @address).nil?
        invalid_properties.concat(_address.list_invalid_properties_for("address")) if _address.is_a?(OpenApi::Validatable)
      end
      unless (_shipping = @shipping).nil?
        invalid_properties.concat(_shipping.list_invalid_properties_for("shipping")) if _shipping.is_a?(OpenApi::Validatable)
      end
      unless (_tax = @tax).nil?
        invalid_properties.concat(_tax.list_invalid_properties_for("tax")) if _tax.is_a?(OpenApi::Validatable)
      end
      unless (_tax_exempt = @tax_exempt).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_TAX_EXEMPT) unless OpenApi::EnumValidator.valid?(_tax_exempt, VALID_VALUES_FOR_TAX_EXEMPT)
      end
      unless (_tax_ids = @tax_ids).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "tax_ids", container: _tax_ids)) if _tax_ids.is_a?(Array)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_address = @address).nil?
        return false if _address.is_a?(OpenApi::Validatable) && !_address.valid?
      end

      unless (_shipping = @shipping).nil?
        return false if _shipping.is_a?(OpenApi::Validatable) && !_shipping.valid?
      end

      unless (_tax = @tax).nil?
        return false if _tax.is_a?(OpenApi::Validatable) && !_tax.valid?
      end

      unless (_tax_exempt = @tax_exempt).nil?
        return false unless OpenApi::EnumValidator.valid?(_tax_exempt, VALID_VALUES_FOR_TAX_EXEMPT)
      end

      unless (_tax_ids = @tax_ids).nil?
        return false if _tax_ids.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _tax_ids)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address Object to be assigned
    def address=(address : Stripe::CustomerDetailsParamAddress?)
      if address.nil?
        return @address = nil
      end
      _address = address.not_nil!
      _address.validate if _address.is_a?(OpenApi::Validatable)
      @address = _address
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping Object to be assigned
    def shipping=(shipping : Stripe::CustomerDetailsParamShipping?)
      if shipping.nil?
        return @shipping = nil
      end
      _shipping = shipping.not_nil!
      _shipping.validate if _shipping.is_a?(OpenApi::Validatable)
      @shipping = _shipping
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax Object to be assigned
    def tax=(tax : Stripe::TaxParam1?)
      if tax.nil?
        return @tax = nil
      end
      _tax = tax.not_nil!
      _tax.validate if _tax.is_a?(OpenApi::Validatable)
      @tax = _tax
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_exempt Object to be assigned
    def tax_exempt=(tax_exempt : String?)
      if tax_exempt.nil?
        return @tax_exempt = nil
      end
      _tax_exempt = tax_exempt.not_nil!
      OpenApi::EnumValidator.validate("tax_exempt", _tax_exempt, VALID_VALUES_FOR_TAX_EXEMPT)
      @tax_exempt = _tax_exempt
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_ids Object to be assigned
    def tax_ids=(tax_ids : Array(Stripe::DataParams)?)
      if tax_ids.nil?
        return @tax_ids = nil
      end
      _tax_ids = tax_ids.not_nil!
      OpenApi::ContainerValidator.validate(container: _tax_ids) if _tax_ids.is_a?(Array)
      @tax_ids = _tax_ids
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@address, @shipping, @tax, @tax_exempt, @tax_ids)
  end
end
