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
  # A Mandate is a record of the permission a customer has given you to debit their payment method.
  class Mandate
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "customer_acceptance", type: Stripe::CustomerAcceptance?, default: nil, required: true, nullable: false, emit_null: false)]
    getter customer_acceptance : Stripe::CustomerAcceptance? = nil

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
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [mandate]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("mandate")

    @[JSON::Field(key: "payment_method", type: Stripe::MandatePaymentMethod?, default: nil, required: true, nullable: false, emit_null: false)]
    getter payment_method : Stripe::MandatePaymentMethod? = nil

    @[JSON::Field(key: "payment_method_details", type: Stripe::MandatePaymentMethodDetails?, default: nil, required: true, nullable: false, emit_null: false)]
    getter payment_method_details : Stripe::MandatePaymentMethodDetails? = nil

    # The status of the mandate, which indicates whether it can be used to initiate a payment.
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil
    ERROR_MESSAGE_FOR_STATUS = "invalid value for \"status\", must be one of [active, inactive, pending]."
    VALID_VALUES_FOR_STATUS  = String.static_array("active", "inactive", "pending")

    # The type of the mandate.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [multi_use, single_use]."
    VALID_VALUES_FOR__TYPE  = String.static_array("multi_use", "single_use")

    # End of Required Properties

    # Optional Properties

    #
    @[JSON::Field(key: "multi_use", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter multi_use : JSON::Any? = nil

    @[JSON::Field(key: "single_use", type: Stripe::MandateSingleUse?, default: nil, required: false, nullable: false, emit_null: false)]
    getter single_use : Stripe::MandateSingleUse? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @customer_acceptance : Stripe::CustomerAcceptance? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @object : String? = nil,
      @payment_method : Stripe::MandatePaymentMethod? = nil,
      @payment_method_details : Stripe::MandatePaymentMethodDetails? = nil,
      @status : String? = nil,
      @_type : String? = nil,
      # Optional properties
      @multi_use : JSON::Any? = nil,
      @single_use : Stripe::MandateSingleUse? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"customer_acceptance\" is required and cannot be null") if @customer_acceptance.nil?

      unless (_customer_acceptance = @customer_acceptance).nil?
        invalid_properties.concat(_customer_acceptance.list_invalid_properties_for("customer_acceptance")) if _customer_acceptance.is_a?(OpenApi::Validatable)
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
      invalid_properties.push("\"payment_method\" is required and cannot be null") if @payment_method.nil?

      unless (_payment_method = @payment_method).nil?
        invalid_properties.concat(_payment_method.list_invalid_properties_for("payment_method")) if _payment_method.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"payment_method_details\" is required and cannot be null") if @payment_method_details.nil?

      unless (_payment_method_details = @payment_method_details).nil?
        invalid_properties.concat(_payment_method_details.list_invalid_properties_for("payment_method_details")) if _payment_method_details.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"status\" is required and cannot be null") if @status.nil?

      unless (_status = @status).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_STATUS) unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end
      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?

      unless (__type = @_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR__TYPE) unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end

      unless (_single_use = @single_use).nil?
        invalid_properties.concat(_single_use.list_invalid_properties_for("single_use")) if _single_use.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @customer_acceptance.nil?
      unless (_customer_acceptance = @customer_acceptance).nil?
        return false if _customer_acceptance.is_a?(OpenApi::Validatable) && !_customer_acceptance.valid?
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

      return false if @payment_method.nil?
      unless (_payment_method = @payment_method).nil?
        return false if _payment_method.is_a?(OpenApi::Validatable) && !_payment_method.valid?
      end

      return false if @payment_method_details.nil?
      unless (_payment_method_details = @payment_method_details).nil?
        return false if _payment_method_details.is_a?(OpenApi::Validatable) && !_payment_method_details.valid?
      end

      return false if @status.nil?
      unless (_status = @status).nil?
        return false unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end

      return false if @_type.nil?
      unless (__type = @_type).nil?
        return false unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end

      unless (_single_use = @single_use).nil?
        return false if _single_use.is_a?(OpenApi::Validatable) && !_single_use.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer_acceptance Object to be assigned
    def customer_acceptance=(customer_acceptance : Stripe::CustomerAcceptance?)
      if customer_acceptance.nil?
        raise ArgumentError.new("\"customer_acceptance\" is required and cannot be null")
      end
      _customer_acceptance = customer_acceptance.not_nil!
      _customer_acceptance.validate if _customer_acceptance.is_a?(OpenApi::Validatable)
      @customer_acceptance = _customer_acceptance
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
    # @param [Object] payment_method Object to be assigned
    def payment_method=(payment_method : Stripe::MandatePaymentMethod?)
      if payment_method.nil?
        raise ArgumentError.new("\"payment_method\" is required and cannot be null")
      end
      _payment_method = payment_method.not_nil!
      _payment_method.validate if _payment_method.is_a?(OpenApi::Validatable)
      @payment_method = _payment_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method_details Object to be assigned
    def payment_method_details=(payment_method_details : Stripe::MandatePaymentMethodDetails?)
      if payment_method_details.nil?
        raise ArgumentError.new("\"payment_method_details\" is required and cannot be null")
      end
      _payment_method_details = payment_method_details.not_nil!
      _payment_method_details.validate if _payment_method_details.is_a?(OpenApi::Validatable)
      @payment_method_details = _payment_method_details
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
    # @param [Object] _type Object to be assigned
    def _type=(_type : String?)
      if _type.nil?
        raise ArgumentError.new("\"_type\" is required and cannot be null")
      end
      __type = _type.not_nil!
      OpenApi::EnumValidator.validate("_type", __type, VALID_VALUES_FOR__TYPE)
      @_type = __type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] multi_use Object to be assigned
    def multi_use=(multi_use : JSON::Any?)
      if multi_use.nil?
        return @multi_use = nil
      end
      _multi_use = multi_use.not_nil!
      @multi_use = _multi_use
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] single_use Object to be assigned
    def single_use=(single_use : Stripe::MandateSingleUse?)
      if single_use.nil?
        return @single_use = nil
      end
      _single_use = single_use.not_nil!
      _single_use.validate if _single_use.is_a?(OpenApi::Validatable)
      @single_use = _single_use
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@customer_acceptance, @id, @livemode, @object, @payment_method, @payment_method_details, @status, @_type, @multi_use, @single_use)
  end
end
