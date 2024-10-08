#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./account_capability_future_requirements"
require "./account_capability_requirements"
require "./capability_account"

module Stripe
  # This is an object representing a capability for a Stripe account.  Related guide: [Account capabilities](https://stripe.com/docs/connect/account-capabilities)
  class Capability
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "account", type: Stripe::CapabilityAccount?, default: nil, required: true, nullable: false, emit_null: false)]
    getter account : Stripe::CapabilityAccount? = nil

    # The identifier for the capability.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [capability]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("capability")

    # Whether the capability has been requested.
    @[JSON::Field(key: "requested", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter requested : Bool? = nil

    # Time at which the capability was requested. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "requested_at", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    getter requested_at : Int64? = nil

    # The status of the capability. Can be `active`, `inactive`, `pending`, or `unrequested`.
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil
    ERROR_MESSAGE_FOR_STATUS = "invalid value for \"status\", must be one of [active, disabled, inactive, pending, unrequested]."
    VALID_VALUES_FOR_STATUS  = String.static_array("active", "disabled", "inactive", "pending", "unrequested")

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "future_requirements", type: Stripe::AccountCapabilityFutureRequirements?, default: nil, required: false, nullable: false, emit_null: false)]
    getter future_requirements : Stripe::AccountCapabilityFutureRequirements? = nil

    @[JSON::Field(key: "requirements", type: Stripe::AccountCapabilityRequirements?, default: nil, required: false, nullable: false, emit_null: false)]
    getter requirements : Stripe::AccountCapabilityRequirements? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @account : Stripe::CapabilityAccount? = nil,
      @id : String? = nil,
      @object : String? = nil,
      @requested : Bool? = nil,
      @requested_at : Int64? = nil,
      @status : String? = nil,
      # Optional properties
      @future_requirements : Stripe::AccountCapabilityFutureRequirements? = nil,
      @requirements : Stripe::AccountCapabilityRequirements? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"account\" is required and cannot be null") if @account.nil?

      unless (_account = @account).nil?
        invalid_properties.concat(_account.list_invalid_properties_for("account")) if _account.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      unless (_object = @object).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      invalid_properties.push("\"requested\" is required and cannot be null") if @requested.nil?

      invalid_properties.push("\"status\" is required and cannot be null") if @status.nil?

      unless (_status = @status).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_STATUS) unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end
      unless (_future_requirements = @future_requirements).nil?
        invalid_properties.concat(_future_requirements.list_invalid_properties_for("future_requirements")) if _future_requirements.is_a?(OpenApi::Validatable)
      end
      unless (_requirements = @requirements).nil?
        invalid_properties.concat(_requirements.list_invalid_properties_for("requirements")) if _requirements.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @account.nil?
      unless (_account = @account).nil?
        return false if _account.is_a?(OpenApi::Validatable) && !_account.valid?
      end

      return false if @id.nil?
      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      return false if @object.nil?
      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      return false if @requested.nil?

      return false if @status.nil?
      unless (_status = @status).nil?
        return false unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end

      unless (_future_requirements = @future_requirements).nil?
        return false if _future_requirements.is_a?(OpenApi::Validatable) && !_future_requirements.valid?
      end

      unless (_requirements = @requirements).nil?
        return false if _requirements.is_a?(OpenApi::Validatable) && !_requirements.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account Object to be assigned
    def account=(new_value : Stripe::CapabilityAccount?)
      raise ArgumentError.new("\"account\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @account = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(new_value : String?)
      raise ArgumentError.new("\"id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("id", new_value.to_s.size, MAX_LENGTH_FOR_ID)
      end

      @id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(new_value : String?)
      raise ArgumentError.new("\"object\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("object", new_value, VALID_VALUES_FOR_OBJECT)
      end

      @object = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] requested Object to be assigned
    def requested=(new_value : Bool?)
      raise ArgumentError.new("\"requested\" is required and cannot be null") if new_value.nil?

      @requested = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] requested_at Object to be assigned
    def requested_at=(new_value : Int64?)
      @requested_at = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(new_value : String?)
      raise ArgumentError.new("\"status\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("status", new_value, VALID_VALUES_FOR_STATUS)
      end

      @status = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] future_requirements Object to be assigned
    def future_requirements=(new_value : Stripe::AccountCapabilityFutureRequirements?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @future_requirements = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] requirements Object to be assigned
    def requirements=(new_value : Stripe::AccountCapabilityRequirements?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @requirements = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@account, @id, @object, @requested, @requested_at, @status, @future_requirements, @requirements)
  end
end
