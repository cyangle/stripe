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
  class PaymentIntentPaymentMethodOptionsParam7
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "financial_connections", type: Stripe::LinkedAccountOptionsParam1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter financial_connections : Stripe::LinkedAccountOptionsParam1? = nil

    @[JSON::Field(key: "networks", type: Stripe::NetworksOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter networks : Stripe::NetworksOptionsParam? = nil

    @[JSON::Field(key: "setup_future_usage", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter setup_future_usage : String? = nil

    ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE = EnumValidator.new("setup_future_usage", "String", ["", "none", "off_session", "on_session"])

    @[JSON::Field(key: "verification_method", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter verification_method : String? = nil

    ENUM_VALIDATOR_FOR_VERIFICATION_METHOD = EnumValidator.new("verification_method", "String", ["automatic", "instant", "microdeposits"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @financial_connections : Stripe::LinkedAccountOptionsParam1? = nil,
      @networks : Stripe::NetworksOptionsParam? = nil,
      @setup_future_usage : String? = nil,
      @verification_method : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      if _financial_connections = @financial_connections
        if _financial_connections.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_financial_connections.list_invalid_properties_for("financial_connections"))
        end
      end
      if _networks = @networks
        if _networks.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_networks.list_invalid_properties_for("networks"))
        end
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.error_message) unless ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.valid?(@setup_future_usage)

      invalid_properties.push(ENUM_VALIDATOR_FOR_VERIFICATION_METHOD.error_message) unless ENUM_VALIDATOR_FOR_VERIFICATION_METHOD.valid?(@verification_method)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _financial_connections = @financial_connections
        if _financial_connections.is_a?(OpenApi::Validatable)
          return false unless _financial_connections.valid?
        end
      end
      if _networks = @networks
        if _networks.is_a?(OpenApi::Validatable)
          return false unless _networks.valid?
        end
      end
      return false unless ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.valid?(@setup_future_usage)
      return false unless ENUM_VALIDATOR_FOR_VERIFICATION_METHOD.valid?(@verification_method)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] financial_connections Object to be assigned
    def financial_connections=(financial_connections : Stripe::LinkedAccountOptionsParam1?)
      if financial_connections.nil?
        return @financial_connections = nil
      end
      _financial_connections = financial_connections.not_nil!
      if _financial_connections.is_a?(OpenApi::Validatable)
        _financial_connections.validate
      end
      @financial_connections = _financial_connections
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] networks Object to be assigned
    def networks=(networks : Stripe::NetworksOptionsParam?)
      if networks.nil?
        return @networks = nil
      end
      _networks = networks.not_nil!
      if _networks.is_a?(OpenApi::Validatable)
        _networks.validate
      end
      @networks = _networks
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] setup_future_usage Object to be assigned
    def setup_future_usage=(setup_future_usage : String?)
      if setup_future_usage.nil?
        return @setup_future_usage = nil
      end
      _setup_future_usage = setup_future_usage.not_nil!
      ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.valid!(_setup_future_usage)
      @setup_future_usage = _setup_future_usage
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] verification_method Object to be assigned
    def verification_method=(verification_method : String?)
      if verification_method.nil?
        return @verification_method = nil
      end
      _verification_method = verification_method.not_nil!
      ENUM_VALIDATOR_FOR_VERIFICATION_METHOD.valid!(_verification_method)
      @verification_method = _verification_method
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@financial_connections, @networks, @setup_future_usage, @verification_method)
  end
end
