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
  # A SetupIntent guides you through the process of setting up and saving a customer's payment credentials for future payments. For example, you could use a SetupIntent to set up and save your customer's card without immediately collecting a payment. Later, you can use [PaymentIntents](https://stripe.com/docs/api#payment_intents) to drive the payment flow.  Create a SetupIntent as soon as you're ready to collect your customer's payment credentials. Do not maintain long-lived, unconfirmed SetupIntents as they may no longer be valid. The SetupIntent then transitions through multiple [statuses](https://stripe.com/docs/payments/intents#intent-statuses) as it guides you through the setup process.  Successful SetupIntents result in payment credentials that are optimized for future payments. For example, cardholders in [certain regions](/guides/strong-customer-authentication) may need to be run through [Strong Customer Authentication](https://stripe.com/docs/strong-customer-authentication) at the time of payment method collection in order to streamline later [off-session payments](https://stripe.com/docs/payments/setup-intents). If the SetupIntent is used with a [Customer](https://stripe.com/docs/api#setup_intent_object-customer), upon success, it will automatically attach the resulting payment method to that Customer. We recommend using SetupIntents or [setup_future_usage](https://stripe.com/docs/api#payment_intent_object-setup_future_usage) on PaymentIntents to save payment methods in order to prevent saving invalid or unoptimized payment methods.  By using SetupIntents, you ensure that your customers experience the minimum set of required friction, even as regulations change over time.  Related guide: [Setup Intents API](https://stripe.com/docs/payments/setup-intents).
  class SetupIntent
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

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
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [setup_intent]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("setup_intent")

    # The list of payment method types (e.g. card) that this SetupIntent is allowed to set up.
    @[JSON::Field(key: "payment_method_types", type: Array(String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter payment_method_types : Array(String)? = nil

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

    @[JSON::Field(key: "application", type: Stripe::SetupIntentApplication?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: application.nil? && !application_present?)]
    getter application : Stripe::SetupIntentApplication? = nil

    @[JSON::Field(ignore: true)]
    property? application_present : Bool = false

    # If present, the SetupIntent's payment method will be attached to the in-context Stripe Account.  It can only be used for this Stripe Account’s own money movement flows like InboundTransfer and OutboundTransfers. It cannot be set to true when setting up a PaymentMethod for a Customer, and defaults to false when attaching a PaymentMethod to a Customer.
    @[JSON::Field(key: "attach_to_self", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter attach_to_self : Bool? = nil

    # Reason for cancellation of this SetupIntent, one of `abandoned`, `requested_by_customer`, or `duplicate`.
    @[JSON::Field(key: "cancellation_reason", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: cancellation_reason.nil? && !cancellation_reason_present?)]
    getter cancellation_reason : String? = nil
    ERROR_MESSAGE_FOR_CANCELLATION_REASON = "invalid value for \"cancellation_reason\", must be one of [abandoned, duplicate, requested_by_customer]."
    VALID_VALUES_FOR_CANCELLATION_REASON  = String.static_array("abandoned", "duplicate", "requested_by_customer")

    @[JSON::Field(ignore: true)]
    property? cancellation_reason_present : Bool = false

    # The client secret of this SetupIntent. Used for client-side retrieval using a publishable key.  The client secret can be used to complete payment setup from your frontend. It should not be stored, logged, or exposed to anyone other than the customer. Make sure that you have TLS enabled on any page that includes the client secret.
    @[JSON::Field(key: "client_secret", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: client_secret.nil? && !client_secret_present?)]
    getter client_secret : String? = nil
    MAX_LENGTH_FOR_CLIENT_SECRET = 5000

    @[JSON::Field(ignore: true)]
    property? client_secret_present : Bool = false

    @[JSON::Field(key: "customer", type: Stripe::SetupIntentCustomer?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: customer.nil? && !customer_present?)]
    getter customer : Stripe::SetupIntentCustomer? = nil

    @[JSON::Field(ignore: true)]
    property? customer_present : Bool = false

    # An arbitrary string attached to the object. Often useful for displaying to users.
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 5000

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    # Indicates the directions of money movement for which this payment method is intended to be used.  Include `inbound` if you intend to use the payment method as the origin to pull funds from. Include `outbound` if you intend to use the payment method as the destination to send funds to. You can include both if you intend to use the payment method for both purposes.
    @[JSON::Field(key: "flow_directions", type: Array(String)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: flow_directions.nil? && !flow_directions_present?)]
    getter flow_directions : Array(String)? = nil
    ERROR_MESSAGE_FOR_FLOW_DIRECTIONS = "invalid value for \"flow_directions\", must be one of [inbound, outbound]."
    VALID_VALUES_FOR_FLOW_DIRECTIONS  = String.static_array("inbound", "outbound")

    @[JSON::Field(ignore: true)]
    property? flow_directions_present : Bool = false

    @[JSON::Field(key: "last_setup_error", type: Stripe::SetupIntentLastSetupError?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: last_setup_error.nil? && !last_setup_error_present?)]
    getter last_setup_error : Stripe::SetupIntentLastSetupError? = nil

    @[JSON::Field(ignore: true)]
    property? last_setup_error_present : Bool = false

    @[JSON::Field(key: "latest_attempt", type: Stripe::SetupIntentLatestAttempt?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: latest_attempt.nil? && !latest_attempt_present?)]
    getter latest_attempt : Stripe::SetupIntentLatestAttempt? = nil

    @[JSON::Field(ignore: true)]
    property? latest_attempt_present : Bool = false

    @[JSON::Field(key: "mandate", type: Stripe::SetupIntentMandate?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: mandate.nil? && !mandate_present?)]
    getter mandate : Stripe::SetupIntentMandate? = nil

    @[JSON::Field(ignore: true)]
    property? mandate_present : Bool = false

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    getter metadata : Hash(String, String)? = nil

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    @[JSON::Field(key: "next_action", type: Stripe::SetupIntentNextAction1?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: next_action.nil? && !next_action_present?)]
    getter next_action : Stripe::SetupIntentNextAction1? = nil

    @[JSON::Field(ignore: true)]
    property? next_action_present : Bool = false

    @[JSON::Field(key: "on_behalf_of", type: Stripe::SetupIntentOnBehalfOf?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: on_behalf_of.nil? && !on_behalf_of_present?)]
    getter on_behalf_of : Stripe::SetupIntentOnBehalfOf? = nil

    @[JSON::Field(ignore: true)]
    property? on_behalf_of_present : Bool = false

    @[JSON::Field(key: "payment_method", type: Stripe::SetupIntentPaymentMethod?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: payment_method.nil? && !payment_method_present?)]
    getter payment_method : Stripe::SetupIntentPaymentMethod? = nil

    @[JSON::Field(ignore: true)]
    property? payment_method_present : Bool = false

    @[JSON::Field(key: "payment_method_options", type: Stripe::SetupIntentPaymentMethodOptions1?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: payment_method_options.nil? && !payment_method_options_present?)]
    getter payment_method_options : Stripe::SetupIntentPaymentMethodOptions1? = nil

    @[JSON::Field(ignore: true)]
    property? payment_method_options_present : Bool = false

    @[JSON::Field(key: "single_use_mandate", type: Stripe::SetupIntentSingleUseMandate?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: single_use_mandate.nil? && !single_use_mandate_present?)]
    getter single_use_mandate : Stripe::SetupIntentSingleUseMandate? = nil

    @[JSON::Field(ignore: true)]
    property? single_use_mandate_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @created : Int64? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @object : String? = nil,
      @payment_method_types : Array(String)? = nil,
      @status : String? = nil,
      @usage : String? = nil,
      # Optional properties
      @application : Stripe::SetupIntentApplication? = nil,
      @attach_to_self : Bool? = nil,
      @cancellation_reason : String? = nil,
      @client_secret : String? = nil,
      @customer : Stripe::SetupIntentCustomer? = nil,
      @description : String? = nil,
      @flow_directions : Array(String)? = nil,
      @last_setup_error : Stripe::SetupIntentLastSetupError? = nil,
      @latest_attempt : Stripe::SetupIntentLatestAttempt? = nil,
      @mandate : Stripe::SetupIntentMandate? = nil,
      @metadata : Hash(String, String)? = nil,
      @next_action : Stripe::SetupIntentNextAction1? = nil,
      @on_behalf_of : Stripe::SetupIntentOnBehalfOf? = nil,
      @payment_method : Stripe::SetupIntentPaymentMethod? = nil,
      @payment_method_options : Stripe::SetupIntentPaymentMethodOptions1? = nil,
      @single_use_mandate : Stripe::SetupIntentSingleUseMandate? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

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
      invalid_properties.push("\"payment_method_types\" is required and cannot be null") if @payment_method_types.nil?

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
      unless (_application = @application).nil?
        invalid_properties.concat(_application.list_invalid_properties_for("application")) if _application.is_a?(OpenApi::Validatable)
      end

      unless (_cancellation_reason = @cancellation_reason).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_CANCELLATION_REASON) unless OpenApi::EnumValidator.valid?(_cancellation_reason, VALID_VALUES_FOR_CANCELLATION_REASON)
      end
      unless (_client_secret = @client_secret).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("client_secret", _client_secret.to_s.size, MAX_LENGTH_FOR_CLIENT_SECRET)
          invalid_properties.push(max_length_error)
        end
      end
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
      unless (_last_setup_error = @last_setup_error).nil?
        invalid_properties.concat(_last_setup_error.list_invalid_properties_for("last_setup_error")) if _last_setup_error.is_a?(OpenApi::Validatable)
      end
      unless (_latest_attempt = @latest_attempt).nil?
        invalid_properties.concat(_latest_attempt.list_invalid_properties_for("latest_attempt")) if _latest_attempt.is_a?(OpenApi::Validatable)
      end
      unless (_mandate = @mandate).nil?
        invalid_properties.concat(_mandate.list_invalid_properties_for("mandate")) if _mandate.is_a?(OpenApi::Validatable)
      end

      unless (_next_action = @next_action).nil?
        invalid_properties.concat(_next_action.list_invalid_properties_for("next_action")) if _next_action.is_a?(OpenApi::Validatable)
      end
      unless (_on_behalf_of = @on_behalf_of).nil?
        invalid_properties.concat(_on_behalf_of.list_invalid_properties_for("on_behalf_of")) if _on_behalf_of.is_a?(OpenApi::Validatable)
      end
      unless (_payment_method = @payment_method).nil?
        invalid_properties.concat(_payment_method.list_invalid_properties_for("payment_method")) if _payment_method.is_a?(OpenApi::Validatable)
      end
      unless (_payment_method_options = @payment_method_options).nil?
        invalid_properties.concat(_payment_method_options.list_invalid_properties_for("payment_method_options")) if _payment_method_options.is_a?(OpenApi::Validatable)
      end
      unless (_single_use_mandate = @single_use_mandate).nil?
        invalid_properties.concat(_single_use_mandate.list_invalid_properties_for("single_use_mandate")) if _single_use_mandate.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @created.nil?

      return false if @id.nil?
      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      return false if @livemode.nil?

      return false if @object.nil?
      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      return false if @payment_method_types.nil?

      return false if @status.nil?
      unless (_status = @status).nil?
        return false unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end

      return false if @usage.nil?
      unless (_usage = @usage).nil?
        return false if _usage.to_s.size > MAX_LENGTH_FOR_USAGE
      end

      unless (_application = @application).nil?
        return false if _application.is_a?(OpenApi::Validatable) && !_application.valid?
      end

      unless (_cancellation_reason = @cancellation_reason).nil?
        return false unless OpenApi::EnumValidator.valid?(_cancellation_reason, VALID_VALUES_FOR_CANCELLATION_REASON)
      end

      unless (_client_secret = @client_secret).nil?
        return false if _client_secret.to_s.size > MAX_LENGTH_FOR_CLIENT_SECRET
      end

      unless (_customer = @customer).nil?
        return false if _customer.is_a?(OpenApi::Validatable) && !_customer.valid?
      end

      unless (_description = @description).nil?
        return false if _description.to_s.size > MAX_LENGTH_FOR_DESCRIPTION
      end

      unless (_flow_directions = @flow_directions).nil?
        return false unless OpenApi::EnumValidator.valid?(_flow_directions, VALID_VALUES_FOR_FLOW_DIRECTIONS)
      end

      unless (_last_setup_error = @last_setup_error).nil?
        return false if _last_setup_error.is_a?(OpenApi::Validatable) && !_last_setup_error.valid?
      end

      unless (_latest_attempt = @latest_attempt).nil?
        return false if _latest_attempt.is_a?(OpenApi::Validatable) && !_latest_attempt.valid?
      end

      unless (_mandate = @mandate).nil?
        return false if _mandate.is_a?(OpenApi::Validatable) && !_mandate.valid?
      end

      unless (_next_action = @next_action).nil?
        return false if _next_action.is_a?(OpenApi::Validatable) && !_next_action.valid?
      end

      unless (_on_behalf_of = @on_behalf_of).nil?
        return false if _on_behalf_of.is_a?(OpenApi::Validatable) && !_on_behalf_of.valid?
      end

      unless (_payment_method = @payment_method).nil?
        return false if _payment_method.is_a?(OpenApi::Validatable) && !_payment_method.valid?
      end

      unless (_payment_method_options = @payment_method_options).nil?
        return false if _payment_method_options.is_a?(OpenApi::Validatable) && !_payment_method_options.valid?
      end

      unless (_single_use_mandate = @single_use_mandate).nil?
        return false if _single_use_mandate.is_a?(OpenApi::Validatable) && !_single_use_mandate.valid?
      end

      true
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
    # @param [Object] payment_method_types Object to be assigned
    def payment_method_types=(payment_method_types : Array(String)?)
      if payment_method_types.nil?
        raise ArgumentError.new("\"payment_method_types\" is required and cannot be null")
      end
      _payment_method_types = payment_method_types.not_nil!
      @payment_method_types = _payment_method_types
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status : String?)
      if status.nil?
        raise ArgumentError.new("\"status\" is required and cannot be null")
      end
      _status = status.not_nil!
      OpenApi::EnumValidator.validate("status", _status, VALID_VALUES_FOR_STATUS)
      @status = _status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] usage Object to be assigned
    def usage=(usage : String?)
      if usage.nil?
        raise ArgumentError.new("\"usage\" is required and cannot be null")
      end
      _usage = usage.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("usage", _usage.to_s.size, MAX_LENGTH_FOR_USAGE)
      @usage = _usage
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] application Object to be assigned
    def application=(application : Stripe::SetupIntentApplication?)
      if application.nil?
        return @application = nil
      end
      _application = application.not_nil!
      _application.validate if _application.is_a?(OpenApi::Validatable)
      @application = _application
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] attach_to_self Object to be assigned
    def attach_to_self=(attach_to_self : Bool?)
      if attach_to_self.nil?
        return @attach_to_self = nil
      end
      _attach_to_self = attach_to_self.not_nil!
      @attach_to_self = _attach_to_self
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cancellation_reason Object to be assigned
    def cancellation_reason=(cancellation_reason : String?)
      if cancellation_reason.nil?
        return @cancellation_reason = nil
      end
      _cancellation_reason = cancellation_reason.not_nil!
      OpenApi::EnumValidator.validate("cancellation_reason", _cancellation_reason, VALID_VALUES_FOR_CANCELLATION_REASON)
      @cancellation_reason = _cancellation_reason
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] client_secret Object to be assigned
    def client_secret=(client_secret : String?)
      if client_secret.nil?
        return @client_secret = nil
      end
      _client_secret = client_secret.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("client_secret", _client_secret.to_s.size, MAX_LENGTH_FOR_CLIENT_SECRET)
      @client_secret = _client_secret
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer Object to be assigned
    def customer=(customer : Stripe::SetupIntentCustomer?)
      if customer.nil?
        return @customer = nil
      end
      _customer = customer.not_nil!
      _customer.validate if _customer.is_a?(OpenApi::Validatable)
      @customer = _customer
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] description Object to be assigned
    def description=(description : String?)
      if description.nil?
        return @description = nil
      end
      _description = description.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
      @description = _description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] flow_directions Object to be assigned
    def flow_directions=(flow_directions : Array(String)?)
      if flow_directions.nil?
        return @flow_directions = nil
      end
      _flow_directions = flow_directions.not_nil!
      OpenApi::EnumValidator.validate("flow_directions", _flow_directions, VALID_VALUES_FOR_FLOW_DIRECTIONS)
      @flow_directions = _flow_directions
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last_setup_error Object to be assigned
    def last_setup_error=(last_setup_error : Stripe::SetupIntentLastSetupError?)
      if last_setup_error.nil?
        return @last_setup_error = nil
      end
      _last_setup_error = last_setup_error.not_nil!
      _last_setup_error.validate if _last_setup_error.is_a?(OpenApi::Validatable)
      @last_setup_error = _last_setup_error
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] latest_attempt Object to be assigned
    def latest_attempt=(latest_attempt : Stripe::SetupIntentLatestAttempt?)
      if latest_attempt.nil?
        return @latest_attempt = nil
      end
      _latest_attempt = latest_attempt.not_nil!
      _latest_attempt.validate if _latest_attempt.is_a?(OpenApi::Validatable)
      @latest_attempt = _latest_attempt
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mandate Object to be assigned
    def mandate=(mandate : Stripe::SetupIntentMandate?)
      if mandate.nil?
        return @mandate = nil
      end
      _mandate = mandate.not_nil!
      _mandate.validate if _mandate.is_a?(OpenApi::Validatable)
      @mandate = _mandate
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
    # @param [Object] next_action Object to be assigned
    def next_action=(next_action : Stripe::SetupIntentNextAction1?)
      if next_action.nil?
        return @next_action = nil
      end
      _next_action = next_action.not_nil!
      _next_action.validate if _next_action.is_a?(OpenApi::Validatable)
      @next_action = _next_action
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] on_behalf_of Object to be assigned
    def on_behalf_of=(on_behalf_of : Stripe::SetupIntentOnBehalfOf?)
      if on_behalf_of.nil?
        return @on_behalf_of = nil
      end
      _on_behalf_of = on_behalf_of.not_nil!
      _on_behalf_of.validate if _on_behalf_of.is_a?(OpenApi::Validatable)
      @on_behalf_of = _on_behalf_of
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method Object to be assigned
    def payment_method=(payment_method : Stripe::SetupIntentPaymentMethod?)
      if payment_method.nil?
        return @payment_method = nil
      end
      _payment_method = payment_method.not_nil!
      _payment_method.validate if _payment_method.is_a?(OpenApi::Validatable)
      @payment_method = _payment_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method_options Object to be assigned
    def payment_method_options=(payment_method_options : Stripe::SetupIntentPaymentMethodOptions1?)
      if payment_method_options.nil?
        return @payment_method_options = nil
      end
      _payment_method_options = payment_method_options.not_nil!
      _payment_method_options.validate if _payment_method_options.is_a?(OpenApi::Validatable)
      @payment_method_options = _payment_method_options
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] single_use_mandate Object to be assigned
    def single_use_mandate=(single_use_mandate : Stripe::SetupIntentSingleUseMandate?)
      if single_use_mandate.nil?
        return @single_use_mandate = nil
      end
      _single_use_mandate = single_use_mandate.not_nil!
      _single_use_mandate.validate if _single_use_mandate.is_a?(OpenApi::Validatable)
      @single_use_mandate = _single_use_mandate
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@created, @id, @livemode, @object, @payment_method_types, @status, @usage, @application, @application_present, @attach_to_self, @cancellation_reason, @cancellation_reason_present, @client_secret, @client_secret_present, @customer, @customer_present, @description, @description_present, @flow_directions, @flow_directions_present, @last_setup_error, @last_setup_error_present, @latest_attempt, @latest_attempt_present, @mandate, @mandate_present, @metadata, @metadata_present, @next_action, @next_action_present, @on_behalf_of, @on_behalf_of_present, @payment_method, @payment_method_present, @payment_method_options, @payment_method_options_present, @single_use_mandate, @single_use_mandate_present)
  end
end
