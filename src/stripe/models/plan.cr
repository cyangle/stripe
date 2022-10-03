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
  # You can now model subscriptions more flexibly using the [Prices API](https://stripe.com/docs/api#prices). It replaces the Plans API and is backwards compatible to simplify your migration.  Plans define the base price, currency, and billing cycle for recurring purchases of products. [Products](https://stripe.com/docs/api#products) help you track inventory or provisioning, and plans help you track pricing. Different physical goods or levels of service should be represented by products, and pricing options should be represented by plans. This approach lets you change prices without having to change your provisioning scheme.  For example, you might have a single \"gold\" product that has plans for $10/month, $100/year, €9/month, and €90/year.  Related guides: [Set up a subscription](https://stripe.com/docs/billing/subscriptions/set-up-subscription) and more about [products and prices](https://stripe.com/docs/products-prices/overview).
  class Plan
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Whether the plan can be used for new purchases.
    @[JSON::Field(key: "active", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter active : Bool? = nil

    # Describes how to compute the price per period. Either `per_unit` or `tiered`. `per_unit` indicates that the fixed amount (specified in `amount`) will be charged per unit in `quantity` (for plans with `usage_type=licensed`), or per unit of total usage (for plans with `usage_type=metered`). `tiered` indicates that the unit pricing will be computed using a tiering strategy as defined using the `tiers` and `tiers_mode` attributes.
    @[JSON::Field(key: "billing_scheme", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter billing_scheme : String? = nil
    ERROR_MESSAGE_FOR_BILLING_SCHEME = "invalid value for \"billing_scheme\", must be one of [per_unit, tiered]."
    VALID_VALUES_FOR_BILLING_SCHEME  = StaticArray["per_unit", "tiered"]

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # The frequency at which a subscription is billed. One of `day`, `week`, `month` or `year`.
    @[JSON::Field(key: "interval", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter interval : String? = nil
    ERROR_MESSAGE_FOR_INTERVAL = "invalid value for \"interval\", must be one of [day, month, week, year]."
    VALID_VALUES_FOR_INTERVAL  = StaticArray["day", "month", "week", "year"]

    # The number of intervals (specified in the `interval` attribute) between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months.
    @[JSON::Field(key: "interval_count", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter interval_count : Int64? = nil

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [plan]."
    VALID_VALUES_FOR_OBJECT  = StaticArray["plan"]

    # Configures how the quantity per period should be determined. Can be either `metered` or `licensed`. `licensed` automatically bills the `quantity` set when adding it to a subscription. `metered` aggregates the total usage based on usage records. Defaults to `licensed`.
    @[JSON::Field(key: "usage_type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter usage_type : String? = nil
    ERROR_MESSAGE_FOR_USAGE_TYPE = "invalid value for \"usage_type\", must be one of [licensed, metered]."
    VALID_VALUES_FOR_USAGE_TYPE  = StaticArray["licensed", "metered"]

    # End of Required Properties

    # Optional Properties

    # Specifies a usage aggregation strategy for plans of `usage_type=metered`. Allowed values are `sum` for summing up all usage during a period, `last_during_period` for using the last usage record reported within a period, `last_ever` for using the last usage record ever (across period bounds) or `max` which uses the usage record with the maximum reported usage during a period. Defaults to `sum`.
    @[JSON::Field(key: "aggregate_usage", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: aggregate_usage.nil? && !aggregate_usage_present?)]
    getter aggregate_usage : String? = nil
    ERROR_MESSAGE_FOR_AGGREGATE_USAGE = "invalid value for \"aggregate_usage\", must be one of [last_during_period, last_ever, max, sum]."
    VALID_VALUES_FOR_AGGREGATE_USAGE  = StaticArray["last_during_period", "last_ever", "max", "sum"]

    @[JSON::Field(ignore: true)]
    property? aggregate_usage_present : Bool = false

    # The unit amount in %s to be charged, represented as a whole integer if possible. Only set if `billing_scheme=per_unit`.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: amount.nil? && !amount_present?)]
    getter amount : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? amount_present : Bool = false

    # The unit amount in %s to be charged, represented as a decimal string with at most 12 decimal places. Only set if `billing_scheme=per_unit`.
    @[JSON::Field(key: "amount_decimal", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: amount_decimal.nil? && !amount_decimal_present?)]
    getter amount_decimal : String? = nil

    @[JSON::Field(ignore: true)]
    property? amount_decimal_present : Bool = false

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    getter metadata : Hash(String, String)? = nil

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    # A brief description of the plan, hidden from customers.
    @[JSON::Field(key: "nickname", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: nickname.nil? && !nickname_present?)]
    getter nickname : String? = nil
    MAX_LENGTH_FOR_NICKNAME = 5000

    @[JSON::Field(ignore: true)]
    property? nickname_present : Bool = false

    @[JSON::Field(key: "product", type: Stripe::PlanProduct?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: product.nil? && !product_present?)]
    getter product : Stripe::PlanProduct? = nil

    @[JSON::Field(ignore: true)]
    property? product_present : Bool = false

    # Each element represents a pricing tier. This parameter requires `billing_scheme` to be set to `tiered`. See also the documentation for `billing_scheme`.
    @[JSON::Field(key: "tiers", type: Array(Stripe::PlanTier)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tiers : Array(Stripe::PlanTier)? = nil

    # Defines if the tiering price should be `graduated` or `volume` based. In `volume`-based tiering, the maximum quantity within a period determines the per unit price. In `graduated` tiering, pricing can change as the quantity grows.
    @[JSON::Field(key: "tiers_mode", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: tiers_mode.nil? && !tiers_mode_present?)]
    getter tiers_mode : String? = nil
    ERROR_MESSAGE_FOR_TIERS_MODE = "invalid value for \"tiers_mode\", must be one of [graduated, volume]."
    VALID_VALUES_FOR_TIERS_MODE  = StaticArray["graduated", "volume"]

    @[JSON::Field(ignore: true)]
    property? tiers_mode_present : Bool = false

    @[JSON::Field(key: "transform_usage", type: Stripe::PlanTransformUsage?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: transform_usage.nil? && !transform_usage_present?)]
    getter transform_usage : Stripe::PlanTransformUsage? = nil

    @[JSON::Field(ignore: true)]
    property? transform_usage_present : Bool = false

    # Default number of trial days when subscribing a customer to this plan using [`trial_from_plan=true`](https://stripe.com/docs/api#create_subscription-trial_from_plan).
    @[JSON::Field(key: "trial_period_days", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: trial_period_days.nil? && !trial_period_days_present?)]
    getter trial_period_days : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? trial_period_days_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @active : Bool? = nil,
      @billing_scheme : String? = nil,
      @created : Int64? = nil,
      @currency : String? = nil,
      @id : String? = nil,
      @interval : String? = nil,
      @interval_count : Int64? = nil,
      @livemode : Bool? = nil,
      @object : String? = nil,
      @usage_type : String? = nil,
      # Optional properties
      @aggregate_usage : String? = nil,
      @amount : Int64? = nil,
      @amount_decimal : String? = nil,
      @metadata : Hash(String, String)? = nil,
      @nickname : String? = nil,
      @product : Stripe::PlanProduct? = nil,
      @tiers : Array(Stripe::PlanTier)? = nil,
      @tiers_mode : String? = nil,
      @transform_usage : Stripe::PlanTransformUsage? = nil,
      @trial_period_days : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"active\" is required and cannot be null") if @active.nil?

      invalid_properties.push("\"billing_scheme\" is required and cannot be null") if @billing_scheme.nil?

      unless (_billing_scheme = @billing_scheme).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_BILLING_SCHEME) unless OpenApi::EnumValidator.valid?(_billing_scheme, VALID_VALUES_FOR_BILLING_SCHEME)
      end
      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      invalid_properties.push("\"currency\" is required and cannot be null") if @currency.nil?

      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"interval\" is required and cannot be null") if @interval.nil?

      unless (_interval = @interval).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_INTERVAL) unless OpenApi::EnumValidator.valid?(_interval, VALID_VALUES_FOR_INTERVAL)
      end
      invalid_properties.push("\"interval_count\" is required and cannot be null") if @interval_count.nil?

      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      unless (_object = @object).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      invalid_properties.push("\"usage_type\" is required and cannot be null") if @usage_type.nil?

      unless (_usage_type = @usage_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_USAGE_TYPE) unless OpenApi::EnumValidator.valid?(_usage_type, VALID_VALUES_FOR_USAGE_TYPE)
      end
      unless (_aggregate_usage = @aggregate_usage).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_AGGREGATE_USAGE) unless OpenApi::EnumValidator.valid?(_aggregate_usage, VALID_VALUES_FOR_AGGREGATE_USAGE)
      end

      unless (_nickname = @nickname).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("nickname", _nickname.to_s.size, MAX_LENGTH_FOR_NICKNAME)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_product = @product).nil?
        invalid_properties.concat(_product.list_invalid_properties_for("product")) if _product.is_a?(OpenApi::Validatable)
      end
      unless (_tiers = @tiers).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "tiers", container: _tiers)) if _tiers.is_a?(Array)
      end
      unless (_tiers_mode = @tiers_mode).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_TIERS_MODE) unless OpenApi::EnumValidator.valid?(_tiers_mode, VALID_VALUES_FOR_TIERS_MODE)
      end
      unless (_transform_usage = @transform_usage).nil?
        invalid_properties.concat(_transform_usage.list_invalid_properties_for("transform_usage")) if _transform_usage.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @active.nil?

      return false if @billing_scheme.nil?
      unless (_billing_scheme = @billing_scheme).nil?
        return false unless OpenApi::EnumValidator.valid?(_billing_scheme, VALID_VALUES_FOR_BILLING_SCHEME)
      end

      return false if @created.nil?

      return false if @currency.nil?

      return false if @id.nil?
      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      return false if @interval.nil?
      unless (_interval = @interval).nil?
        return false unless OpenApi::EnumValidator.valid?(_interval, VALID_VALUES_FOR_INTERVAL)
      end

      return false if @interval_count.nil?

      return false if @livemode.nil?

      return false if @object.nil?
      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      return false if @usage_type.nil?
      unless (_usage_type = @usage_type).nil?
        return false unless OpenApi::EnumValidator.valid?(_usage_type, VALID_VALUES_FOR_USAGE_TYPE)
      end

      unless (_aggregate_usage = @aggregate_usage).nil?
        return false unless OpenApi::EnumValidator.valid?(_aggregate_usage, VALID_VALUES_FOR_AGGREGATE_USAGE)
      end

      unless (_nickname = @nickname).nil?
        return false if _nickname.to_s.size > MAX_LENGTH_FOR_NICKNAME
      end

      unless (_product = @product).nil?
        return false if _product.is_a?(OpenApi::Validatable) && !_product.valid?
      end

      unless (_tiers = @tiers).nil?
        return false if _tiers.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _tiers)
      end

      unless (_tiers_mode = @tiers_mode).nil?
        return false unless OpenApi::EnumValidator.valid?(_tiers_mode, VALID_VALUES_FOR_TIERS_MODE)
      end

      unless (_transform_usage = @transform_usage).nil?
        return false if _transform_usage.is_a?(OpenApi::Validatable) && !_transform_usage.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] active Object to be assigned
    def active=(active : Bool?)
      if active.nil?
        raise ArgumentError.new("\"active\" is required and cannot be null")
      end
      _active = active.not_nil!
      @active = _active
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing_scheme Object to be assigned
    def billing_scheme=(billing_scheme : String?)
      if billing_scheme.nil?
        raise ArgumentError.new("\"billing_scheme\" is required and cannot be null")
      end
      _billing_scheme = billing_scheme.not_nil!
      OpenApi::EnumValidator.validate("billing_scheme", _billing_scheme, VALID_VALUES_FOR_BILLING_SCHEME)
      @billing_scheme = _billing_scheme
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] created Object to be assigned
    def created=(created : Int64?)
      if created.nil?
        raise ArgumentError.new("\"created\" is required and cannot be null")
      end
      _created = created.not_nil!
      @created = _created
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(currency : String?)
      if currency.nil?
        raise ArgumentError.new("\"currency\" is required and cannot be null")
      end
      _currency = currency.not_nil!
      @currency = _currency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(id : String?)
      if id.nil?
        raise ArgumentError.new("\"id\" is required and cannot be null")
      end
      _id = id.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
      @id = _id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interval Object to be assigned
    def interval=(interval : String?)
      if interval.nil?
        raise ArgumentError.new("\"interval\" is required and cannot be null")
      end
      _interval = interval.not_nil!
      OpenApi::EnumValidator.validate("interval", _interval, VALID_VALUES_FOR_INTERVAL)
      @interval = _interval
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interval_count Object to be assigned
    def interval_count=(interval_count : Int64?)
      if interval_count.nil?
        raise ArgumentError.new("\"interval_count\" is required and cannot be null")
      end
      _interval_count = interval_count.not_nil!
      @interval_count = _interval_count
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] livemode Object to be assigned
    def livemode=(livemode : Bool?)
      if livemode.nil?
        raise ArgumentError.new("\"livemode\" is required and cannot be null")
      end
      _livemode = livemode.not_nil!
      @livemode = _livemode
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object : String?)
      if object.nil?
        raise ArgumentError.new("\"object\" is required and cannot be null")
      end
      _object = object.not_nil!
      OpenApi::EnumValidator.validate("object", _object, VALID_VALUES_FOR_OBJECT)
      @object = _object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] usage_type Object to be assigned
    def usage_type=(usage_type : String?)
      if usage_type.nil?
        raise ArgumentError.new("\"usage_type\" is required and cannot be null")
      end
      _usage_type = usage_type.not_nil!
      OpenApi::EnumValidator.validate("usage_type", _usage_type, VALID_VALUES_FOR_USAGE_TYPE)
      @usage_type = _usage_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] aggregate_usage Object to be assigned
    def aggregate_usage=(aggregate_usage : String?)
      if aggregate_usage.nil?
        return @aggregate_usage = nil
      end
      _aggregate_usage = aggregate_usage.not_nil!
      OpenApi::EnumValidator.validate("aggregate_usage", _aggregate_usage, VALID_VALUES_FOR_AGGREGATE_USAGE)
      @aggregate_usage = _aggregate_usage
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(amount : Int64?)
      if amount.nil?
        return @amount = nil
      end
      _amount = amount.not_nil!
      @amount = _amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount_decimal Object to be assigned
    def amount_decimal=(amount_decimal : String?)
      if amount_decimal.nil?
        return @amount_decimal = nil
      end
      _amount_decimal = amount_decimal.not_nil!
      @amount_decimal = _amount_decimal
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
    # @param [Object] nickname Object to be assigned
    def nickname=(nickname : String?)
      if nickname.nil?
        return @nickname = nil
      end
      _nickname = nickname.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("nickname", _nickname.to_s.size, MAX_LENGTH_FOR_NICKNAME)
      @nickname = _nickname
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] product Object to be assigned
    def product=(product : Stripe::PlanProduct?)
      if product.nil?
        return @product = nil
      end
      _product = product.not_nil!
      _product.validate if _product.is_a?(OpenApi::Validatable)
      @product = _product
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tiers Object to be assigned
    def tiers=(tiers : Array(Stripe::PlanTier)?)
      if tiers.nil?
        return @tiers = nil
      end
      _tiers = tiers.not_nil!
      OpenApi::ContainerValidator.validate(container: _tiers) if _tiers.is_a?(Array)
      @tiers = _tiers
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tiers_mode Object to be assigned
    def tiers_mode=(tiers_mode : String?)
      if tiers_mode.nil?
        return @tiers_mode = nil
      end
      _tiers_mode = tiers_mode.not_nil!
      OpenApi::EnumValidator.validate("tiers_mode", _tiers_mode, VALID_VALUES_FOR_TIERS_MODE)
      @tiers_mode = _tiers_mode
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transform_usage Object to be assigned
    def transform_usage=(transform_usage : Stripe::PlanTransformUsage?)
      if transform_usage.nil?
        return @transform_usage = nil
      end
      _transform_usage = transform_usage.not_nil!
      _transform_usage.validate if _transform_usage.is_a?(OpenApi::Validatable)
      @transform_usage = _transform_usage
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] trial_period_days Object to be assigned
    def trial_period_days=(trial_period_days : Int64?)
      if trial_period_days.nil?
        return @trial_period_days = nil
      end
      _trial_period_days = trial_period_days.not_nil!
      @trial_period_days = _trial_period_days
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@active, @billing_scheme, @created, @currency, @id, @interval, @interval_count, @livemode, @object, @usage_type, @aggregate_usage, @aggregate_usage_present, @amount, @amount_present, @amount_decimal, @amount_decimal_present, @metadata, @metadata_present, @nickname, @nickname_present, @product, @product_present, @tiers, @tiers_mode, @tiers_mode_present, @transform_usage, @transform_usage_present, @trial_period_days, @trial_period_days_present)
  end
end
