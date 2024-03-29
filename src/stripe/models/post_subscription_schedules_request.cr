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
  class PostSubscriptionSchedulesRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The identifier of the customer to create the subscription schedule for.
    @[JSON::Field(key: "customer", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter customer : String? = nil
    MAX_LENGTH_FOR_CUSTOMER = 5000

    @[JSON::Field(key: "default_settings", type: Stripe::DefaultSettingsParams?, default: nil, required: false, nullable: false, emit_null: false)]
    getter default_settings : Stripe::DefaultSettingsParams? = nil

    # Configures how the subscription schedule behaves when it ends. Possible values are `release` or `cancel` with the default being `release`. `release` will end the subscription schedule and keep the underlying subscription running.`cancel` will end the subscription schedule and cancel the underlying subscription.
    @[JSON::Field(key: "end_behavior", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter end_behavior : String? = nil
    ERROR_MESSAGE_FOR_END_BEHAVIOR = "invalid value for \"end_behavior\", must be one of [cancel, none, release, renew]."
    VALID_VALUES_FOR_END_BEHAVIOR  = String.static_array("cancel", "none", "release", "renew")

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # Migrate an existing subscription to be managed by a subscription schedule. If this parameter is set, a subscription schedule will be created using the subscription's item(s), set to auto-renew using the subscription's interval. When using this parameter, other parameters (such as phase values) cannot be set. To create a subscription schedule with other modifications, we recommend making two separate API calls.
    @[JSON::Field(key: "from_subscription", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter from_subscription : String? = nil
    MAX_LENGTH_FOR_FROM_SUBSCRIPTION = 5000

    @[JSON::Field(key: "metadata", type: Stripe::PostAccountsRequestMetadata?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Stripe::PostAccountsRequestMetadata? = nil

    # List representing phases of the subscription schedule. Each phase can be customized to have different durations, plans, and coupons. If there are multiple phases, the `end_date` of one phase will always equal the `start_date` of the next phase.
    @[JSON::Field(key: "phases", type: Array(Stripe::PhaseConfigurationParams)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter phases : Array(Stripe::PhaseConfigurationParams)? = nil

    @[JSON::Field(key: "start_date", type: Stripe::PostSubscriptionSchedulesRequestStartDate?, default: nil, required: false, nullable: false, emit_null: false)]
    getter start_date : Stripe::PostSubscriptionSchedulesRequestStartDate? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @customer : String? = nil,
      @default_settings : Stripe::DefaultSettingsParams? = nil,
      @end_behavior : String? = nil,
      @expand : Array(String)? = nil,
      @from_subscription : String? = nil,
      @metadata : Stripe::PostAccountsRequestMetadata? = nil,
      @phases : Array(Stripe::PhaseConfigurationParams)? = nil,
      @start_date : Stripe::PostSubscriptionSchedulesRequestStartDate? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_customer = @customer).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("customer", _customer.to_s.size, MAX_LENGTH_FOR_CUSTOMER)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_default_settings = @default_settings).nil?
        invalid_properties.concat(_default_settings.list_invalid_properties_for("default_settings")) if _default_settings.is_a?(OpenApi::Validatable)
      end
      unless (_end_behavior = @end_behavior).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_END_BEHAVIOR) unless OpenApi::EnumValidator.valid?(_end_behavior, VALID_VALUES_FOR_END_BEHAVIOR)
      end

      unless (_from_subscription = @from_subscription).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("from_subscription", _from_subscription.to_s.size, MAX_LENGTH_FOR_FROM_SUBSCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_metadata = @metadata).nil?
        invalid_properties.concat(_metadata.list_invalid_properties_for("metadata")) if _metadata.is_a?(OpenApi::Validatable)
      end
      unless (_phases = @phases).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "phases", container: _phases)) if _phases.is_a?(Array)
      end
      unless (_start_date = @start_date).nil?
        invalid_properties.concat(_start_date.list_invalid_properties_for("start_date")) if _start_date.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_customer = @customer).nil?
        return false if _customer.to_s.size > MAX_LENGTH_FOR_CUSTOMER
      end

      unless (_default_settings = @default_settings).nil?
        return false if _default_settings.is_a?(OpenApi::Validatable) && !_default_settings.valid?
      end

      unless (_end_behavior = @end_behavior).nil?
        return false unless OpenApi::EnumValidator.valid?(_end_behavior, VALID_VALUES_FOR_END_BEHAVIOR)
      end

      unless (_from_subscription = @from_subscription).nil?
        return false if _from_subscription.to_s.size > MAX_LENGTH_FOR_FROM_SUBSCRIPTION
      end

      unless (_metadata = @metadata).nil?
        return false if _metadata.is_a?(OpenApi::Validatable) && !_metadata.valid?
      end

      unless (_phases = @phases).nil?
        return false if _phases.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _phases)
      end

      unless (_start_date = @start_date).nil?
        return false if _start_date.is_a?(OpenApi::Validatable) && !_start_date.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer Object to be assigned
    def customer=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("customer", new_value.to_s.size, MAX_LENGTH_FOR_CUSTOMER)
      end

      @customer = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_settings Object to be assigned
    def default_settings=(new_value : Stripe::DefaultSettingsParams?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @default_settings = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] end_behavior Object to be assigned
    def end_behavior=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("end_behavior", new_value, VALID_VALUES_FOR_END_BEHAVIOR)
      end

      @end_behavior = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(new_value : Array(String)?)
      @expand = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] from_subscription Object to be assigned
    def from_subscription=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("from_subscription", new_value.to_s.size, MAX_LENGTH_FOR_FROM_SUBSCRIPTION)
      end

      @from_subscription = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(new_value : Stripe::PostAccountsRequestMetadata?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @metadata = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] phases Object to be assigned
    def phases=(new_value : Array(Stripe::PhaseConfigurationParams)?)
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @phases = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] start_date Object to be assigned
    def start_date=(new_value : Stripe::PostSubscriptionSchedulesRequestStartDate?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @start_date = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@customer, @default_settings, @end_behavior, @expand, @from_subscription, @metadata, @phases, @start_date)
  end
end
