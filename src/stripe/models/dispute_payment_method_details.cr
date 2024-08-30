#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./dispute_payment_method_details_card"
require "./dispute_payment_method_details_klarna"
require "./dispute_payment_method_details_paypal"

module Stripe
  #
  class DisputePaymentMethodDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Payment method type.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [card, klarna, paypal]."
    VALID_VALUES_FOR__TYPE  = String.static_array("card", "klarna", "paypal")

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "card", type: Stripe::DisputePaymentMethodDetailsCard?, default: nil, required: false, nullable: false, emit_null: false)]
    getter card : Stripe::DisputePaymentMethodDetailsCard? = nil

    @[JSON::Field(key: "klarna", type: Stripe::DisputePaymentMethodDetailsKlarna?, default: nil, required: false, nullable: false, emit_null: false)]
    getter klarna : Stripe::DisputePaymentMethodDetailsKlarna? = nil

    @[JSON::Field(key: "paypal", type: Stripe::DisputePaymentMethodDetailsPaypal?, default: nil, required: false, nullable: false, emit_null: false)]
    getter paypal : Stripe::DisputePaymentMethodDetailsPaypal? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @_type : String? = nil,
      # Optional properties
      @card : Stripe::DisputePaymentMethodDetailsCard? = nil,
      @klarna : Stripe::DisputePaymentMethodDetailsKlarna? = nil,
      @paypal : Stripe::DisputePaymentMethodDetailsPaypal? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?

      unless (__type = @_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR__TYPE) unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end
      unless (_card = @card).nil?
        invalid_properties.concat(_card.list_invalid_properties_for("card")) if _card.is_a?(OpenApi::Validatable)
      end
      unless (_klarna = @klarna).nil?
        invalid_properties.concat(_klarna.list_invalid_properties_for("klarna")) if _klarna.is_a?(OpenApi::Validatable)
      end
      unless (_paypal = @paypal).nil?
        invalid_properties.concat(_paypal.list_invalid_properties_for("paypal")) if _paypal.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @_type.nil?
      unless (__type = @_type).nil?
        return false unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end

      unless (_card = @card).nil?
        return false if _card.is_a?(OpenApi::Validatable) && !_card.valid?
      end

      unless (_klarna = @klarna).nil?
        return false if _klarna.is_a?(OpenApi::Validatable) && !_klarna.valid?
      end

      unless (_paypal = @paypal).nil?
        return false if _paypal.is_a?(OpenApi::Validatable) && !_paypal.valid?
      end

      true
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
    # @param [Object] card Object to be assigned
    def card=(new_value : Stripe::DisputePaymentMethodDetailsCard?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @card = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] klarna Object to be assigned
    def klarna=(new_value : Stripe::DisputePaymentMethodDetailsKlarna?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @klarna = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] paypal Object to be assigned
    def paypal=(new_value : Stripe::DisputePaymentMethodDetailsPaypal?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @paypal = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@_type, @card, @klarna, @paypal)
  end
end
