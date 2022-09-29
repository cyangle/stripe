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
  class PostTestHelpersTreasuryReceivedDebitsRequest
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

    # The FinancialAccount to pull funds from.
    @[JSON::Field(key: "financial_account", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter financial_account : String? = nil

    # The rails used for the object.
    @[JSON::Field(key: "network", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter network : String? = nil

    ENUM_VALIDATOR_FOR_NETWORK = OpenApi::EnumValidator.new("network", "String", ["ach"])

    # Optional properties

    # An arbitrary string attached to the object. Often useful for displaying to users.
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter description : String? = nil

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    @[JSON::Field(key: "initiating_payment_method_details", type: Stripe::SourceParams?, default: nil, required: false, nullable: false, emit_null: false)]
    getter initiating_payment_method_details : Stripe::SourceParams? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64? = nil,
      @currency : String? = nil,
      @financial_account : String? = nil,
      @network : String? = nil,
      # Optional properties
      @description : String? = nil,
      @expand : Array(String)? = nil,
      @initiating_payment_method_details : Stripe::SourceParams? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"amount\" is required and cannot be null") if @amount.nil?

      invalid_properties.push("\"currency\" is required and cannot be null") if @currency.nil?

      invalid_properties.push("\"financial_account\" is required and cannot be null") if @financial_account.nil?

      invalid_properties.push(ENUM_VALIDATOR_FOR_NETWORK.error_message) unless ENUM_VALIDATOR_FOR_NETWORK.valid?(@network, false)
      if _description = @description
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end

      if _initiating_payment_method_details = @initiating_payment_method_details
        invalid_properties.concat(_initiating_payment_method_details.list_invalid_properties_for("initiating_payment_method_details")) if _initiating_payment_method_details.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @amount.nil?

      return false if @currency.nil?

      return false if @financial_account.nil?

      return false unless ENUM_VALIDATOR_FOR_NETWORK.valid?(@network, false)
      if _description = @description
        return false if _description.to_s.size > 5000
      end

      if _initiating_payment_method_details = @initiating_payment_method_details
        return false if _initiating_payment_method_details.is_a?(OpenApi::Validatable) && !_initiating_payment_method_details.valid?
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
    # @param [Object] network Object to be assigned
    def network=(network : String?)
      if network.nil?
        raise ArgumentError.new("\"network\" is required and cannot be null")
      end
      _network = network.not_nil!
      ENUM_VALIDATOR_FOR_NETWORK.valid!(_network)
      @network = _network
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
    # @param [Object] initiating_payment_method_details Object to be assigned
    def initiating_payment_method_details=(initiating_payment_method_details : Stripe::SourceParams?)
      if initiating_payment_method_details.nil?
        return @initiating_payment_method_details = nil
      end
      _initiating_payment_method_details = initiating_payment_method_details.not_nil!
      _initiating_payment_method_details.validate if _initiating_payment_method_details.is_a?(OpenApi::Validatable)
      @initiating_payment_method_details = _initiating_payment_method_details
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @currency, @financial_account, @network, @description, @expand, @initiating_payment_method_details)
  end
end
