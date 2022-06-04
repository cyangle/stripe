#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  @[JSON::Serializable::Options(emit_nulls: true)]
  class DeleteSubscriptionItemsItemRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped


    # Optional properties

    # Delete all usage for the given subscription item. Allowed only when the current plan's `usage_type` is `metered`.
    @[JSON::Field(key: "clear_usage", type: Bool?, presence: true, ignore_serialize: clear_usage.nil? && !clear_usage_present?)]
    property clear_usage : Bool?

    @[JSON::Field(ignore: true)]
    property? clear_usage_present : Bool = false

    # Determines how to handle [prorations](https://stripe.com/docs/subscriptions/billing-cycle#prorations) when the billing cycle changes (e.g., when switching plans, resetting `billing_cycle_anchor=now`, or starting a trial), or if an item's `quantity` changes. Valid values are `create_prorations`, `none`, or `always_invoice`.  Passing `create_prorations` will cause proration invoice items to be created when applicable. These proration items will only be invoiced immediately under [certain conditions](https://stripe.com/docs/subscriptions/upgrading-downgrading#immediate-payment). In order to always invoice immediately for prorations, pass `always_invoice`.  Prorations can be disabled by passing `none`.
    @[JSON::Field(key: "proration_behavior", type: String?, presence: true, ignore_serialize: proration_behavior.nil? && !proration_behavior_present?)]
    getter proration_behavior : String?

    @[JSON::Field(ignore: true)]
    property? proration_behavior_present : Bool = false

    ENUM_VALIDATOR_FOR_PRORATION_BEHAVIOR = EnumValidator.new("proration_behavior", "String", ["always_invoice", "create_prorations", "none"])

    # If set, the proration will be calculated as though the subscription was updated at the given time. This can be used to apply the same proration that was previewed with the [upcoming invoice](https://stripe.com/docs/api#retrieve_customer_invoice) endpoint.
    @[JSON::Field(key: "proration_date", type: Int64?, presence: true, ignore_serialize: proration_date.nil? && !proration_date_present?)]
    property proration_date : Int64?

    @[JSON::Field(ignore: true)]
    property? proration_date_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Optional properties
      @clear_usage : Bool? = nil, 
      @proration_behavior : String? = nil, 
      @proration_date : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_PRORATION_BEHAVIOR.error_message) unless ENUM_VALIDATOR_FOR_PRORATION_BEHAVIOR.valid?(@proration_behavior)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_PRORATION_BEHAVIOR.valid?(@proration_behavior)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] proration_behavior Object to be assigned
    def proration_behavior=(proration_behavior)
      ENUM_VALIDATOR_FOR_PRORATION_BEHAVIOR.valid!(proration_behavior)
      @proration_behavior = proration_behavior
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
    def_equals_and_hash(@clear_usage, @proration_behavior, @proration_date)
  end
end
