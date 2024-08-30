#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./deleted_plan"
require "./plan"
require "./plan_product"
require "./plan_tier"
require "./transform_usage"

module Stripe
  # ID of the plan to which the customer should be subscribed.
  class SubscriptionScheduleConfigurationItemPlan
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Always true for a deleted object
    @[JSON::Field(key: "deleted", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    property deleted : Bool? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [plan]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("plan")

    # Whether the plan can be used for new purchases.
    @[JSON::Field(key: "active", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    property active : Bool? = nil

    # Specifies a usage aggregation strategy for plans of `usage_type=metered`. Allowed values are `sum` for summing up all usage during a period, `last_during_period` for using the last usage record reported within a period, `last_ever` for using the last usage record ever (across period bounds) or `max` which uses the usage record with the maximum reported usage during a period. Defaults to `sum`.
    @[JSON::Field(key: "aggregate_usage", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property aggregate_usage : String? = nil
    ERROR_MESSAGE_FOR_AGGREGATE_USAGE = "invalid value for \"aggregate_usage\", must be one of [last_during_period, last_ever, max, sum]."
    VALID_VALUES_FOR_AGGREGATE_USAGE  = String.static_array("last_during_period", "last_ever", "max", "sum")

    # The unit amount in cents (or local equivalent) to be charged, represented as a whole integer if possible. Only set if `billing_scheme=per_unit`.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    property amount : Int64? = nil

    # The unit amount in cents (or local equivalent) to be charged, represented as a decimal string with at most 12 decimal places. Only set if `billing_scheme=per_unit`.
    @[JSON::Field(key: "amount_decimal", type: BigDecimal?, default: nil, required: true, nullable: true, emit_null: true)]
    property amount_decimal : BigDecimal? = nil

    # Describes how to compute the price per period. Either `per_unit` or `tiered`. `per_unit` indicates that the fixed amount (specified in `amount`) will be charged per unit in `quantity` (for plans with `usage_type=licensed`), or per unit of total usage (for plans with `usage_type=metered`). `tiered` indicates that the unit pricing will be computed using a tiering strategy as defined using the `tiers` and `tiers_mode` attributes.
    @[JSON::Field(key: "billing_scheme", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property billing_scheme : String? = nil
    ERROR_MESSAGE_FOR_BILLING_SCHEME = "invalid value for \"billing_scheme\", must be one of [per_unit, tiered]."
    VALID_VALUES_FOR_BILLING_SCHEME  = String.static_array("per_unit", "tiered")

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property created : Int64? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property currency : String? = nil

    # The frequency at which a subscription is billed. One of `day`, `week`, `month` or `year`.
    @[JSON::Field(key: "interval", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property interval : String? = nil
    ERROR_MESSAGE_FOR_INTERVAL = "invalid value for \"interval\", must be one of [day, month, week, year]."
    VALID_VALUES_FOR_INTERVAL  = String.static_array("day", "month", "week", "year")

    # The number of intervals (specified in the `interval` attribute) between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months.
    @[JSON::Field(key: "interval_count", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property interval_count : Int64? = nil

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    property livemode : Bool? = nil

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: true, nullable: true, emit_null: true)]
    property metadata : Hash(String, String)? = nil

    # The meter tracking the usage of a metered price
    @[JSON::Field(key: "meter", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property meter : String? = nil
    MAX_LENGTH_FOR_METER = 5000

    # A brief description of the plan, hidden from customers.
    @[JSON::Field(key: "nickname", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property nickname : String? = nil
    MAX_LENGTH_FOR_NICKNAME = 5000

    @[JSON::Field(key: "product", type: Stripe::PlanProduct?, default: nil, required: true, nullable: true, emit_null: true)]
    property product : Stripe::PlanProduct? = nil

    # Defines if the tiering price should be `graduated` or `volume` based. In `volume`-based tiering, the maximum quantity within a period determines the per unit price. In `graduated` tiering, pricing can change as the quantity grows.
    @[JSON::Field(key: "tiers_mode", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property tiers_mode : String? = nil
    ERROR_MESSAGE_FOR_TIERS_MODE = "invalid value for \"tiers_mode\", must be one of [graduated, volume]."
    VALID_VALUES_FOR_TIERS_MODE  = String.static_array("graduated", "volume")

    @[JSON::Field(key: "transform_usage", type: Stripe::TransformUsage?, default: nil, required: true, nullable: false, emit_null: false)]
    property transform_usage : Stripe::TransformUsage? = nil

    # Default number of trial days when subscribing a customer to this plan using [`trial_from_plan=true`](https://stripe.com/docs/api#create_subscription-trial_from_plan).
    @[JSON::Field(key: "trial_period_days", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    property trial_period_days : Int64? = nil

    # Configures how the quantity per period should be determined. Can be either `metered` or `licensed`. `licensed` automatically bills the `quantity` set when adding it to a subscription. `metered` aggregates the total usage based on usage records. Defaults to `licensed`.
    @[JSON::Field(key: "usage_type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property usage_type : String? = nil
    ERROR_MESSAGE_FOR_USAGE_TYPE = "invalid value for \"usage_type\", must be one of [licensed, metered]."
    VALID_VALUES_FOR_USAGE_TYPE  = String.static_array("licensed", "metered")

    # End of Required Properties

    # Optional Properties

    # Each element represents a pricing tier. This parameter requires `billing_scheme` to be set to `tiered`. See also the documentation for `billing_scheme`.
    @[JSON::Field(key: "tiers", type: Array(Stripe::PlanTier)?, default: nil, required: false, nullable: false, emit_null: false)]
    property tiers : Array(Stripe::PlanTier)? = nil

    # List of class defined in anyOf (OpenAPI v3)
    def self.openapi_any_of
      [
        Stripe::DeletedPlan,
        Stripe::Plan,
        String,
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @deleted : Bool? = nil,
      @id : String? = nil,
      @object : String? = nil,
      @active : Bool? = nil,
      @aggregate_usage : String? = nil,
      @amount : Int64? = nil,
      @amount_decimal : BigDecimal? = nil,
      @billing_scheme : String? = nil,
      @created : Int64? = nil,
      @currency : String? = nil,
      @interval : String? = nil,
      @interval_count : Int64? = nil,
      @livemode : Bool? = nil,
      @metadata : Hash(String, String)? = nil,
      @meter : String? = nil,
      @nickname : String? = nil,
      @product : Stripe::PlanProduct? = nil,
      @tiers_mode : String? = nil,
      @transform_usage : Stripe::TransformUsage? = nil,
      @trial_period_days : Int64? = nil,
      @usage_type : String? = nil,
      # Optional properties
      @tiers : Array(Stripe::PlanTier)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      _any_of_found = false
      json_string : String = self.to_json
      _any_of_found = self.class.openapi_any_of.any? do |_class|
        _any_of = begin
          _class.from_json(json_string)
        rescue
          nil
        end

        !_any_of.nil? && _any_of.not_nil!.valid?
      end
      return false if !_any_of_found

      true
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@deleted, @id, @object, @active, @aggregate_usage, @amount, @amount_decimal, @billing_scheme, @created, @currency, @interval, @interval_count, @livemode, @metadata, @meter, @nickname, @product, @tiers_mode, @transform_usage, @trial_period_days, @usage_type, @tiers)
  end
end
