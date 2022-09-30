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
  #
  class OutboundTransfersPaymentMethodDetailsUsBankAccount
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # The US bank account network used to send funds.
    @[JSON::Field(key: "network", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter network : String? = nil

    VALID_VALUES_FOR_NETWORK = StaticArray["ach", "us_domestic_wire"]

    # Optional properties

    # Account holder type: individual or company.
    @[JSON::Field(key: "account_holder_type", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: account_holder_type.nil? && !account_holder_type_present?)]
    getter account_holder_type : String? = nil

    @[JSON::Field(ignore: true)]
    property? account_holder_type_present : Bool = false
    VALID_VALUES_FOR_ACCOUNT_HOLDER_TYPE = StaticArray["company", "individual"]

    # Account type: checkings or savings. Defaults to checking if omitted.
    @[JSON::Field(key: "account_type", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: account_type.nil? && !account_type_present?)]
    getter account_type : String? = nil

    @[JSON::Field(ignore: true)]
    property? account_type_present : Bool = false
    VALID_VALUES_FOR_ACCOUNT_TYPE = StaticArray["checking", "savings"]

    # Name of the bank associated with the bank account.
    @[JSON::Field(key: "bank_name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: bank_name.nil? && !bank_name_present?)]
    getter bank_name : String? = nil

    @[JSON::Field(ignore: true)]
    property? bank_name_present : Bool = false

    # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
    @[JSON::Field(key: "fingerprint", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: fingerprint.nil? && !fingerprint_present?)]
    getter fingerprint : String? = nil

    @[JSON::Field(ignore: true)]
    property? fingerprint_present : Bool = false

    # Last four digits of the bank account number.
    @[JSON::Field(key: "last4", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: last4.nil? && !last4_present?)]
    getter last4 : String? = nil

    @[JSON::Field(ignore: true)]
    property? last4_present : Bool = false

    # Routing number of the bank account.
    @[JSON::Field(key: "routing_number", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: routing_number.nil? && !routing_number_present?)]
    getter routing_number : String? = nil

    @[JSON::Field(ignore: true)]
    property? routing_number_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @network : String? = nil,
      # Optional properties
      @account_holder_type : String? = nil,
      @account_type : String? = nil,
      @bank_name : String? = nil,
      @fingerprint : String? = nil,
      @last4 : String? = nil,
      @routing_number : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"network\" is required and cannot be null") if @network.nil?

      if _network = @network
        invalid_properties.push(OpenApi::EnumValidator.error_message("network", VALID_VALUES_FOR_NETWORK)) unless OpenApi::EnumValidator.valid?(_network, VALID_VALUES_FOR_NETWORK)
      end
      if _account_holder_type = @account_holder_type
        invalid_properties.push(OpenApi::EnumValidator.error_message("account_holder_type", VALID_VALUES_FOR_ACCOUNT_HOLDER_TYPE)) unless OpenApi::EnumValidator.valid?(_account_holder_type, VALID_VALUES_FOR_ACCOUNT_HOLDER_TYPE)
      end
      if _account_type = @account_type
        invalid_properties.push(OpenApi::EnumValidator.error_message("account_type", VALID_VALUES_FOR_ACCOUNT_TYPE)) unless OpenApi::EnumValidator.valid?(_account_type, VALID_VALUES_FOR_ACCOUNT_TYPE)
      end
      if _bank_name = @bank_name
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("bank_name", _bank_name.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _fingerprint = @fingerprint
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("fingerprint", _fingerprint.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _last4 = @last4
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("last4", _last4.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _routing_number = @routing_number
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("routing_number", _routing_number.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @network.nil?
      if _network = @network
        return false unless OpenApi::EnumValidator.valid?(_network, VALID_VALUES_FOR_NETWORK)
      end

      if _account_holder_type = @account_holder_type
        return false unless OpenApi::EnumValidator.valid?(_account_holder_type, VALID_VALUES_FOR_ACCOUNT_HOLDER_TYPE)
      end

      if _account_type = @account_type
        return false unless OpenApi::EnumValidator.valid?(_account_type, VALID_VALUES_FOR_ACCOUNT_TYPE)
      end

      if _bank_name = @bank_name
        return false if _bank_name.to_s.size > 5000
      end

      if _fingerprint = @fingerprint
        return false if _fingerprint.to_s.size > 5000
      end

      if _last4 = @last4
        return false if _last4.to_s.size > 5000
      end

      if _routing_number = @routing_number
        return false if _routing_number.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] network Object to be assigned
    def network=(network : String?)
      if network.nil?
        raise ArgumentError.new("\"network\" is required and cannot be null")
      end
      _network = network.not_nil!
      OpenApi::EnumValidator.validate("network", _network, VALID_VALUES_FOR_NETWORK)
      @network = _network
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_holder_type Object to be assigned
    def account_holder_type=(account_holder_type : String?)
      if account_holder_type.nil?
        return @account_holder_type = nil
      end
      _account_holder_type = account_holder_type.not_nil!
      OpenApi::EnumValidator.validate("account_holder_type", _account_holder_type, VALID_VALUES_FOR_ACCOUNT_HOLDER_TYPE)
      @account_holder_type = _account_holder_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_type Object to be assigned
    def account_type=(account_type : String?)
      if account_type.nil?
        return @account_type = nil
      end
      _account_type = account_type.not_nil!
      OpenApi::EnumValidator.validate("account_type", _account_type, VALID_VALUES_FOR_ACCOUNT_TYPE)
      @account_type = _account_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bank_name Object to be assigned
    def bank_name=(bank_name : String?)
      if bank_name.nil?
        return @bank_name = nil
      end
      _bank_name = bank_name.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("bank_name", _bank_name.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @bank_name = _bank_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fingerprint Object to be assigned
    def fingerprint=(fingerprint : String?)
      if fingerprint.nil?
        return @fingerprint = nil
      end
      _fingerprint = fingerprint.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("fingerprint", _fingerprint.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @fingerprint = _fingerprint
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last4 Object to be assigned
    def last4=(last4 : String?)
      if last4.nil?
        return @last4 = nil
      end
      _last4 = last4.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("last4", _last4.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @last4 = _last4
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] routing_number Object to be assigned
    def routing_number=(routing_number : String?)
      if routing_number.nil?
        return @routing_number = nil
      end
      _routing_number = routing_number.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("routing_number", _routing_number.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @routing_number = _routing_number
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@network, @account_holder_type, @account_holder_type_present, @account_type, @account_type_present, @bank_name, @bank_name_present, @fingerprint, @fingerprint_present, @last4, @last4_present, @routing_number, @routing_number_present)
  end
end
