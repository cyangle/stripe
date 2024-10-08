#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./setup_intent_application"
require "./setup_intent_automatic_payment_methods"
require "./setup_intent_customer"
require "./setup_intent_last_setup_error"
require "./setup_intent_latest_attempt"
require "./setup_intent_mandate"
require "./setup_intent_next_action1"
require "./setup_intent_on_behalf_of"
require "./setup_intent_payment_method"
require "./setup_intent_payment_method_configuration_details"
require "./setup_intent_payment_method_options1"
require "./setup_intent_single_use_mandate"

module Stripe
  # A SetupIntent guides you through the process of setting up and saving a customer's payment credentials for future payments. For example, you can use a SetupIntent to set up and save your customer's card without immediately collecting a payment. Later, you can use [PaymentIntents](https://stripe.com/docs/api#payment_intents) to drive the payment flow.  Create a SetupIntent when you're ready to collect your customer's payment credentials. Don't maintain long-lived, unconfirmed SetupIntents because they might not be valid. The SetupIntent transitions through multiple [statuses](https://docs.stripe.com/payments/intents#intent-statuses) as it guides you through the setup process.  Successful SetupIntents result in payment credentials that are optimized for future payments. For example, cardholders in [certain regions](https://stripe.com/guides/strong-customer-authentication) might need to be run through [Strong Customer Authentication](https://docs.stripe.com/strong-customer-authentication) during payment method collection to streamline later [off-session payments](https://docs.stripe.com/payments/setup-intents). If you use the SetupIntent with a [Customer](https://stripe.com/docs/api#setup_intent_object-customer), it automatically attaches the resulting payment method to that Customer after successful setup. We recommend using SetupIntents or [setup_future_usage](https://stripe.com/docs/api#payment_intent_object-setup_future_usage) on PaymentIntents to save payment methods to prevent saving invalid or unoptimized payment methods.  By using SetupIntents, you can reduce friction for your customers, even as regulations change over time.  Related guide: [Setup Intents API](https://docs.stripe.com/payments/setup-intents)
  class SetupIntent
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "application", type: Stripe::SetupIntentApplication?, default: nil, required: true, nullable: true, emit_null: true)]
    getter application : Stripe::SetupIntentApplication? = nil

    @[JSON::Field(key: "automatic_payment_methods", type: Stripe::SetupIntentAutomaticPaymentMethods?, default: nil, required: true, nullable: true, emit_null: true)]
    getter automatic_payment_methods : Stripe::SetupIntentAutomaticPaymentMethods? = nil

    # Reason for cancellation of this SetupIntent, one of `abandoned`, `requested_by_customer`, or `duplicate`.
    @[JSON::Field(key: "cancellation_reason", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter cancellation_reason : String? = nil
    ERROR_MESSAGE_FOR_CANCELLATION_REASON = "invalid value for \"cancellation_reason\", must be one of [abandoned, duplicate, requested_by_customer]."
    VALID_VALUES_FOR_CANCELLATION_REASON  = String.static_array("abandoned", "duplicate", "requested_by_customer")

    # The client secret of this SetupIntent. Used for client-side retrieval using a publishable key.  The client secret can be used to complete payment setup from your frontend. It should not be stored, logged, or exposed to anyone other than the customer. Make sure that you have TLS enabled on any page that includes the client secret.
    @[JSON::Field(key: "client_secret", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter client_secret : String? = nil
    MAX_LENGTH_FOR_CLIENT_SECRET = 5000

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    @[JSON::Field(key: "customer", type: Stripe::SetupIntentCustomer?, default: nil, required: true, nullable: true, emit_null: true)]
    getter customer : Stripe::SetupIntentCustomer? = nil

    # An arbitrary string attached to the object. Often useful for displaying to users.
    @[JSON::Field(key: "description", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 5000

    # Indicates the directions of money movement for which this payment method is intended to be used.  Include `inbound` if you intend to use the payment method as the origin to pull funds from. Include `outbound` if you intend to use the payment method as the destination to send funds to. You can include both if you intend to use the payment method for both purposes.
    @[JSON::Field(key: "flow_directions", type: Array(String)?, default: nil, required: true, nullable: true, emit_null: true)]
    getter flow_directions : Array(String)? = nil
    ERROR_MESSAGE_FOR_FLOW_DIRECTIONS = "invalid value for \"flow_directions\", must be one of [inbound, outbound]."
    VALID_VALUES_FOR_FLOW_DIRECTIONS  = String.static_array("inbound", "outbound")

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    @[JSON::Field(key: "last_setup_error", type: Stripe::SetupIntentLastSetupError?, default: nil, required: true, nullable: true, emit_null: true)]
    getter last_setup_error : Stripe::SetupIntentLastSetupError? = nil

    @[JSON::Field(key: "latest_attempt", type: Stripe::SetupIntentLatestAttempt?, default: nil, required: true, nullable: true, emit_null: true)]
    getter latest_attempt : Stripe::SetupIntentLatestAttempt? = nil

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    @[JSON::Field(key: "mandate", type: Stripe::SetupIntentMandate?, default: nil, required: true, nullable: true, emit_null: true)]
    getter mandate : Stripe::SetupIntentMandate? = nil

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: true, nullable: true, emit_null: true)]
    getter metadata : Hash(String, String)? = nil

    @[JSON::Field(key: "next_action", type: Stripe::SetupIntentNextAction1?, default: nil, required: true, nullable: true, emit_null: true)]
    getter next_action : Stripe::SetupIntentNextAction1? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [setup_intent]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("setup_intent")

    @[JSON::Field(key: "on_behalf_of", type: Stripe::SetupIntentOnBehalfOf?, default: nil, required: true, nullable: true, emit_null: true)]
    getter on_behalf_of : Stripe::SetupIntentOnBehalfOf? = nil

    @[JSON::Field(key: "payment_method", type: Stripe::SetupIntentPaymentMethod?, default: nil, required: true, nullable: true, emit_null: true)]
    getter payment_method : Stripe::SetupIntentPaymentMethod? = nil

    @[JSON::Field(key: "payment_method_configuration_details", type: Stripe::SetupIntentPaymentMethodConfigurationDetails?, default: nil, required: true, nullable: true, emit_null: true)]
    getter payment_method_configuration_details : Stripe::SetupIntentPaymentMethodConfigurationDetails? = nil

    @[JSON::Field(key: "payment_method_options", type: Stripe::SetupIntentPaymentMethodOptions1?, default: nil, required: true, nullable: true, emit_null: true)]
    getter payment_method_options : Stripe::SetupIntentPaymentMethodOptions1? = nil

    # The list of payment method types (e.g. card) that this SetupIntent is allowed to set up.
    @[JSON::Field(key: "payment_method_types", type: Array(String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter payment_method_types : Array(String)? = nil

    @[JSON::Field(key: "single_use_mandate", type: Stripe::SetupIntentSingleUseMandate?, default: nil, required: true, nullable: true, emit_null: true)]
    getter single_use_mandate : Stripe::SetupIntentSingleUseMandate? = nil

    # [Status](https://stripe.com/docs/payments/intents#intent-statuses) of this SetupIntent, one of `requires_payment_method`, `requires_confirmation`, `requires_action`, `processing`, `canceled`, or `succeeded`.
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil
    ERROR_MESSAGE_FOR_STATUS = "invalid value for \"status\", must be one of [canceled, processing, requires_action, requires_confirmation, requires_payment_method, succeeded]."
    VALID_VALUES_FOR_STATUS  = String.static_array("canceled", "processing", "requires_action", "requires_confirmation", "requires_payment_method", "succeeded")

    # Indicates how the payment method is intended to be used in the future.  Use `on_session` if you intend to only reuse the payment method when the customer is in your checkout flow. Use `off_session` if your customer may or may not be in your checkout flow. If not provided, this value defaults to `off_session`.
    @[JSON::Field(key: "usage", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter usage : String? = nil
    MAX_LENGTH_FOR_USAGE = 5000

    # End of Required Properties

    # Optional Properties

    # If present, the SetupIntent's payment method will be attached to the in-context Stripe Account.  It can only be used for this Stripe Account’s own money movement flows like InboundTransfer and OutboundTransfers. It cannot be set to true when setting up a PaymentMethod for a Customer, and defaults to false when attaching a PaymentMethod to a Customer.
    @[JSON::Field(key: "attach_to_self", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter attach_to_self : Bool? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @application : Stripe::SetupIntentApplication? = nil,
      @automatic_payment_methods : Stripe::SetupIntentAutomaticPaymentMethods? = nil,
      @cancellation_reason : String? = nil,
      @client_secret : String? = nil,
      @created : Int64? = nil,
      @customer : Stripe::SetupIntentCustomer? = nil,
      @description : String? = nil,
      @flow_directions : Array(String)? = nil,
      @id : String? = nil,
      @last_setup_error : Stripe::SetupIntentLastSetupError? = nil,
      @latest_attempt : Stripe::SetupIntentLatestAttempt? = nil,
      @livemode : Bool? = nil,
      @mandate : Stripe::SetupIntentMandate? = nil,
      @metadata : Hash(String, String)? = nil,
      @next_action : Stripe::SetupIntentNextAction1? = nil,
      @object : String? = nil,
      @on_behalf_of : Stripe::SetupIntentOnBehalfOf? = nil,
      @payment_method : Stripe::SetupIntentPaymentMethod? = nil,
      @payment_method_configuration_details : Stripe::SetupIntentPaymentMethodConfigurationDetails? = nil,
      @payment_method_options : Stripe::SetupIntentPaymentMethodOptions1? = nil,
      @payment_method_types : Array(String)? = nil,
      @single_use_mandate : Stripe::SetupIntentSingleUseMandate? = nil,
      @status : String? = nil,
      @usage : String? = nil,
      # Optional properties
      @attach_to_self : Bool? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_application = @application).nil?
        invalid_properties.concat(_application.list_invalid_properties_for("application")) if _application.is_a?(OpenApi::Validatable)
      end
      unless (_automatic_payment_methods = @automatic_payment_methods).nil?
        invalid_properties.concat(_automatic_payment_methods.list_invalid_properties_for("automatic_payment_methods")) if _automatic_payment_methods.is_a?(OpenApi::Validatable)
      end
      unless (_cancellation_reason = @cancellation_reason).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_CANCELLATION_REASON) unless OpenApi::EnumValidator.valid?(_cancellation_reason, VALID_VALUES_FOR_CANCELLATION_REASON)
      end
      unless (_client_secret = @client_secret).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("client_secret", _client_secret.to_s.size, MAX_LENGTH_FOR_CLIENT_SECRET)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      unless (_customer = @customer).nil?
        invalid_properties.concat(_customer.list_invalid_properties_for("customer")) if _customer.is_a?(OpenApi::Validatable)
      end
      unless (_description = @description).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_flow_directions = @flow_directions).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_FLOW_DIRECTIONS) unless OpenApi::EnumValidator.valid?(_flow_directions, VALID_VALUES_FOR_FLOW_DIRECTIONS)
      end
      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_last_setup_error = @last_setup_error).nil?
        invalid_properties.concat(_last_setup_error.list_invalid_properties_for("last_setup_error")) if _last_setup_error.is_a?(OpenApi::Validatable)
      end
      unless (_latest_attempt = @latest_attempt).nil?
        invalid_properties.concat(_latest_attempt.list_invalid_properties_for("latest_attempt")) if _latest_attempt.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      unless (_mandate = @mandate).nil?
        invalid_properties.concat(_mandate.list_invalid_properties_for("mandate")) if _mandate.is_a?(OpenApi::Validatable)
      end

      unless (_next_action = @next_action).nil?
        invalid_properties.concat(_next_action.list_invalid_properties_for("next_action")) if _next_action.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      unless (_object = @object).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      unless (_on_behalf_of = @on_behalf_of).nil?
        invalid_properties.concat(_on_behalf_of.list_invalid_properties_for("on_behalf_of")) if _on_behalf_of.is_a?(OpenApi::Validatable)
      end
      unless (_payment_method = @payment_method).nil?
        invalid_properties.concat(_payment_method.list_invalid_properties_for("payment_method")) if _payment_method.is_a?(OpenApi::Validatable)
      end
      unless (_payment_method_configuration_details = @payment_method_configuration_details).nil?
        invalid_properties.concat(_payment_method_configuration_details.list_invalid_properties_for("payment_method_configuration_details")) if _payment_method_configuration_details.is_a?(OpenApi::Validatable)
      end
      unless (_payment_method_options = @payment_method_options).nil?
        invalid_properties.concat(_payment_method_options.list_invalid_properties_for("payment_method_options")) if _payment_method_options.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"payment_method_types\" is required and cannot be null") if @payment_method_types.nil?

      unless (_single_use_mandate = @single_use_mandate).nil?
        invalid_properties.concat(_single_use_mandate.list_invalid_properties_for("single_use_mandate")) if _single_use_mandate.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"status\" is required and cannot be null") if @status.nil?

      unless (_status = @status).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_STATUS) unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end
      invalid_properties.push("\"usage\" is required and cannot be null") if @usage.nil?

      unless (_usage = @usage).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("usage", _usage.to_s.size, MAX_LENGTH_FOR_USAGE)
          invalid_properties.push(max_length_error)
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_application = @application).nil?
        return false if _application.is_a?(OpenApi::Validatable) && !_application.valid?
      end

      unless (_automatic_payment_methods = @automatic_payment_methods).nil?
        return false if _automatic_payment_methods.is_a?(OpenApi::Validatable) && !_automatic_payment_methods.valid?
      end

      unless (_cancellation_reason = @cancellation_reason).nil?
        return false unless OpenApi::EnumValidator.valid?(_cancellation_reason, VALID_VALUES_FOR_CANCELLATION_REASON)
      end

      unless (_client_secret = @client_secret).nil?
        return false if _client_secret.to_s.size > MAX_LENGTH_FOR_CLIENT_SECRET
      end

      return false if @created.nil?

      unless (_customer = @customer).nil?
        return false if _customer.is_a?(OpenApi::Validatable) && !_customer.valid?
      end

      unless (_description = @description).nil?
        return false if _description.to_s.size > MAX_LENGTH_FOR_DESCRIPTION
      end

      unless (_flow_directions = @flow_directions).nil?
        return false unless OpenApi::EnumValidator.valid?(_flow_directions, VALID_VALUES_FOR_FLOW_DIRECTIONS)
      end

      return false if @id.nil?
      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      unless (_last_setup_error = @last_setup_error).nil?
        return false if _last_setup_error.is_a?(OpenApi::Validatable) && !_last_setup_error.valid?
      end

      unless (_latest_attempt = @latest_attempt).nil?
        return false if _latest_attempt.is_a?(OpenApi::Validatable) && !_latest_attempt.valid?
      end

      return false if @livemode.nil?

      unless (_mandate = @mandate).nil?
        return false if _mandate.is_a?(OpenApi::Validatable) && !_mandate.valid?
      end

      unless (_next_action = @next_action).nil?
        return false if _next_action.is_a?(OpenApi::Validatable) && !_next_action.valid?
      end

      return false if @object.nil?
      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      unless (_on_behalf_of = @on_behalf_of).nil?
        return false if _on_behalf_of.is_a?(OpenApi::Validatable) && !_on_behalf_of.valid?
      end

      unless (_payment_method = @payment_method).nil?
        return false if _payment_method.is_a?(OpenApi::Validatable) && !_payment_method.valid?
      end

      unless (_payment_method_configuration_details = @payment_method_configuration_details).nil?
        return false if _payment_method_configuration_details.is_a?(OpenApi::Validatable) && !_payment_method_configuration_details.valid?
      end

      unless (_payment_method_options = @payment_method_options).nil?
        return false if _payment_method_options.is_a?(OpenApi::Validatable) && !_payment_method_options.valid?
      end

      return false if @payment_method_types.nil?

      unless (_single_use_mandate = @single_use_mandate).nil?
        return false if _single_use_mandate.is_a?(OpenApi::Validatable) && !_single_use_mandate.valid?
      end

      return false if @status.nil?
      unless (_status = @status).nil?
        return false unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end

      return false if @usage.nil?
      unless (_usage = @usage).nil?
        return false if _usage.to_s.size > MAX_LENGTH_FOR_USAGE
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] application Object to be assigned
    def application=(new_value : Stripe::SetupIntentApplication?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @application = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] automatic_payment_methods Object to be assigned
    def automatic_payment_methods=(new_value : Stripe::SetupIntentAutomaticPaymentMethods?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @automatic_payment_methods = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cancellation_reason Object to be assigned
    def cancellation_reason=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("cancellation_reason", new_value, VALID_VALUES_FOR_CANCELLATION_REASON)
      end

      @cancellation_reason = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] client_secret Object to be assigned
    def client_secret=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("client_secret", new_value.to_s.size, MAX_LENGTH_FOR_CLIENT_SECRET)
      end

      @client_secret = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] created Object to be assigned
    def created=(new_value : Int64?)
      raise ArgumentError.new("\"created\" is required and cannot be null") if new_value.nil?

      @created = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer Object to be assigned
    def customer=(new_value : Stripe::SetupIntentCustomer?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @customer = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] description Object to be assigned
    def description=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("description", new_value.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
      end

      @description = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] flow_directions Object to be assigned
    def flow_directions=(new_value : Array(String)?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("flow_directions", new_value, VALID_VALUES_FOR_FLOW_DIRECTIONS)
      end

      @flow_directions = new_value
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
    # @param [Object] last_setup_error Object to be assigned
    def last_setup_error=(new_value : Stripe::SetupIntentLastSetupError?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @last_setup_error = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] latest_attempt Object to be assigned
    def latest_attempt=(new_value : Stripe::SetupIntentLatestAttempt?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @latest_attempt = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] livemode Object to be assigned
    def livemode=(new_value : Bool?)
      raise ArgumentError.new("\"livemode\" is required and cannot be null") if new_value.nil?

      @livemode = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mandate Object to be assigned
    def mandate=(new_value : Stripe::SetupIntentMandate?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @mandate = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(new_value : Hash(String, String)?)
      @metadata = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] next_action Object to be assigned
    def next_action=(new_value : Stripe::SetupIntentNextAction1?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @next_action = new_value
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
    # @param [Object] on_behalf_of Object to be assigned
    def on_behalf_of=(new_value : Stripe::SetupIntentOnBehalfOf?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @on_behalf_of = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method Object to be assigned
    def payment_method=(new_value : Stripe::SetupIntentPaymentMethod?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @payment_method = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method_configuration_details Object to be assigned
    def payment_method_configuration_details=(new_value : Stripe::SetupIntentPaymentMethodConfigurationDetails?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @payment_method_configuration_details = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method_options Object to be assigned
    def payment_method_options=(new_value : Stripe::SetupIntentPaymentMethodOptions1?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @payment_method_options = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method_types Object to be assigned
    def payment_method_types=(new_value : Array(String)?)
      raise ArgumentError.new("\"payment_method_types\" is required and cannot be null") if new_value.nil?

      @payment_method_types = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] single_use_mandate Object to be assigned
    def single_use_mandate=(new_value : Stripe::SetupIntentSingleUseMandate?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @single_use_mandate = new_value
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
    # @param [Object] usage Object to be assigned
    def usage=(new_value : String?)
      raise ArgumentError.new("\"usage\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("usage", new_value.to_s.size, MAX_LENGTH_FOR_USAGE)
      end

      @usage = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] attach_to_self Object to be assigned
    def attach_to_self=(new_value : Bool?)
      @attach_to_self = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@application, @automatic_payment_methods, @cancellation_reason, @client_secret, @created, @customer, @description, @flow_directions, @id, @last_setup_error, @latest_attempt, @livemode, @mandate, @metadata, @next_action, @object, @on_behalf_of, @payment_method, @payment_method_configuration_details, @payment_method_options, @payment_method_types, @single_use_mandate, @status, @usage, @attach_to_self)
  end
end
