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
  class PostShippingRatesRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The name of the shipping rate, meant to be displayable to the customer. This will appear on CheckoutSessions.
    @[JSON::Field(key: "display_name", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter display_name : String? = nil
    MAX_LENGTH_FOR_DISPLAY_NAME = 100

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "delivery_estimate", type: Stripe::DeliveryEstimate?, default: nil, required: false, nullable: false, emit_null: false)]
    getter delivery_estimate : Stripe::DeliveryEstimate? = nil

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    @[JSON::Field(key: "fixed_amount", type: Stripe::FixedAmount?, default: nil, required: false, nullable: false, emit_null: false)]
    getter fixed_amount : Stripe::FixedAmount? = nil

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
    @[JSON::Field(key: "tax_behavior", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax_behavior : String? = nil
    ERROR_MESSAGE_FOR_TAX_BEHAVIOR = "invalid value for \"tax_behavior\", must be one of [exclusive, inclusive, unspecified]."
    VALID_VALUES_FOR_TAX_BEHAVIOR  = String.static_array("exclusive", "inclusive", "unspecified")

    # A [tax code](https://stripe.com/docs/tax/tax-categories) ID. The Shipping tax code is `txcd_92010001`.
    @[JSON::Field(key: "tax_code", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax_code : String? = nil

    # The type of calculation to use on the shipping rate. Can only be `fixed_amount` for now.
    @[JSON::Field(key: "type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [fixed_amount]."
    VALID_VALUES_FOR__TYPE  = String.static_array("fixed_amount")

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @display_name : String? = nil,
      # Optional properties
      @delivery_estimate : Stripe::DeliveryEstimate? = nil,
      @expand : Array(String)? = nil,
      @fixed_amount : Stripe::FixedAmount? = nil,
      @metadata : Hash(String, String)? = nil,
      @tax_behavior : String? = nil,
      @tax_code : String? = nil,
      @_type : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"display_name\" is required and cannot be null") if @display_name.nil?

      unless (_display_name = @display_name).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("display_name", _display_name.to_s.size, MAX_LENGTH_FOR_DISPLAY_NAME)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_delivery_estimate = @delivery_estimate).nil?
        invalid_properties.concat(_delivery_estimate.list_invalid_properties_for("delivery_estimate")) if _delivery_estimate.is_a?(OpenApi::Validatable)
      end

      unless (_fixed_amount = @fixed_amount).nil?
        invalid_properties.concat(_fixed_amount.list_invalid_properties_for("fixed_amount")) if _fixed_amount.is_a?(OpenApi::Validatable)
      end

      unless (_tax_behavior = @tax_behavior).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_TAX_BEHAVIOR) unless OpenApi::EnumValidator.valid?(_tax_behavior, VALID_VALUES_FOR_TAX_BEHAVIOR)
      end

      unless (__type = @_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR__TYPE) unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @display_name.nil?
      unless (_display_name = @display_name).nil?
        return false if _display_name.to_s.size > MAX_LENGTH_FOR_DISPLAY_NAME
      end

      unless (_delivery_estimate = @delivery_estimate).nil?
        return false if _delivery_estimate.is_a?(OpenApi::Validatable) && !_delivery_estimate.valid?
      end

      unless (_fixed_amount = @fixed_amount).nil?
        return false if _fixed_amount.is_a?(OpenApi::Validatable) && !_fixed_amount.valid?
      end

      unless (_tax_behavior = @tax_behavior).nil?
        return false unless OpenApi::EnumValidator.valid?(_tax_behavior, VALID_VALUES_FOR_TAX_BEHAVIOR)
      end

      unless (__type = @_type).nil?
        return false unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] display_name Object to be assigned
    def display_name=(display_name : String?)
      if display_name.nil?
        raise ArgumentError.new("\"display_name\" is required and cannot be null")
      end
      _display_name = display_name.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("display_name", _display_name.to_s.size, MAX_LENGTH_FOR_DISPLAY_NAME)
      @display_name = _display_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] delivery_estimate Object to be assigned
    def delivery_estimate=(delivery_estimate : Stripe::DeliveryEstimate?)
      if delivery_estimate.nil?
        return @delivery_estimate = nil
      end
      _delivery_estimate = delivery_estimate.not_nil!
      _delivery_estimate.validate if _delivery_estimate.is_a?(OpenApi::Validatable)
      @delivery_estimate = _delivery_estimate
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(expand : Array(String)?)
      if expand.nil?
        return @expand = nil
      end
      _expand = expand.not_nil!
      @expand = _expand
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fixed_amount Object to be assigned
    def fixed_amount=(fixed_amount : Stripe::FixedAmount?)
      if fixed_amount.nil?
        return @fixed_amount = nil
      end
      _fixed_amount = fixed_amount.not_nil!
      _fixed_amount.validate if _fixed_amount.is_a?(OpenApi::Validatable)
      @fixed_amount = _fixed_amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Hash(String, String)?)
      if metadata.nil?
        return @metadata = nil
      end
      _metadata = metadata.not_nil!
      @metadata = _metadata
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_behavior Object to be assigned
    def tax_behavior=(tax_behavior : String?)
      if tax_behavior.nil?
        return @tax_behavior = nil
      end
      _tax_behavior = tax_behavior.not_nil!
      OpenApi::EnumValidator.validate("tax_behavior", _tax_behavior, VALID_VALUES_FOR_TAX_BEHAVIOR)
      @tax_behavior = _tax_behavior
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_code Object to be assigned
    def tax_code=(tax_code : String?)
      if tax_code.nil?
        return @tax_code = nil
      end
      _tax_code = tax_code.not_nil!
      @tax_code = _tax_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type : String?)
      if _type.nil?
        return @_type = nil
      end
      __type = _type.not_nil!
      OpenApi::EnumValidator.validate("_type", __type, VALID_VALUES_FOR__TYPE)
      @_type = __type
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@display_name, @delivery_estimate, @expand, @fixed_amount, @metadata, @tax_behavior, @tax_code, @_type)
  end
end
