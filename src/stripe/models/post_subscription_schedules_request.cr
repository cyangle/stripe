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
  class PostSubscriptionSchedulesRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # The identifier of the customer to create the subscription schedule for.
    @[JSON::Field(key: "customer", type: String?, presence: true, ignore_serialize: customer.nil? && !customer_present?)]
    getter customer : String?

    @[JSON::Field(ignore: true)]
    property? customer_present : Bool = false

    @[JSON::Field(key: "default_settings", type: DefaultSettingsParams?, presence: true, ignore_serialize: default_settings.nil? && !default_settings_present?)]
    property default_settings : DefaultSettingsParams?

    @[JSON::Field(ignore: true)]
    property? default_settings_present : Bool = false

    # Configures how the subscription schedule behaves when it ends. Possible values are `release` or `cancel` with the default being `release`. `release` will end the subscription schedule and keep the underlying subscription running.`cancel` will end the subscription schedule and cancel the underlying subscription.
    @[JSON::Field(key: "end_behavior", type: String?, presence: true, ignore_serialize: end_behavior.nil? && !end_behavior_present?)]
    getter end_behavior : String?

    @[JSON::Field(ignore: true)]
    property? end_behavior_present : Bool = false

    ENUM_VALIDATOR_FOR_END_BEHAVIOR = EnumValidator.new("end_behavior", "String", ["cancel", "none", "release", "renew"])

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, presence: true, ignore_serialize: expand.nil? && !expand_present?)]
    property expand : Array(String)?

    @[JSON::Field(ignore: true)]
    property? expand_present : Bool = false

    # Migrate an existing subscription to be managed by a subscription schedule. If this parameter is set, a subscription schedule will be created using the subscription's item(s), set to auto-renew using the subscription's interval. When using this parameter, other parameters (such as phase values) cannot be set. To create a subscription schedule with other modifications, we recommend making two separate API calls.
    @[JSON::Field(key: "from_subscription", type: String?, presence: true, ignore_serialize: from_subscription.nil? && !from_subscription_present?)]
    getter from_subscription : String?

    @[JSON::Field(ignore: true)]
    property? from_subscription_present : Bool = false

    @[JSON::Field(key: "metadata", type: PostAccountRequestMetadata?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : PostAccountRequestMetadata?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    # List representing phases of the subscription schedule. Each phase can be customized to have different durations, plans, and coupons. If there are multiple phases, the `end_date` of one phase will always equal the `start_date` of the next phase.
    @[JSON::Field(key: "phases", type: Array(PhaseConfigurationParams)?, presence: true, ignore_serialize: phases.nil? && !phases_present?)]
    property phases : Array(PhaseConfigurationParams)?

    @[JSON::Field(ignore: true)]
    property? phases_present : Bool = false

    @[JSON::Field(key: "start_date", type: PostSubscriptionSchedulesRequestStartDate?, presence: true, ignore_serialize: start_date.nil? && !start_date_present?)]
    property start_date : PostSubscriptionSchedulesRequestStartDate?

    @[JSON::Field(ignore: true)]
    property? start_date_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @customer : String? = nil,
      @default_settings : DefaultSettingsParams? = nil,
      @end_behavior : String? = nil,
      @expand : Array(String)? = nil,
      @from_subscription : String? = nil,
      @metadata : PostAccountRequestMetadata? = nil,
      @phases : Array(PhaseConfigurationParams)? = nil,
      @start_date : PostSubscriptionSchedulesRequestStartDate? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@customer.nil? && @customer.to_s.size > 5000
        invalid_properties.push("invalid value for \"customer\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_END_BEHAVIOR.error_message) unless ENUM_VALIDATOR_FOR_END_BEHAVIOR.valid?(@end_behavior)

      if !@from_subscription.nil? && @from_subscription.to_s.size > 5000
        invalid_properties.push("invalid value for \"from_subscription\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@customer.nil? && @customer.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_END_BEHAVIOR.valid?(@end_behavior)
      return false if !@from_subscription.nil? && @from_subscription.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] customer Value to be assigned
    def customer=(customer : String?)
      if !customer.nil? && customer.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"customer\", the character length must be smaller than or equal to 5000.")
      end

      @customer = customer
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] end_behavior Object to be assigned
    def end_behavior=(end_behavior : String?)
      ENUM_VALIDATOR_FOR_END_BEHAVIOR.valid!(end_behavior)
      @end_behavior = end_behavior
    end

    # Custom attribute writer method with validation
    # @param [Object] from_subscription Value to be assigned
    def from_subscription=(from_subscription : String?)
      if !from_subscription.nil? && from_subscription.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"from_subscription\", the character length must be smaller than or equal to 5000.")
      end

      @from_subscription = from_subscription
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
    def_equals_and_hash(@customer, @customer_present, @default_settings, @default_settings_present, @end_behavior, @end_behavior_present, @expand, @expand_present, @from_subscription, @from_subscription_present, @metadata, @metadata_present, @phases, @phases_present, @start_date, @start_date_present)
  end
end
