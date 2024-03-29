#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  class PostPricesRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    # End of Required Properties

    # Optional Properties

    # Whether the price can be used for new purchases. Defaults to `true`.
    @[JSON::Field(key: "active", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter active : Bool? = nil

    # Describes how to compute the price per period. Either `per_unit` or `tiered`. `per_unit` indicates that the fixed amount (specified in `unit_amount` or `unit_amount_decimal`) will be charged per unit in `quantity` (for prices with `usage_type=licensed`), or per unit of total usage (for prices with `usage_type=metered`). `tiered` indicates that the unit pricing will be computed using a tiering strategy as defined using the `tiers` and `tiers_mode` attributes.
    @[JSON::Field(key: "billing_scheme", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter billing_scheme : String? = nil
    ERROR_MESSAGE_FOR_BILLING_SCHEME = "invalid value for \"billing_scheme\", must be one of [per_unit, tiered]."
    VALID_VALUES_FOR_BILLING_SCHEME  = String.static_array("per_unit", "tiered")

    @[JSON::Field(key: "currency_options", type: Hash(String, Stripe::CurrencyOption)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter currency_options : Hash(String, Stripe::CurrencyOption)? = nil

    @[JSON::Field(key: "custom_unit_amount", type: Stripe::CustomUnitAmount?, default: nil, required: false, nullable: false, emit_null: false)]
    getter custom_unit_amount : Stripe::CustomUnitAmount? = nil

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # A lookup key used to retrieve prices dynamically from a static string. This may be up to 200 characters.
    @[JSON::Field(key: "lookup_key", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter lookup_key : String? = nil
    MAX_LENGTH_FOR_LOOKUP_KEY = 200

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # A brief description of the price, hidden from customers.
    @[JSON::Field(key: "nickname", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter nickname : String? = nil
    MAX_LENGTH_FOR_NICKNAME = 5000

    # The ID of the product that this price will belong to.
    @[JSON::Field(key: "product", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter product : String? = nil
    MAX_LENGTH_FOR_PRODUCT = 5000

    @[JSON::Field(key: "product_data", type: Stripe::InlineProductParams?, default: nil, required: false, nullable: false, emit_null: false)]
    getter product_data : Stripe::InlineProductParams? = nil

    @[JSON::Field(key: "recurring", type: Stripe::Recurring?, default: nil, required: false, nullable: false, emit_null: false)]
    getter recurring : Stripe::Recurring? = nil

    # Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
    @[JSON::Field(key: "tax_behavior", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax_behavior : String? = nil
    ERROR_MESSAGE_FOR_TAX_BEHAVIOR = "invalid value for \"tax_behavior\", must be one of [exclusive, inclusive, unspecified]."
    VALID_VALUES_FOR_TAX_BEHAVIOR  = String.static_array("exclusive", "inclusive", "unspecified")

    # Each element represents a pricing tier. This parameter requires `billing_scheme` to be set to `tiered`. See also the documentation for `billing_scheme`.
    @[JSON::Field(key: "tiers", type: Array(Stripe::Tier)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tiers : Array(Stripe::Tier)? = nil

    # Defines if the tiering price should be `graduated` or `volume` based. In `volume`-based tiering, the maximum quantity within a period determines the per unit price, in `graduated` tiering pricing can successively change as the quantity grows.
    @[JSON::Field(key: "tiers_mode", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tiers_mode : String? = nil
    ERROR_MESSAGE_FOR_TIERS_MODE = "invalid value for \"tiers_mode\", must be one of [graduated, volume]."
    VALID_VALUES_FOR_TIERS_MODE  = String.static_array("graduated", "volume")

    # If set to true, will atomically remove the lookup key from the existing price, and assign it to this price.
    @[JSON::Field(key: "transfer_lookup_key", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter transfer_lookup_key : Bool? = nil

    @[JSON::Field(key: "transform_quantity", type: Stripe::TransformUsageParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter transform_quantity : Stripe::TransformUsageParam? = nil

    # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge. One of `unit_amount` or `custom_unit_amount` is required, unless `billing_scheme=tiered`.
    @[JSON::Field(key: "unit_amount", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter unit_amount : Int64? = nil

    # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
    @[JSON::Field(key: "unit_amount_decimal", type: BigDecimal?, default: nil, required: false, nullable: false, emit_null: false)]
    getter unit_amount_decimal : BigDecimal? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @currency : String? = nil,
      # Optional properties
      @active : Bool? = nil,
      @billing_scheme : String? = nil,
      @currency_options : Hash(String, Stripe::CurrencyOption)? = nil,
      @custom_unit_amount : Stripe::CustomUnitAmount? = nil,
      @expand : Array(String)? = nil,
      @lookup_key : String? = nil,
      @metadata : Hash(String, String)? = nil,
      @nickname : String? = nil,
      @product : String? = nil,
      @product_data : Stripe::InlineProductParams? = nil,
      @recurring : Stripe::Recurring? = nil,
      @tax_behavior : String? = nil,
      @tiers : Array(Stripe::Tier)? = nil,
      @tiers_mode : String? = nil,
      @transfer_lookup_key : Bool? = nil,
      @transform_quantity : Stripe::TransformUsageParam? = nil,
      @unit_amount : Int64? = nil,
      @unit_amount_decimal : BigDecimal? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"currency\" is required and cannot be null") if @currency.nil?

      unless (_billing_scheme = @billing_scheme).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_BILLING_SCHEME) unless OpenApi::EnumValidator.valid?(_billing_scheme, VALID_VALUES_FOR_BILLING_SCHEME)
      end
      unless (_currency_options = @currency_options).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "currency_options", container: _currency_options)) if _currency_options.is_a?(Hash)
      end
      unless (_custom_unit_amount = @custom_unit_amount).nil?
        invalid_properties.concat(_custom_unit_amount.list_invalid_properties_for("custom_unit_amount")) if _custom_unit_amount.is_a?(OpenApi::Validatable)
      end

      unless (_lookup_key = @lookup_key).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("lookup_key", _lookup_key.to_s.size, MAX_LENGTH_FOR_LOOKUP_KEY)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_nickname = @nickname).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("nickname", _nickname.to_s.size, MAX_LENGTH_FOR_NICKNAME)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_product = @product).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("product", _product.to_s.size, MAX_LENGTH_FOR_PRODUCT)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_product_data = @product_data).nil?
        invalid_properties.concat(_product_data.list_invalid_properties_for("product_data")) if _product_data.is_a?(OpenApi::Validatable)
      end
      unless (_recurring = @recurring).nil?
        invalid_properties.concat(_recurring.list_invalid_properties_for("recurring")) if _recurring.is_a?(OpenApi::Validatable)
      end
      unless (_tax_behavior = @tax_behavior).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_TAX_BEHAVIOR) unless OpenApi::EnumValidator.valid?(_tax_behavior, VALID_VALUES_FOR_TAX_BEHAVIOR)
      end
      unless (_tiers = @tiers).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "tiers", container: _tiers)) if _tiers.is_a?(Array)
      end
      unless (_tiers_mode = @tiers_mode).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_TIERS_MODE) unless OpenApi::EnumValidator.valid?(_tiers_mode, VALID_VALUES_FOR_TIERS_MODE)
      end

      unless (_transform_quantity = @transform_quantity).nil?
        invalid_properties.concat(_transform_quantity.list_invalid_properties_for("transform_quantity")) if _transform_quantity.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @currency.nil?

      unless (_billing_scheme = @billing_scheme).nil?
        return false unless OpenApi::EnumValidator.valid?(_billing_scheme, VALID_VALUES_FOR_BILLING_SCHEME)
      end

      unless (_currency_options = @currency_options).nil?
        return false if _currency_options.is_a?(Hash) && !OpenApi::ContainerValidator.valid?(container: _currency_options)
      end

      unless (_custom_unit_amount = @custom_unit_amount).nil?
        return false if _custom_unit_amount.is_a?(OpenApi::Validatable) && !_custom_unit_amount.valid?
      end

      unless (_lookup_key = @lookup_key).nil?
        return false if _lookup_key.to_s.size > MAX_LENGTH_FOR_LOOKUP_KEY
      end

      unless (_nickname = @nickname).nil?
        return false if _nickname.to_s.size > MAX_LENGTH_FOR_NICKNAME
      end

      unless (_product = @product).nil?
        return false if _product.to_s.size > MAX_LENGTH_FOR_PRODUCT
      end

      unless (_product_data = @product_data).nil?
        return false if _product_data.is_a?(OpenApi::Validatable) && !_product_data.valid?
      end

      unless (_recurring = @recurring).nil?
        return false if _recurring.is_a?(OpenApi::Validatable) && !_recurring.valid?
      end

      unless (_tax_behavior = @tax_behavior).nil?
        return false unless OpenApi::EnumValidator.valid?(_tax_behavior, VALID_VALUES_FOR_TAX_BEHAVIOR)
      end

      unless (_tiers = @tiers).nil?
        return false if _tiers.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _tiers)
      end

      unless (_tiers_mode = @tiers_mode).nil?
        return false unless OpenApi::EnumValidator.valid?(_tiers_mode, VALID_VALUES_FOR_TIERS_MODE)
      end

      unless (_transform_quantity = @transform_quantity).nil?
        return false if _transform_quantity.is_a?(OpenApi::Validatable) && !_transform_quantity.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(new_value : String?)
      raise ArgumentError.new("\"currency\" is required and cannot be null") if new_value.nil?

      @currency = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] active Object to be assigned
    def active=(new_value : Bool?)
      @active = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing_scheme Object to be assigned
    def billing_scheme=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("billing_scheme", new_value, VALID_VALUES_FOR_BILLING_SCHEME)
      end

      @billing_scheme = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency_options Object to be assigned
    def currency_options=(new_value : Hash(String, Stripe::CurrencyOption)?)
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Hash)
      end

      @currency_options = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] custom_unit_amount Object to be assigned
    def custom_unit_amount=(new_value : Stripe::CustomUnitAmount?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @custom_unit_amount = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(new_value : Array(String)?)
      @expand = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] lookup_key Object to be assigned
    def lookup_key=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("lookup_key", new_value.to_s.size, MAX_LENGTH_FOR_LOOKUP_KEY)
      end

      @lookup_key = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(new_value : Hash(String, String)?)
      @metadata = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] nickname Object to be assigned
    def nickname=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("nickname", new_value.to_s.size, MAX_LENGTH_FOR_NICKNAME)
      end

      @nickname = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] product Object to be assigned
    def product=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("product", new_value.to_s.size, MAX_LENGTH_FOR_PRODUCT)
      end

      @product = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] product_data Object to be assigned
    def product_data=(new_value : Stripe::InlineProductParams?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @product_data = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] recurring Object to be assigned
    def recurring=(new_value : Stripe::Recurring?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @recurring = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_behavior Object to be assigned
    def tax_behavior=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("tax_behavior", new_value, VALID_VALUES_FOR_TAX_BEHAVIOR)
      end

      @tax_behavior = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tiers Object to be assigned
    def tiers=(new_value : Array(Stripe::Tier)?)
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @tiers = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tiers_mode Object to be assigned
    def tiers_mode=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("tiers_mode", new_value, VALID_VALUES_FOR_TIERS_MODE)
      end

      @tiers_mode = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transfer_lookup_key Object to be assigned
    def transfer_lookup_key=(new_value : Bool?)
      @transfer_lookup_key = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transform_quantity Object to be assigned
    def transform_quantity=(new_value : Stripe::TransformUsageParam?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @transform_quantity = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] unit_amount Object to be assigned
    def unit_amount=(new_value : Int64?)
      @unit_amount = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] unit_amount_decimal Object to be assigned
    def unit_amount_decimal=(new_value : BigDecimal?)
      @unit_amount_decimal = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@currency, @active, @billing_scheme, @currency_options, @custom_unit_amount, @expand, @lookup_key, @metadata, @nickname, @product, @product_data, @recurring, @tax_behavior, @tiers, @tiers_mode, @transfer_lookup_key, @transform_quantity, @unit_amount, @unit_amount_decimal)
  end
end
