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
  class PostTreasuryOutboundTransfersRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Amount (in cents) to be transferred.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    # The FinancialAccount to pull funds from.
    @[JSON::Field(key: "financial_account", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter financial_account : String? = nil

    # End of Required Properties

    # Optional Properties

    # An arbitrary string attached to the object. Often useful for displaying to users.
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 5000

    # The PaymentMethod to use as the payment instrument for the OutboundTransfer.
    @[JSON::Field(key: "destination_payment_method", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter destination_payment_method : String? = nil
    MAX_LENGTH_FOR_DESTINATION_PAYMENT_METHOD = 5000

    @[JSON::Field(key: "destination_payment_method_options", type: Stripe::PaymentMethodOptions3?, default: nil, required: false, nullable: false, emit_null: false)]
    getter destination_payment_method_options : Stripe::PaymentMethodOptions3? = nil

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # Statement descriptor to be shown on the receiving end of an OutboundTransfer. Maximum 10 characters for `ach` transfers or 140 characters for `wire` transfers. The default value is `transfer`.
    @[JSON::Field(key: "statement_descriptor", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter statement_descriptor : String? = nil
    MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR = 5000

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64? = nil,
      @currency : String? = nil,
      @financial_account : String? = nil,
      # Optional properties
      @description : String? = nil,
      @destination_payment_method : String? = nil,
      @destination_payment_method_options : Stripe::PaymentMethodOptions3? = nil,
      @expand : Array(String)? = nil,
      @metadata : Hash(String, String)? = nil,
      @statement_descriptor : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"amount\" is required and cannot be null") if @amount.nil?

      invalid_properties.push("\"currency\" is required and cannot be null") if @currency.nil?

      invalid_properties.push("\"financial_account\" is required and cannot be null") if @financial_account.nil?

      unless (_description = @description).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_destination_payment_method = @destination_payment_method).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("destination_payment_method", _destination_payment_method.to_s.size, MAX_LENGTH_FOR_DESTINATION_PAYMENT_METHOD)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_destination_payment_method_options = @destination_payment_method_options).nil?
        invalid_properties.concat(_destination_payment_method_options.list_invalid_properties_for("destination_payment_method_options")) if _destination_payment_method_options.is_a?(OpenApi::Validatable)
      end

      unless (_statement_descriptor = @statement_descriptor).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor", _statement_descriptor.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @amount.nil?

      return false if @currency.nil?

      return false if @financial_account.nil?

      unless (_description = @description).nil?
        return false if _description.to_s.size > MAX_LENGTH_FOR_DESCRIPTION
      end

      unless (_destination_payment_method = @destination_payment_method).nil?
        return false if _destination_payment_method.to_s.size > MAX_LENGTH_FOR_DESTINATION_PAYMENT_METHOD
      end

      unless (_destination_payment_method_options = @destination_payment_method_options).nil?
        return false if _destination_payment_method_options.is_a?(OpenApi::Validatable) && !_destination_payment_method_options.valid?
      end

      unless (_statement_descriptor = @statement_descriptor).nil?
        return false if _statement_descriptor.to_s.size > MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(amount : Int64?)
      if amount.nil?
        raise ArgumentError.new("\"amount\" is required and cannot be null")
      end
      _amount = amount.not_nil!
      @amount = _amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(currency : String?)
      if currency.nil?
        raise ArgumentError.new("\"currency\" is required and cannot be null")
      end
      _currency = currency.not_nil!
      @currency = _currency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] financial_account Object to be assigned
    def financial_account=(financial_account : String?)
      if financial_account.nil?
        raise ArgumentError.new("\"financial_account\" is required and cannot be null")
      end
      _financial_account = financial_account.not_nil!
      @financial_account = _financial_account
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
    # @param [Object] destination_payment_method Object to be assigned
    def destination_payment_method=(destination_payment_method : String?)
      if destination_payment_method.nil?
        return @destination_payment_method = nil
      end
      _destination_payment_method = destination_payment_method.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("destination_payment_method", _destination_payment_method.to_s.size, MAX_LENGTH_FOR_DESTINATION_PAYMENT_METHOD)
      @destination_payment_method = _destination_payment_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] destination_payment_method_options Object to be assigned
    def destination_payment_method_options=(destination_payment_method_options : Stripe::PaymentMethodOptions3?)
      if destination_payment_method_options.nil?
        return @destination_payment_method_options = nil
      end
      _destination_payment_method_options = destination_payment_method_options.not_nil!
      _destination_payment_method_options.validate if _destination_payment_method_options.is_a?(OpenApi::Validatable)
      @destination_payment_method_options = _destination_payment_method_options
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
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Hash(String, String)?)
      if metadata.nil?
        return @metadata = nil
      end
      _metadata = metadata.not_nil!
      @metadata = _metadata
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

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @currency, @financial_account, @description, @destination_payment_method, @destination_payment_method_options, @expand, @metadata, @statement_descriptor)
  end
end
