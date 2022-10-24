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
  class PostSetupIntentsRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # If present, the SetupIntent's payment method will be attached to the in-context Stripe Account.  It can only be used for this Stripe Account’s own money movement flows like InboundTransfer and OutboundTransfers. It cannot be set to true when setting up a PaymentMethod for a Customer, and defaults to false when attaching a PaymentMethod to a Customer.
    @[JSON::Field(key: "attach_to_self", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter attach_to_self : Bool? = nil

    # Set to `true` to attempt to confirm this SetupIntent immediately. This parameter defaults to `false`. If the payment method attached is a card, a return_url may be provided in case additional authentication is required.
    @[JSON::Field(key: "confirm", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter confirm : Bool? = nil

    # ID of the Customer this SetupIntent belongs to, if one exists.  If present, the SetupIntent's payment method will be attached to the Customer on successful setup. Payment methods attached to other Customers cannot be used with this SetupIntent.
    @[JSON::Field(key: "customer", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter customer : String? = nil
    MAX_LENGTH_FOR_CUSTOMER = 5000

    # An arbitrary string attached to the object. Often useful for displaying to users.
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 1000

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # Indicates the directions of money movement for which this payment method is intended to be used.  Include `inbound` if you intend to use the payment method as the origin to pull funds from. Include `outbound` if you intend to use the payment method as the destination to send funds to. You can include both if you intend to use the payment method for both purposes.
    @[JSON::Field(key: "flow_directions", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter flow_directions : Array(String)? = nil
    ERROR_MESSAGE_FOR_FLOW_DIRECTIONS = "invalid value for \"flow_directions\", must be one of [inbound, outbound]."
    VALID_VALUES_FOR_FLOW_DIRECTIONS  = String.static_array("inbound", "outbound")

    @[JSON::Field(key: "mandate_data", type: Stripe::SecretKeyParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter mandate_data : Stripe::SecretKeyParam? = nil

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # The Stripe account ID for which this SetupIntent is created.
    @[JSON::Field(key: "on_behalf_of", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter on_behalf_of : String? = nil

    # ID of the payment method (a PaymentMethod, Card, or saved Source object) to attach to this SetupIntent.
    @[JSON::Field(key: "payment_method", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_method : String? = nil
    MAX_LENGTH_FOR_PAYMENT_METHOD = 5000

    @[JSON::Field(key: "payment_method_data", type: Stripe::PaymentMethodDataParams?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_method_data : Stripe::PaymentMethodDataParams? = nil

    @[JSON::Field(key: "payment_method_options", type: Stripe::PaymentMethodOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_method_options : Stripe::PaymentMethodOptionsParam? = nil

    # The list of payment method types (e.g. card) that this SetupIntent is allowed to use. If this is not provided, defaults to [\"card\"].
    @[JSON::Field(key: "payment_method_types", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_method_types : Array(String)? = nil

    # The URL to redirect your customer back to after they authenticate or cancel their payment on the payment method's app or site. If you'd prefer to redirect to a mobile application, you can alternatively supply an application URI scheme. This parameter can only be used with [`confirm=true`](https://stripe.com/docs/api/setup_intents/create#create_setup_intent-confirm).
    @[JSON::Field(key: "return_url", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter return_url : String? = nil

    @[JSON::Field(key: "single_use", type: Stripe::SetupIntentSingleUseParams?, default: nil, required: false, nullable: false, emit_null: false)]
    getter single_use : Stripe::SetupIntentSingleUseParams? = nil

    # Indicates how the payment method is intended to be used in the future. If not provided, this value defaults to `off_session`.
    @[JSON::Field(key: "usage", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter usage : String? = nil
    ERROR_MESSAGE_FOR_USAGE = "invalid value for \"usage\", must be one of [off_session, on_session]."
    VALID_VALUES_FOR_USAGE  = String.static_array("off_session", "on_session")

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @attach_to_self : Bool? = nil,
      @confirm : Bool? = nil,
      @customer : String? = nil,
      @description : String? = nil,
      @expand : Array(String)? = nil,
      @flow_directions : Array(String)? = nil,
      @mandate_data : Stripe::SecretKeyParam? = nil,
      @metadata : Hash(String, String)? = nil,
      @on_behalf_of : String? = nil,
      @payment_method : String? = nil,
      @payment_method_data : Stripe::PaymentMethodDataParams? = nil,
      @payment_method_options : Stripe::PaymentMethodOptionsParam? = nil,
      @payment_method_types : Array(String)? = nil,
      @return_url : String? = nil,
      @single_use : Stripe::SetupIntentSingleUseParams? = nil,
      @usage : String? = nil
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
      unless (_description = @description).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_flow_directions = @flow_directions).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_FLOW_DIRECTIONS) unless OpenApi::EnumValidator.valid?(_flow_directions, VALID_VALUES_FOR_FLOW_DIRECTIONS)
      end
      unless (_mandate_data = @mandate_data).nil?
        invalid_properties.concat(_mandate_data.list_invalid_properties_for("mandate_data")) if _mandate_data.is_a?(OpenApi::Validatable)
      end

      unless (_payment_method = @payment_method).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("payment_method", _payment_method.to_s.size, MAX_LENGTH_FOR_PAYMENT_METHOD)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_payment_method_data = @payment_method_data).nil?
        invalid_properties.concat(_payment_method_data.list_invalid_properties_for("payment_method_data")) if _payment_method_data.is_a?(OpenApi::Validatable)
      end
      unless (_payment_method_options = @payment_method_options).nil?
        invalid_properties.concat(_payment_method_options.list_invalid_properties_for("payment_method_options")) if _payment_method_options.is_a?(OpenApi::Validatable)
      end

      unless (_single_use = @single_use).nil?
        invalid_properties.concat(_single_use.list_invalid_properties_for("single_use")) if _single_use.is_a?(OpenApi::Validatable)
      end
      unless (_usage = @usage).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_USAGE) unless OpenApi::EnumValidator.valid?(_usage, VALID_VALUES_FOR_USAGE)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_customer = @customer).nil?
        return false if _customer.to_s.size > MAX_LENGTH_FOR_CUSTOMER
      end

      unless (_description = @description).nil?
        return false if _description.to_s.size > MAX_LENGTH_FOR_DESCRIPTION
      end

      unless (_flow_directions = @flow_directions).nil?
        return false unless OpenApi::EnumValidator.valid?(_flow_directions, VALID_VALUES_FOR_FLOW_DIRECTIONS)
      end

      unless (_mandate_data = @mandate_data).nil?
        return false if _mandate_data.is_a?(OpenApi::Validatable) && !_mandate_data.valid?
      end

      unless (_payment_method = @payment_method).nil?
        return false if _payment_method.to_s.size > MAX_LENGTH_FOR_PAYMENT_METHOD
      end

      unless (_payment_method_data = @payment_method_data).nil?
        return false if _payment_method_data.is_a?(OpenApi::Validatable) && !_payment_method_data.valid?
      end

      unless (_payment_method_options = @payment_method_options).nil?
        return false if _payment_method_options.is_a?(OpenApi::Validatable) && !_payment_method_options.valid?
      end

      unless (_single_use = @single_use).nil?
        return false if _single_use.is_a?(OpenApi::Validatable) && !_single_use.valid?
      end

      unless (_usage = @usage).nil?
        return false unless OpenApi::EnumValidator.valid?(_usage, VALID_VALUES_FOR_USAGE)
      end

      true
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
    # @param [Object] confirm Object to be assigned
    def confirm=(confirm : Bool?)
      if confirm.nil?
        return @confirm = nil
      end
      _confirm = confirm.not_nil!
      @confirm = _confirm
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer Object to be assigned
    def customer=(customer : String?)
      if customer.nil?
        return @customer = nil
      end
      _customer = customer.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("customer", _customer.to_s.size, MAX_LENGTH_FOR_CUSTOMER)
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
    # @param [Object] expand Object to be assigned
    def expand=(expand : Array(String)?)
      if expand.nil?
        return @expand = nil
      end
      _expand = expand.not_nil!
      @expand = _expand
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
    # @param [Object] mandate_data Object to be assigned
    def mandate_data=(mandate_data : Stripe::SecretKeyParam?)
      if mandate_data.nil?
        return @mandate_data = nil
      end
      _mandate_data = mandate_data.not_nil!
      _mandate_data.validate if _mandate_data.is_a?(OpenApi::Validatable)
      @mandate_data = _mandate_data
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
    # @param [Object] on_behalf_of Object to be assigned
    def on_behalf_of=(on_behalf_of : String?)
      if on_behalf_of.nil?
        return @on_behalf_of = nil
      end
      _on_behalf_of = on_behalf_of.not_nil!
      @on_behalf_of = _on_behalf_of
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method Object to be assigned
    def payment_method=(payment_method : String?)
      if payment_method.nil?
        return @payment_method = nil
      end
      _payment_method = payment_method.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("payment_method", _payment_method.to_s.size, MAX_LENGTH_FOR_PAYMENT_METHOD)
      @payment_method = _payment_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method_data Object to be assigned
    def payment_method_data=(payment_method_data : Stripe::PaymentMethodDataParams?)
      if payment_method_data.nil?
        return @payment_method_data = nil
      end
      _payment_method_data = payment_method_data.not_nil!
      _payment_method_data.validate if _payment_method_data.is_a?(OpenApi::Validatable)
      @payment_method_data = _payment_method_data
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method_options Object to be assigned
    def payment_method_options=(payment_method_options : Stripe::PaymentMethodOptionsParam?)
      if payment_method_options.nil?
        return @payment_method_options = nil
      end
      _payment_method_options = payment_method_options.not_nil!
      _payment_method_options.validate if _payment_method_options.is_a?(OpenApi::Validatable)
      @payment_method_options = _payment_method_options
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method_types Object to be assigned
    def payment_method_types=(payment_method_types : Array(String)?)
      if payment_method_types.nil?
        return @payment_method_types = nil
      end
      _payment_method_types = payment_method_types.not_nil!
      @payment_method_types = _payment_method_types
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] return_url Object to be assigned
    def return_url=(return_url : String?)
      if return_url.nil?
        return @return_url = nil
      end
      _return_url = return_url.not_nil!
      @return_url = _return_url
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] single_use Object to be assigned
    def single_use=(single_use : Stripe::SetupIntentSingleUseParams?)
      if single_use.nil?
        return @single_use = nil
      end
      _single_use = single_use.not_nil!
      _single_use.validate if _single_use.is_a?(OpenApi::Validatable)
      @single_use = _single_use
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] usage Object to be assigned
    def usage=(usage : String?)
      if usage.nil?
        return @usage = nil
      end
      _usage = usage.not_nil!
      OpenApi::EnumValidator.validate("usage", _usage, VALID_VALUES_FOR_USAGE)
      @usage = _usage
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@attach_to_self, @confirm, @customer, @description, @expand, @flow_directions, @mandate_data, @metadata, @on_behalf_of, @payment_method, @payment_method_data, @payment_method_options, @payment_method_types, @return_url, @single_use, @usage)
  end
end
