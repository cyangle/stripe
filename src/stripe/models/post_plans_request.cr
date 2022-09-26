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
  class PostPlansRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Required properties

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    # Specifies billing frequency. Either `day`, `week`, `month` or `year`.
    @[JSON::Field(key: "interval", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter interval : String? = nil

    ENUM_VALIDATOR_FOR_INTERVAL = EnumValidator.new("interval", "String", ["day", "month", "week", "year"])

    # Optional properties

    # Whether the plan is currently available for new subscriptions. Defaults to `true`.
    @[JSON::Field(key: "active", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter active : Bool? = nil

    # Specifies a usage aggregation strategy for plans of `usage_type=metered`. Allowed values are `sum` for summing up all usage during a period, `last_during_period` for using the last usage record reported within a period, `last_ever` for using the last usage record ever (across period bounds) or `max` which uses the usage record with the maximum reported usage during a period. Defaults to `sum`.
    @[JSON::Field(key: "aggregate_usage", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter aggregate_usage : String? = nil

    ENUM_VALIDATOR_FOR_AGGREGATE_USAGE = EnumValidator.new("aggregate_usage", "String", ["last_during_period", "last_ever", "max", "sum"])

    # A positive integer in cents (or local equivalent) (or 0 for a free plan) representing how much to charge on a recurring basis.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    # Same as `amount`, but accepts a decimal value with at most 12 decimal places. Only one of `amount` and `amount_decimal` can be set.
    @[JSON::Field(key: "amount_decimal", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter amount_decimal : String? = nil

    # Describes how to compute the price per period. Either `per_unit` or `tiered`. `per_unit` indicates that the fixed amount (specified in `amount`) will be charged per unit in `quantity` (for plans with `usage_type=licensed`), or per unit of total usage (for plans with `usage_type=metered`). `tiered` indicates that the unit pricing will be computed using a tiering strategy as defined using the `tiers` and `tiers_mode` attributes.
    @[JSON::Field(key: "billing_scheme", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter billing_scheme : String? = nil

    ENUM_VALIDATOR_FOR_BILLING_SCHEME = EnumValidator.new("billing_scheme", "String", ["per_unit", "tiered"])

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # An identifier randomly generated by Stripe. Used to identify this plan when subscribing a customer. You can optionally override this ID, but the ID must be unique across all plans in your Stripe account. You can, however, use the same plan ID in both live and test modes.
    @[JSON::Field(key: "id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter id : String? = nil

    # The number of intervals between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months. Maximum of one year interval allowed (1 year, 12 months, or 52 weeks).
    @[JSON::Field(key: "interval_count", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter interval_count : Int64? = nil

    @[JSON::Field(key: "metadata", type: Stripe::PostAccountRequestMetadata?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Stripe::PostAccountRequestMetadata? = nil

    # A brief description of the plan, hidden from customers.
    @[JSON::Field(key: "nickname", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter nickname : String? = nil

    @[JSON::Field(key: "product", type: Stripe::PostPlansRequestProduct?, default: nil, required: false, nullable: false, emit_null: false)]
    getter product : Stripe::PostPlansRequestProduct? = nil

    # Each element represents a pricing tier. This parameter requires `billing_scheme` to be set to `tiered`. See also the documentation for `billing_scheme`.
    @[JSON::Field(key: "tiers", type: Array(Stripe::Tier)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tiers : Array(Stripe::Tier)? = nil

    # Defines if the tiering price should be `graduated` or `volume` based. In `volume`-based tiering, the maximum quantity within a period determines the per unit price, in `graduated` tiering pricing can successively change as the quantity grows.
    @[JSON::Field(key: "tiers_mode", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tiers_mode : String? = nil

    ENUM_VALIDATOR_FOR_TIERS_MODE = EnumValidator.new("tiers_mode", "String", ["graduated", "volume"])

    @[JSON::Field(key: "transform_usage", type: Stripe::TransformUsageParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter transform_usage : Stripe::TransformUsageParam? = nil

    # Default number of trial days when subscribing a customer to this plan using [`trial_from_plan=true`](https://stripe.com/docs/api#create_subscription-trial_from_plan).
    @[JSON::Field(key: "trial_period_days", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter trial_period_days : Int64? = nil

    # Configures how the quantity per period should be determined. Can be either `metered` or `licensed`. `licensed` automatically bills the `quantity` set when adding it to a subscription. `metered` aggregates the total usage based on usage records. Defaults to `licensed`.
    @[JSON::Field(key: "usage_type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter usage_type : String? = nil

    ENUM_VALIDATOR_FOR_USAGE_TYPE = EnumValidator.new("usage_type", "String", ["licensed", "metered"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @currency : String? = nil,
      @interval : String? = nil,
      # Optional properties
      @active : Bool? = nil,
      @aggregate_usage : String? = nil,
      @amount : Int64? = nil,
      @amount_decimal : String? = nil,
      @billing_scheme : String? = nil,
      @expand : Array(String)? = nil,
      @id : String? = nil,
      @interval_count : Int64? = nil,
      @metadata : Stripe::PostAccountRequestMetadata? = nil,
      @nickname : String? = nil,
      @product : Stripe::PostPlansRequestProduct? = nil,
      @tiers : Array(Stripe::Tier)? = nil,
      @tiers_mode : String? = nil,
      @transform_usage : Stripe::TransformUsageParam? = nil,
      @trial_period_days : Int64? = nil,
      @usage_type : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      invalid_properties.push("\"currency\" is required and cannot be null") if @currency.nil?

      invalid_properties.push(ENUM_VALIDATOR_FOR_INTERVAL.error_message) unless ENUM_VALIDATOR_FOR_INTERVAL.valid?(@interval, false)

      invalid_properties.push(ENUM_VALIDATOR_FOR_AGGREGATE_USAGE.error_message) unless ENUM_VALIDATOR_FOR_AGGREGATE_USAGE.valid?(@aggregate_usage)

      invalid_properties.push(ENUM_VALIDATOR_FOR_BILLING_SCHEME.error_message) unless ENUM_VALIDATOR_FOR_BILLING_SCHEME.valid?(@billing_scheme)
      if _id = @id
        if _id.to_s.size > 5000
          invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
        end
      end
      # This is a model metadata : Stripe::PostAccountRequestMetadata?
      if _nickname = @nickname
        if _nickname.to_s.size > 5000
          invalid_properties.push("invalid value for \"nickname\", the character length must be smaller than or equal to 5000.")
        end
      end
      # This is a model product : Stripe::PostPlansRequestProduct?
      # Container tiers array has values of Stripe::Tier

      invalid_properties.push(ENUM_VALIDATOR_FOR_TIERS_MODE.error_message) unless ENUM_VALIDATOR_FOR_TIERS_MODE.valid?(@tiers_mode)
      # This is a model transform_usage : Stripe::TransformUsageParam?

      invalid_properties.push(ENUM_VALIDATOR_FOR_USAGE_TYPE.error_message) unless ENUM_VALIDATOR_FOR_USAGE_TYPE.valid?(@usage_type)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @currency.nil?
      return false unless ENUM_VALIDATOR_FOR_INTERVAL.valid?(@interval, false)
      return false unless ENUM_VALIDATOR_FOR_AGGREGATE_USAGE.valid?(@aggregate_usage)
      return false unless ENUM_VALIDATOR_FOR_BILLING_SCHEME.valid?(@billing_scheme)
      if _id = @id
        return false if _id.to_s.size > 5000
      end
      if _nickname = @nickname
        return false if _nickname.to_s.size > 5000
      end
      return false unless ENUM_VALIDATOR_FOR_TIERS_MODE.valid?(@tiers_mode)
      return false unless ENUM_VALIDATOR_FOR_USAGE_TYPE.valid?(@usage_type)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(currency : String?)
      if currency.nil?
        raise ArgumentError.new("\"currency\" is required and cannot be null")
      end
      @currency = currency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interval Object to be assigned
    def interval=(interval : String?)
      if interval.nil?
        raise ArgumentError.new("\"interval\" is required and cannot be null")
      end
      _interval = interval.not_nil!
      ENUM_VALIDATOR_FOR_INTERVAL.valid!(_interval)
      @interval = interval
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] active Object to be assigned
    def active=(active : Bool?)
      if active.nil?
        return @active = nil
      end
      @active = active
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] aggregate_usage Object to be assigned
    def aggregate_usage=(aggregate_usage : String?)
      if aggregate_usage.nil?
        return @aggregate_usage = nil
      end
      _aggregate_usage = aggregate_usage.not_nil!
      ENUM_VALIDATOR_FOR_AGGREGATE_USAGE.valid!(_aggregate_usage)
      @aggregate_usage = aggregate_usage
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(amount : Int64?)
      if amount.nil?
        return @amount = nil
      end
      @amount = amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount_decimal Object to be assigned
    def amount_decimal=(amount_decimal : String?)
      if amount_decimal.nil?
        return @amount_decimal = nil
      end
      @amount_decimal = amount_decimal
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing_scheme Object to be assigned
    def billing_scheme=(billing_scheme : String?)
      if billing_scheme.nil?
        return @billing_scheme = nil
      end
      _billing_scheme = billing_scheme.not_nil!
      ENUM_VALIDATOR_FOR_BILLING_SCHEME.valid!(_billing_scheme)
      @billing_scheme = billing_scheme
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(expand : Array(String)?)
      if expand.nil?
        return @expand = nil
      end
      @expand = expand
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(id : String?)
      if id.nil?
        return @id = nil
      end
      _id = id.not_nil!
      if _id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      @id = id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interval_count Object to be assigned
    def interval_count=(interval_count : Int64?)
      if interval_count.nil?
        return @interval_count = nil
      end
      @interval_count = interval_count
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Stripe::PostAccountRequestMetadata?)
      if metadata.nil?
        return @metadata = nil
      end
      @metadata = metadata
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] nickname Object to be assigned
    def nickname=(nickname : String?)
      if nickname.nil?
        return @nickname = nil
      end
      _nickname = nickname.not_nil!
      if _nickname.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"nickname\", the character length must be smaller than or equal to 5000.")
      end

      @nickname = nickname
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] product Object to be assigned
    def product=(product : Stripe::PostPlansRequestProduct?)
      if product.nil?
        return @product = nil
      end
      @product = product
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tiers Object to be assigned
    def tiers=(tiers : Array(Stripe::Tier)?)
      if tiers.nil?
        return @tiers = nil
      end
      @tiers = tiers
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tiers_mode Object to be assigned
    def tiers_mode=(tiers_mode : String?)
      if tiers_mode.nil?
        return @tiers_mode = nil
      end
      _tiers_mode = tiers_mode.not_nil!
      ENUM_VALIDATOR_FOR_TIERS_MODE.valid!(_tiers_mode)
      @tiers_mode = tiers_mode
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transform_usage Object to be assigned
    def transform_usage=(transform_usage : Stripe::TransformUsageParam?)
      if transform_usage.nil?
        return @transform_usage = nil
      end
      @transform_usage = transform_usage
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] trial_period_days Object to be assigned
    def trial_period_days=(trial_period_days : Int64?)
      if trial_period_days.nil?
        return @trial_period_days = nil
      end
      @trial_period_days = trial_period_days
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] usage_type Object to be assigned
    def usage_type=(usage_type : String?)
      if usage_type.nil?
        return @usage_type = nil
      end
      _usage_type = usage_type.not_nil!
      ENUM_VALIDATOR_FOR_USAGE_TYPE.valid!(_usage_type)
      @usage_type = usage_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@currency, @interval, @active, @aggregate_usage, @amount, @amount_decimal, @billing_scheme, @expand, @id, @interval_count, @metadata, @nickname, @product, @tiers, @tiers_mode, @transform_usage, @trial_period_days, @usage_type)
  end
end
