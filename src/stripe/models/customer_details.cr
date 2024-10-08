#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./data_params"
require "./postal_address"

module Stripe
  class CustomerDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "address", type: Stripe::PostalAddress?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address : Stripe::PostalAddress? = nil

    # The type of customer address provided.
    @[JSON::Field(key: "address_source", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address_source : String? = nil
    ERROR_MESSAGE_FOR_ADDRESS_SOURCE = "invalid value for \"address_source\", must be one of [billing, shipping]."
    VALID_VALUES_FOR_ADDRESS_SOURCE  = String.static_array("billing", "shipping")

    # The customer's IP address (IPv4 or IPv6).
    @[JSON::Field(key: "ip_address", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter ip_address : String? = nil

    # The customer's tax IDs. Stripe Tax might consider a transaction with applicable tax IDs to be B2B, which might affect the tax calculation result. Stripe Tax doesn't validate tax IDs for correctness.
    @[JSON::Field(key: "tax_ids", type: Array(Stripe::DataParams)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax_ids : Array(Stripe::DataParams)? = nil

    # Overrides the tax calculation result to allow you to not collect tax from your customer. Use this if you've manually checked your customer's tax exemptions. Prefer providing the customer's `tax_ids` where possible, which automatically determines whether `reverse_charge` applies.
    @[JSON::Field(key: "taxability_override", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter taxability_override : String? = nil
    ERROR_MESSAGE_FOR_TAXABILITY_OVERRIDE = "invalid value for \"taxability_override\", must be one of [customer_exempt, none, reverse_charge]."
    VALID_VALUES_FOR_TAXABILITY_OVERRIDE  = String.static_array("customer_exempt", "none", "reverse_charge")

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @address : Stripe::PostalAddress? = nil,
      @address_source : String? = nil,
      @ip_address : String? = nil,
      @tax_ids : Array(Stripe::DataParams)? = nil,
      @taxability_override : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_address = @address).nil?
        invalid_properties.concat(_address.list_invalid_properties_for("address")) if _address.is_a?(OpenApi::Validatable)
      end
      unless (_address_source = @address_source).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_ADDRESS_SOURCE) unless OpenApi::EnumValidator.valid?(_address_source, VALID_VALUES_FOR_ADDRESS_SOURCE)
      end

      unless (_tax_ids = @tax_ids).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "tax_ids", container: _tax_ids)) if _tax_ids.is_a?(Array)
      end
      unless (_taxability_override = @taxability_override).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_TAXABILITY_OVERRIDE) unless OpenApi::EnumValidator.valid?(_taxability_override, VALID_VALUES_FOR_TAXABILITY_OVERRIDE)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_address = @address).nil?
        return false if _address.is_a?(OpenApi::Validatable) && !_address.valid?
      end

      unless (_address_source = @address_source).nil?
        return false unless OpenApi::EnumValidator.valid?(_address_source, VALID_VALUES_FOR_ADDRESS_SOURCE)
      end

      unless (_tax_ids = @tax_ids).nil?
        return false if _tax_ids.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _tax_ids)
      end

      unless (_taxability_override = @taxability_override).nil?
        return false unless OpenApi::EnumValidator.valid?(_taxability_override, VALID_VALUES_FOR_TAXABILITY_OVERRIDE)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address Object to be assigned
    def address=(new_value : Stripe::PostalAddress?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @address = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address_source Object to be assigned
    def address_source=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("address_source", new_value, VALID_VALUES_FOR_ADDRESS_SOURCE)
      end

      @address_source = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ip_address Object to be assigned
    def ip_address=(new_value : String?)
      @ip_address = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_ids Object to be assigned
    def tax_ids=(new_value : Array(Stripe::DataParams)?)
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @tax_ids = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] taxability_override Object to be assigned
    def taxability_override=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("taxability_override", new_value, VALID_VALUES_FOR_TAXABILITY_OVERRIDE)
      end

      @taxability_override = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@address, @address_source, @ip_address, @tax_ids, @taxability_override)
  end
end
