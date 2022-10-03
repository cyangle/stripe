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
  # A subset of parameters to be passed to PaymentIntent creation for Checkout Sessions in `payment` mode.
  class PaymentIntentDataParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "application_fee_amount", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter application_fee_amount : Int64? = nil

    @[JSON::Field(key: "capture_method", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter capture_method : String? = nil
    ERROR_MESSAGE_FOR_CAPTURE_METHOD = "invalid value for \"capture_method\", must be one of [automatic, manual]."
    VALID_VALUES_FOR_CAPTURE_METHOD  = StaticArray["automatic", "manual"]

    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 1000

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    @[JSON::Field(key: "on_behalf_of", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter on_behalf_of : String? = nil

    @[JSON::Field(key: "receipt_email", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter receipt_email : String? = nil

    @[JSON::Field(key: "setup_future_usage", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter setup_future_usage : String? = nil
    ERROR_MESSAGE_FOR_SETUP_FUTURE_USAGE = "invalid value for \"setup_future_usage\", must be one of [off_session, on_session]."
    VALID_VALUES_FOR_SETUP_FUTURE_USAGE  = StaticArray["off_session", "on_session"]

    @[JSON::Field(key: "shipping", type: Stripe::Shipping1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter shipping : Stripe::Shipping1? = nil

    @[JSON::Field(key: "statement_descriptor", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter statement_descriptor : String? = nil
    MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR = 22

    @[JSON::Field(key: "statement_descriptor_suffix", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter statement_descriptor_suffix : String? = nil
    MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_SUFFIX = 22

    @[JSON::Field(key: "transfer_data", type: Stripe::TransferDataParams?, default: nil, required: false, nullable: false, emit_null: false)]
    getter transfer_data : Stripe::TransferDataParams? = nil

    @[JSON::Field(key: "transfer_group", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter transfer_group : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @application_fee_amount : Int64? = nil,
      @capture_method : String? = nil,
      @description : String? = nil,
      @metadata : Hash(String, String)? = nil,
      @on_behalf_of : String? = nil,
      @receipt_email : String? = nil,
      @setup_future_usage : String? = nil,
      @shipping : Stripe::Shipping1? = nil,
      @statement_descriptor : String? = nil,
      @statement_descriptor_suffix : String? = nil,
      @transfer_data : Stripe::TransferDataParams? = nil,
      @transfer_group : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_capture_method = @capture_method).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_CAPTURE_METHOD) unless OpenApi::EnumValidator.valid?(_capture_method, VALID_VALUES_FOR_CAPTURE_METHOD)
      end
      unless (_description = @description).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_setup_future_usage = @setup_future_usage).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_SETUP_FUTURE_USAGE) unless OpenApi::EnumValidator.valid?(_setup_future_usage, VALID_VALUES_FOR_SETUP_FUTURE_USAGE)
      end
      unless (_shipping = @shipping).nil?
        invalid_properties.concat(_shipping.list_invalid_properties_for("shipping")) if _shipping.is_a?(OpenApi::Validatable)
      end
      unless (_statement_descriptor = @statement_descriptor).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor", _statement_descriptor.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_statement_descriptor_suffix = @statement_descriptor_suffix).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor_suffix", _statement_descriptor_suffix.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_SUFFIX)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_transfer_data = @transfer_data).nil?
        invalid_properties.concat(_transfer_data.list_invalid_properties_for("transfer_data")) if _transfer_data.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_capture_method = @capture_method).nil?
        return false unless OpenApi::EnumValidator.valid?(_capture_method, VALID_VALUES_FOR_CAPTURE_METHOD)
      end

      unless (_description = @description).nil?
        return false if _description.to_s.size > MAX_LENGTH_FOR_DESCRIPTION
      end

      unless (_setup_future_usage = @setup_future_usage).nil?
        return false unless OpenApi::EnumValidator.valid?(_setup_future_usage, VALID_VALUES_FOR_SETUP_FUTURE_USAGE)
      end

      unless (_shipping = @shipping).nil?
        return false if _shipping.is_a?(OpenApi::Validatable) && !_shipping.valid?
      end

      unless (_statement_descriptor = @statement_descriptor).nil?
        return false if _statement_descriptor.to_s.size > MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR
      end

      unless (_statement_descriptor_suffix = @statement_descriptor_suffix).nil?
        return false if _statement_descriptor_suffix.to_s.size > MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_SUFFIX
      end

      unless (_transfer_data = @transfer_data).nil?
        return false if _transfer_data.is_a?(OpenApi::Validatable) && !_transfer_data.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] application_fee_amount Object to be assigned
    def application_fee_amount=(application_fee_amount : Int64?)
      if application_fee_amount.nil?
        return @application_fee_amount = nil
      end
      _application_fee_amount = application_fee_amount.not_nil!
      @application_fee_amount = _application_fee_amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] capture_method Object to be assigned
    def capture_method=(capture_method : String?)
      if capture_method.nil?
        return @capture_method = nil
      end
      _capture_method = capture_method.not_nil!
      OpenApi::EnumValidator.validate("capture_method", _capture_method, VALID_VALUES_FOR_CAPTURE_METHOD)
      @capture_method = _capture_method
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
    # @param [Object] receipt_email Object to be assigned
    def receipt_email=(receipt_email : String?)
      if receipt_email.nil?
        return @receipt_email = nil
      end
      _receipt_email = receipt_email.not_nil!
      @receipt_email = _receipt_email
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] setup_future_usage Object to be assigned
    def setup_future_usage=(setup_future_usage : String?)
      if setup_future_usage.nil?
        return @setup_future_usage = nil
      end
      _setup_future_usage = setup_future_usage.not_nil!
      OpenApi::EnumValidator.validate("setup_future_usage", _setup_future_usage, VALID_VALUES_FOR_SETUP_FUTURE_USAGE)
      @setup_future_usage = _setup_future_usage
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping Object to be assigned
    def shipping=(shipping : Stripe::Shipping1?)
      if shipping.nil?
        return @shipping = nil
      end
      _shipping = shipping.not_nil!
      _shipping.validate if _shipping.is_a?(OpenApi::Validatable)
      @shipping = _shipping
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor Object to be assigned
    def statement_descriptor=(statement_descriptor : String?)
      if statement_descriptor.nil?
        return @statement_descriptor = nil
      end
      _statement_descriptor = statement_descriptor.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("statement_descriptor", _statement_descriptor.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR)
      @statement_descriptor = _statement_descriptor
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor_suffix Object to be assigned
    def statement_descriptor_suffix=(statement_descriptor_suffix : String?)
      if statement_descriptor_suffix.nil?
        return @statement_descriptor_suffix = nil
      end
      _statement_descriptor_suffix = statement_descriptor_suffix.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("statement_descriptor_suffix", _statement_descriptor_suffix.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_SUFFIX)
      @statement_descriptor_suffix = _statement_descriptor_suffix
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transfer_data Object to be assigned
    def transfer_data=(transfer_data : Stripe::TransferDataParams?)
      if transfer_data.nil?
        return @transfer_data = nil
      end
      _transfer_data = transfer_data.not_nil!
      _transfer_data.validate if _transfer_data.is_a?(OpenApi::Validatable)
      @transfer_data = _transfer_data
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transfer_group Object to be assigned
    def transfer_group=(transfer_group : String?)
      if transfer_group.nil?
        return @transfer_group = nil
      end
      _transfer_group = transfer_group.not_nil!
      @transfer_group = _transfer_group
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@application_fee_amount, @capture_method, @description, @metadata, @on_behalf_of, @receipt_email, @setup_future_usage, @shipping, @statement_descriptor, @statement_descriptor_suffix, @transfer_data, @transfer_group)
  end
end
