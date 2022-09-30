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
  class PostSetupIntentsIntentRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    # If present, the SetupIntent's payment method will be attached to the in-context Stripe Account.  It can only be used for this Stripe Account’s own money movement flows like InboundTransfer and OutboundTransfers. It cannot be set to true when setting up a PaymentMethod for a Customer, and defaults to false when attaching a PaymentMethod to a Customer.
    @[JSON::Field(key: "attach_to_self", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter attach_to_self : Bool? = nil

    # ID of the Customer this SetupIntent belongs to, if one exists.  If present, the SetupIntent's payment method will be attached to the Customer on successful setup. Payment methods attached to other Customers cannot be used with this SetupIntent.
    @[JSON::Field(key: "customer", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter customer : String? = nil

    # An arbitrary string attached to the object. Often useful for displaying to users.
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter description : String? = nil

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # Indicates the directions of money movement for which this payment method is intended to be used.  Include `inbound` if you intend to use the payment method as the origin to pull funds from. Include `outbound` if you intend to use the payment method as the destination to send funds to. You can include both if you intend to use the payment method for both purposes.
    @[JSON::Field(key: "flow_directions", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter flow_directions : Array(String)? = nil

    VALID_VALUES_FOR_FLOW_DIRECTIONS = StaticArray["inbound", "outbound"]

    @[JSON::Field(key: "metadata", type: Stripe::PostAccountRequestMetadata?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Stripe::PostAccountRequestMetadata? = nil

    # ID of the payment method (a PaymentMethod, Card, or saved Source object) to attach to this SetupIntent.
    @[JSON::Field(key: "payment_method", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_method : String? = nil

    @[JSON::Field(key: "payment_method_data", type: Stripe::PaymentMethodDataParams1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_method_data : Stripe::PaymentMethodDataParams1? = nil

    @[JSON::Field(key: "payment_method_options", type: Stripe::PaymentMethodOptionsParam22?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_method_options : Stripe::PaymentMethodOptionsParam22? = nil

    # The list of payment method types (e.g. card) that this SetupIntent is allowed to set up. If this is not provided, defaults to [\"card\"].
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
      @metadata : Stripe::PostAccountRequestMetadata? = nil,
      @payment_method : String? = nil,
      @payment_method_data : Stripe::PaymentMethodDataParams1? = nil,
      @payment_method_options : Stripe::PaymentMethodOptionsParam22? = nil,
      @payment_method_types : Array(String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      if _customer = @customer
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("customer", _customer.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _description = @description
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, 1000)
          invalid_properties.push(max_length_error)
        end
      end

      if _flow_directions = @flow_directions
        invalid_properties.push(OpenApi::EnumValidator.error_message("flow_directions", VALID_VALUES_FOR_FLOW_DIRECTIONS)) unless OpenApi::EnumValidator.valid?(_flow_directions, VALID_VALUES_FOR_FLOW_DIRECTIONS)
      end
      if _metadata = @metadata
        invalid_properties.concat(_metadata.list_invalid_properties_for("metadata")) if _metadata.is_a?(OpenApi::Validatable)
      end
      if _payment_method = @payment_method
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("payment_method", _payment_method.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _payment_method_data = @payment_method_data
        invalid_properties.concat(_payment_method_data.list_invalid_properties_for("payment_method_data")) if _payment_method_data.is_a?(OpenApi::Validatable)
      end
      if _payment_method_options = @payment_method_options
        invalid_properties.concat(_payment_method_options.list_invalid_properties_for("payment_method_options")) if _payment_method_options.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _customer = @customer
        return false if _customer.to_s.size > 5000
      end

      if _description = @description
        return false if _description.to_s.size > 1000
      end

      if _flow_directions = @flow_directions
        return false unless OpenApi::EnumValidator.valid?(_flow_directions, VALID_VALUES_FOR_FLOW_DIRECTIONS)
      end

      if _metadata = @metadata
        return false if _metadata.is_a?(OpenApi::Validatable) && !_metadata.valid?
      end

      if _payment_method = @payment_method
        return false if _payment_method.to_s.size > 5000
      end

      if _payment_method_data = @payment_method_data
        return false if _payment_method_data.is_a?(OpenApi::Validatable) && !_payment_method_data.valid?
      end

      if _payment_method_options = @payment_method_options
        return false if _payment_method_options.is_a?(OpenApi::Validatable) && !_payment_method_options.valid?
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
    # @param [Object] customer Object to be assigned
    def customer=(customer : String?)
      if customer.nil?
        return @customer = nil
      end
      _customer = customer.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("customer", _customer.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @customer = _customer
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] description Object to be assigned
    def description=(description : String?)
      if description.nil?
        return @description = nil
      end
      _description = description.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, 1000)
        raise ArgumentError.new(max_length_error)
      end

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
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Stripe::PostAccountRequestMetadata?)
      if metadata.nil?
        return @metadata = nil
      end
      _metadata = metadata.not_nil!
      _metadata.validate if _metadata.is_a?(OpenApi::Validatable)
      @metadata = _metadata
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method Object to be assigned
    def payment_method=(payment_method : String?)
      if payment_method.nil?
        return @payment_method = nil
      end
      _payment_method = payment_method.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("payment_method", _payment_method.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @payment_method = _payment_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method_data Object to be assigned
    def payment_method_data=(payment_method_data : Stripe::PaymentMethodDataParams1?)
      if payment_method_data.nil?
        return @payment_method_data = nil
      end
      _payment_method_data = payment_method_data.not_nil!
      _payment_method_data.validate if _payment_method_data.is_a?(OpenApi::Validatable)
      @payment_method_data = _payment_method_data
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method_options Object to be assigned
    def payment_method_options=(payment_method_options : Stripe::PaymentMethodOptionsParam22?)
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

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@attach_to_self, @customer, @description, @expand, @flow_directions, @metadata, @payment_method, @payment_method_data, @payment_method_options, @payment_method_types)
  end
end
