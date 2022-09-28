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
  class LineItemCreateParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "price", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter price : String? = nil

    @[JSON::Field(key: "price_data", type: Stripe::PriceData?, default: nil, required: false, nullable: false, emit_null: false)]
    getter price_data : Stripe::PriceData? = nil

    @[JSON::Field(key: "quantity", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter quantity : Int64? = nil

    @[JSON::Field(key: "tax_rates", type: Stripe::CreditNoteLineItemParamsTaxRates?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax_rates : Stripe::CreditNoteLineItemParamsTaxRates? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @price : String? = nil,
      @price_data : Stripe::PriceData? = nil,
      @quantity : Int64? = nil,
      @tax_rates : Stripe::CreditNoteLineItemParamsTaxRates? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      if _price = @price
        if _price.to_s.size > 5000
          invalid_properties.push("invalid value for \"price\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _price_data = @price_data
        if _price_data.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_price_data.list_invalid_properties_for("price_data"))
        end
      end

      if _tax_rates = @tax_rates
        if _tax_rates.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_tax_rates.list_invalid_properties_for("tax_rates"))
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _price = @price
        return false if _price.to_s.size > 5000
      end
      if _price_data = @price_data
        if _price_data.is_a?(OpenApi::Validatable)
          return false unless _price_data.valid?
        end
      end

      if _tax_rates = @tax_rates
        if _tax_rates.is_a?(OpenApi::Validatable)
          return false unless _tax_rates.valid?
        end
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] price Object to be assigned
    def price=(price : String?)
      if price.nil?
        return @price = nil
      end
      _price = price.not_nil!
      if _price.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"price\", the character length must be smaller than or equal to 5000.")
      end

      @price = _price
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] price_data Object to be assigned
    def price_data=(price_data : Stripe::PriceData?)
      if price_data.nil?
        return @price_data = nil
      end
      _price_data = price_data.not_nil!
      if _price_data.is_a?(OpenApi::Validatable)
        _price_data.validate
      end
      @price_data = _price_data
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] quantity Object to be assigned
    def quantity=(quantity : Int64?)
      if quantity.nil?
        return @quantity = nil
      end
      _quantity = quantity.not_nil!
      @quantity = _quantity
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_rates Object to be assigned
    def tax_rates=(tax_rates : Stripe::CreditNoteLineItemParamsTaxRates?)
      if tax_rates.nil?
        return @tax_rates = nil
      end
      _tax_rates = tax_rates.not_nil!
      if _tax_rates.is_a?(OpenApi::Validatable)
        _tax_rates.validate
      end
      @tax_rates = _tax_rates
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@price, @price_data, @quantity, @tax_rates)
  end
end
