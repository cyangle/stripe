#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./payment_method_data_params"
require "./payment_method_options_param"
require "./post_accounts_request_metadata"

module Stripe
  class PostSetupIntentsIntentRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # If present, the SetupIntent's payment method will be attached to the in-context Stripe Account.  It can only be used for this Stripe Account’s own money movement flows like InboundTransfer and OutboundTransfers. It cannot be set to true when setting up a PaymentMethod for a Customer, and defaults to false when attaching a PaymentMethod to a Customer.
    @[JSON::Field(key: "attach_to_self", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter attach_to_self : Bool? = nil

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

    @[JSON::Field(key: "metadata", type: Stripe::PostAccountsRequestMetadata?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Stripe::PostAccountsRequestMetadata? = nil

    # ID of the payment method (a PaymentMethod, Card, or saved Source object) to attach to this SetupIntent. To unset this field to null, pass in an empty string.
    @[JSON::Field(key: "payment_method", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_method : String? = nil
    MAX_LENGTH_FOR_PAYMENT_METHOD = 5000

    # The ID of the payment method configuration to use with this SetupIntent.
    @[JSON::Field(key: "payment_method_configuration", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_method_configuration : String? = nil
    MAX_LENGTH_FOR_PAYMENT_METHOD_CONFIGURATION = 100

    @[JSON::Field(key: "payment_method_data", type: Stripe::PaymentMethodDataParams?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_method_data : Stripe::PaymentMethodDataParams? = nil

    @[JSON::Field(key: "payment_method_options", type: Stripe::PaymentMethodOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_method_options : Stripe::PaymentMethodOptionsParam? = nil

    # The list of payment method types (for example, card) that this SetupIntent can set up. If you don't provide this array, it defaults to [\"card\"].
    @[JSON::Field(key: "payment_method_types", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_method_types : Array(String)? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @attach_to_self : Bool? = nil,
      @customer : String? = nil,
      @description : String? = nil,
      @expand : Array(String)? = nil,
      @flow_directions : Array(String)? = nil,
      @metadata : Stripe::PostAccountsRequestMetadata? = nil,
      @payment_method : String? = nil,
      @payment_method_configuration : String? = nil,
      @payment_method_data : Stripe::PaymentMethodDataParams? = nil,
      @payment_method_options : Stripe::PaymentMethodOptionsParam? = nil,
      @payment_method_types : Array(String)? = nil
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
      unless (_metadata = @metadata).nil?
        invalid_properties.concat(_metadata.list_invalid_properties_for("metadata")) if _metadata.is_a?(OpenApi::Validatable)
      end
      unless (_payment_method = @payment_method).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("payment_method", _payment_method.to_s.size, MAX_LENGTH_FOR_PAYMENT_METHOD)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_payment_method_configuration = @payment_method_configuration).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("payment_method_configuration", _payment_method_configuration.to_s.size, MAX_LENGTH_FOR_PAYMENT_METHOD_CONFIGURATION)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_payment_method_data = @payment_method_data).nil?
        invalid_properties.concat(_payment_method_data.list_invalid_properties_for("payment_method_data")) if _payment_method_data.is_a?(OpenApi::Validatable)
      end
      unless (_payment_method_options = @payment_method_options).nil?
        invalid_properties.concat(_payment_method_options.list_invalid_properties_for("payment_method_options")) if _payment_method_options.is_a?(OpenApi::Validatable)
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

      unless (_metadata = @metadata).nil?
        return false if _metadata.is_a?(OpenApi::Validatable) && !_metadata.valid?
      end

      unless (_payment_method = @payment_method).nil?
        return false if _payment_method.to_s.size > MAX_LENGTH_FOR_PAYMENT_METHOD
      end

      unless (_payment_method_configuration = @payment_method_configuration).nil?
        return false if _payment_method_configuration.to_s.size > MAX_LENGTH_FOR_PAYMENT_METHOD_CONFIGURATION
      end

      unless (_payment_method_data = @payment_method_data).nil?
        return false if _payment_method_data.is_a?(OpenApi::Validatable) && !_payment_method_data.valid?
      end

      unless (_payment_method_options = @payment_method_options).nil?
        return false if _payment_method_options.is_a?(OpenApi::Validatable) && !_payment_method_options.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] attach_to_self Object to be assigned
    def attach_to_self=(new_value : Bool?)
      @attach_to_self = new_value
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
    # @param [Object] description Object to be assigned
    def description=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("description", new_value.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
      end

      @description = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(new_value : Array(String)?)
      @expand = new_value
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
    # @param [Object] metadata Object to be assigned
    def metadata=(new_value : Stripe::PostAccountsRequestMetadata?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @metadata = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method Object to be assigned
    def payment_method=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("payment_method", new_value.to_s.size, MAX_LENGTH_FOR_PAYMENT_METHOD)
      end

      @payment_method = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method_configuration Object to be assigned
    def payment_method_configuration=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("payment_method_configuration", new_value.to_s.size, MAX_LENGTH_FOR_PAYMENT_METHOD_CONFIGURATION)
      end

      @payment_method_configuration = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method_data Object to be assigned
    def payment_method_data=(new_value : Stripe::PaymentMethodDataParams?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @payment_method_data = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method_options Object to be assigned
    def payment_method_options=(new_value : Stripe::PaymentMethodOptionsParam?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @payment_method_options = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method_types Object to be assigned
    def payment_method_types=(new_value : Array(String)?)
      @payment_method_types = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@attach_to_self, @customer, @description, @expand, @flow_directions, @metadata, @payment_method, @payment_method_configuration, @payment_method_data, @payment_method_options, @payment_method_types)
  end
end
