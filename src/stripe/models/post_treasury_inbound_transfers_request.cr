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
  class PostTreasuryInboundTransfersRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # Amount (in cents) to be transferred.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    # The FinancialAccount to send funds to.
    @[JSON::Field(key: "financial_account", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter financial_account : String? = nil

    # The origin payment method to be debited for the InboundTransfer.
    @[JSON::Field(key: "origin_payment_method", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter origin_payment_method : String? = nil

    # Optional properties

    # An arbitrary string attached to the object. Often useful for displaying to users.
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter description : String? = nil

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # The complete description that appears on your customers' statements. Maximum 10 characters.
    @[JSON::Field(key: "statement_descriptor", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter statement_descriptor : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64? = nil,
      @currency : String? = nil,
      @financial_account : String? = nil,
      @origin_payment_method : String? = nil,
      # Optional properties
      @description : String? = nil,
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

      invalid_properties.push("\"origin_payment_method\" is required and cannot be null") if @origin_payment_method.nil?
      if _origin_payment_method = @origin_payment_method
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("origin_payment_method", _origin_payment_method.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _description = @description
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end

      if _statement_descriptor = @statement_descriptor
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor", _statement_descriptor.to_s.size, 10)
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

      return false if @origin_payment_method.nil?
      if _origin_payment_method = @origin_payment_method
        return false if _origin_payment_method.to_s.size > 5000
      end
      if _description = @description
        return false if _description.to_s.size > 5000
      end

      if _statement_descriptor = @statement_descriptor
        return false if _statement_descriptor.to_s.size > 10
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
    # @param [Object] origin_payment_method Object to be assigned
    def origin_payment_method=(origin_payment_method : String?)
      if origin_payment_method.nil?
        raise ArgumentError.new("\"origin_payment_method\" is required and cannot be null")
      end
      _origin_payment_method = origin_payment_method.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("origin_payment_method", _origin_payment_method.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @origin_payment_method = _origin_payment_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] description Object to be assigned
    def description=(description : String?)
      if description.nil?
        return @description = nil
      end
      _description = description.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, 5000)
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
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor", _statement_descriptor.to_s.size, 10)
        raise ArgumentError.new(max_length_error)
      end

      @statement_descriptor = _statement_descriptor
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @currency, @financial_account, @origin_payment_method, @description, @expand, @metadata, @statement_descriptor)
  end
end
