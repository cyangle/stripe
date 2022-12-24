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
  # A subscription schedule allows you to create and manage the lifecycle of a subscription by predefining expected changes.  Related guide: [Subscription Schedules](https://stripe.com/docs/billing/subscriptions/subscription-schedules).
  class SubscriptionSchedule
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    @[JSON::Field(key: "customer", type: Stripe::SubscriptionScheduleCustomer?, default: nil, required: true, nullable: false, emit_null: false)]
    getter customer : Stripe::SubscriptionScheduleCustomer? = nil

    @[JSON::Field(key: "default_settings", type: Stripe::SubscriptionSchedulesResourceDefaultSettings?, default: nil, required: true, nullable: false, emit_null: false)]
    getter default_settings : Stripe::SubscriptionSchedulesResourceDefaultSettings? = nil

    # Behavior of the subscription schedule and underlying subscription when it ends. Possible values are `release` and `cancel`.
    @[JSON::Field(key: "end_behavior", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter end_behavior : String? = nil
    ERROR_MESSAGE_FOR_END_BEHAVIOR = "invalid value for \"end_behavior\", must be one of [cancel, none, release, renew]."
    VALID_VALUES_FOR_END_BEHAVIOR  = String.static_array("cancel", "none", "release", "renew")

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [subscription_schedule]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("subscription_schedule")

    # Configuration for the subscription schedule's phases.
    @[JSON::Field(key: "phases", type: Array(Stripe::SubscriptionSchedulePhaseConfiguration)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter phases : Array(Stripe::SubscriptionSchedulePhaseConfiguration)? = nil

    # The present status of the subscription schedule. Possible values are `not_started`, `active`, `completed`, `released`, and `canceled`. You can read more about the different states in our [behavior guide](https://stripe.com/docs/billing/subscriptions/subscription-schedules).
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil
    ERROR_MESSAGE_FOR_STATUS = "invalid value for \"status\", must be one of [active, canceled, completed, not_started, released]."
    VALID_VALUES_FOR_STATUS  = String.static_array("active", "canceled", "completed", "not_started", "released")

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "application", type: Stripe::SubscriptionScheduleApplication?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: application.nil? && !application_present?)]
    getter application : Stripe::SubscriptionScheduleApplication? = nil

    @[JSON::Field(ignore: true)]
    property? application_present : Bool = false

    # Time at which the subscription schedule was canceled. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "canceled_at", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: canceled_at.nil? && !canceled_at_present?)]
    getter canceled_at : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? canceled_at_present : Bool = false

    # Time at which the subscription schedule was completed. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "completed_at", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: completed_at.nil? && !completed_at_present?)]
    getter completed_at : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? completed_at_present : Bool = false

    @[JSON::Field(key: "current_phase", type: Stripe::SubscriptionScheduleCurrentPhase1?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: current_phase.nil? && !current_phase_present?)]
    getter current_phase : Stripe::SubscriptionScheduleCurrentPhase1? = nil

    @[JSON::Field(ignore: true)]
    property? current_phase_present : Bool = false

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    getter metadata : Hash(String, String)? = nil

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    # Time at which the subscription schedule was released. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "released_at", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: released_at.nil? && !released_at_present?)]
    getter released_at : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? released_at_present : Bool = false

    # ID of the subscription once managed by the subscription schedule (if it is released).
    @[JSON::Field(key: "released_subscription", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: released_subscription.nil? && !released_subscription_present?)]
    getter released_subscription : String? = nil
    MAX_LENGTH_FOR_RELEASED_SUBSCRIPTION = 5000

    @[JSON::Field(ignore: true)]
    property? released_subscription_present : Bool = false

    @[JSON::Field(key: "subscription", type: Stripe::SubscriptionScheduleSubscription?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: subscription.nil? && !subscription_present?)]
    getter subscription : Stripe::SubscriptionScheduleSubscription? = nil

    @[JSON::Field(ignore: true)]
    property? subscription_present : Bool = false

    @[JSON::Field(key: "test_clock", type: Stripe::SubscriptionScheduleTestClock?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: test_clock.nil? && !test_clock_present?)]
    getter test_clock : Stripe::SubscriptionScheduleTestClock? = nil

    @[JSON::Field(ignore: true)]
    property? test_clock_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @created : Int64? = nil,
      @customer : Stripe::SubscriptionScheduleCustomer? = nil,
      @default_settings : Stripe::SubscriptionSchedulesResourceDefaultSettings? = nil,
      @end_behavior : String? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @object : String? = nil,
      @phases : Array(Stripe::SubscriptionSchedulePhaseConfiguration)? = nil,
      @status : String? = nil,
      # Optional properties
      @application : Stripe::SubscriptionScheduleApplication? = nil,
      @canceled_at : Int64? = nil,
      @completed_at : Int64? = nil,
      @current_phase : Stripe::SubscriptionScheduleCurrentPhase1? = nil,
      @metadata : Hash(String, String)? = nil,
      @released_at : Int64? = nil,
      @released_subscription : String? = nil,
      @subscription : Stripe::SubscriptionScheduleSubscription? = nil,
      @test_clock : Stripe::SubscriptionScheduleTestClock? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      invalid_properties.push("\"customer\" is required and cannot be null") if @customer.nil?

      unless (_customer = @customer).nil?
        invalid_properties.concat(_customer.list_invalid_properties_for("customer")) if _customer.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"default_settings\" is required and cannot be null") if @default_settings.nil?

      unless (_default_settings = @default_settings).nil?
        invalid_properties.concat(_default_settings.list_invalid_properties_for("default_settings")) if _default_settings.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"end_behavior\" is required and cannot be null") if @end_behavior.nil?

      unless (_end_behavior = @end_behavior).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_END_BEHAVIOR) unless OpenApi::EnumValidator.valid?(_end_behavior, VALID_VALUES_FOR_END_BEHAVIOR)
      end
      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      unless (_object = @object).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      invalid_properties.push("\"phases\" is required and cannot be null") if @phases.nil?

      unless (_phases = @phases).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "phases", container: _phases)) if _phases.is_a?(Array)
      end
      invalid_properties.push("\"status\" is required and cannot be null") if @status.nil?

      unless (_status = @status).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_STATUS) unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end
      unless (_application = @application).nil?
        invalid_properties.concat(_application.list_invalid_properties_for("application")) if _application.is_a?(OpenApi::Validatable)
      end

      unless (_current_phase = @current_phase).nil?
        invalid_properties.concat(_current_phase.list_invalid_properties_for("current_phase")) if _current_phase.is_a?(OpenApi::Validatable)
      end

      unless (_released_subscription = @released_subscription).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("released_subscription", _released_subscription.to_s.size, MAX_LENGTH_FOR_RELEASED_SUBSCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_subscription = @subscription).nil?
        invalid_properties.concat(_subscription.list_invalid_properties_for("subscription")) if _subscription.is_a?(OpenApi::Validatable)
      end
      unless (_test_clock = @test_clock).nil?
        invalid_properties.concat(_test_clock.list_invalid_properties_for("test_clock")) if _test_clock.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @created.nil?

      return false if @customer.nil?
      unless (_customer = @customer).nil?
        return false if _customer.is_a?(OpenApi::Validatable) && !_customer.valid?
      end

      return false if @default_settings.nil?
      unless (_default_settings = @default_settings).nil?
        return false if _default_settings.is_a?(OpenApi::Validatable) && !_default_settings.valid?
      end

      return false if @end_behavior.nil?
      unless (_end_behavior = @end_behavior).nil?
        return false unless OpenApi::EnumValidator.valid?(_end_behavior, VALID_VALUES_FOR_END_BEHAVIOR)
      end

      return false if @id.nil?
      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      return false if @livemode.nil?

      return false if @object.nil?
      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      return false if @phases.nil?
      unless (_phases = @phases).nil?
        return false if _phases.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _phases)
      end

      return false if @status.nil?
      unless (_status = @status).nil?
        return false unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end

      unless (_application = @application).nil?
        return false if _application.is_a?(OpenApi::Validatable) && !_application.valid?
      end

      unless (_current_phase = @current_phase).nil?
        return false if _current_phase.is_a?(OpenApi::Validatable) && !_current_phase.valid?
      end

      unless (_released_subscription = @released_subscription).nil?
        return false if _released_subscription.to_s.size > MAX_LENGTH_FOR_RELEASED_SUBSCRIPTION
      end

      unless (_subscription = @subscription).nil?
        return false if _subscription.is_a?(OpenApi::Validatable) && !_subscription.valid?
      end

      unless (_test_clock = @test_clock).nil?
        return false if _test_clock.is_a?(OpenApi::Validatable) && !_test_clock.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] created Object to be assigned
    def created=(new_value : Int64?)
      raise ArgumentError.new("\"created\" is required and cannot be null") if new_value.nil?

      @created = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer Object to be assigned
    def customer=(new_value : Stripe::SubscriptionScheduleCustomer?)
      raise ArgumentError.new("\"customer\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @customer = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_settings Object to be assigned
    def default_settings=(new_value : Stripe::SubscriptionSchedulesResourceDefaultSettings?)
      raise ArgumentError.new("\"default_settings\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @default_settings = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] end_behavior Object to be assigned
    def end_behavior=(new_value : String?)
      raise ArgumentError.new("\"end_behavior\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("end_behavior", new_value, VALID_VALUES_FOR_END_BEHAVIOR)
      end

      @end_behavior = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(new_value : String?)
      raise ArgumentError.new("\"id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("id", new_value.to_s.size, MAX_LENGTH_FOR_ID)
      end

      @id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] livemode Object to be assigned
    def livemode=(new_value : Bool?)
      raise ArgumentError.new("\"livemode\" is required and cannot be null") if new_value.nil?

      @livemode = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(new_value : String?)
      raise ArgumentError.new("\"object\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("object", new_value, VALID_VALUES_FOR_OBJECT)
      end

      @object = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] phases Object to be assigned
    def phases=(new_value : Array(Stripe::SubscriptionSchedulePhaseConfiguration)?)
      raise ArgumentError.new("\"phases\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @phases = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(new_value : String?)
      raise ArgumentError.new("\"status\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("status", new_value, VALID_VALUES_FOR_STATUS)
      end

      @status = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] application Object to be assigned
    def application=(new_value : Stripe::SubscriptionScheduleApplication?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @application = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] canceled_at Object to be assigned
    def canceled_at=(new_value : Int64?)
      @canceled_at = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] completed_at Object to be assigned
    def completed_at=(new_value : Int64?)
      @completed_at = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] current_phase Object to be assigned
    def current_phase=(new_value : Stripe::SubscriptionScheduleCurrentPhase1?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @current_phase = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(new_value : Hash(String, String)?)
      @metadata = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] released_at Object to be assigned
    def released_at=(new_value : Int64?)
      @released_at = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] released_subscription Object to be assigned
    def released_subscription=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("released_subscription", new_value.to_s.size, MAX_LENGTH_FOR_RELEASED_SUBSCRIPTION)
      end

      @released_subscription = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subscription Object to be assigned
    def subscription=(new_value : Stripe::SubscriptionScheduleSubscription?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @subscription = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] test_clock Object to be assigned
    def test_clock=(new_value : Stripe::SubscriptionScheduleTestClock?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @test_clock = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@created, @customer, @default_settings, @end_behavior, @id, @livemode, @object, @phases, @status, @application, @application_present, @canceled_at, @canceled_at_present, @completed_at, @completed_at_present, @current_phase, @current_phase_present, @metadata, @metadata_present, @released_at, @released_at_present, @released_subscription, @released_subscription_present, @subscription, @subscription_present, @test_clock, @test_clock_present)
  end
end
