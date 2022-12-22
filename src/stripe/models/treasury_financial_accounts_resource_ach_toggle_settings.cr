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
  # Toggle settings for enabling/disabling an ACH specific feature
  class TreasuryFinancialAccountsResourceAchToggleSettings
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Whether the FinancialAccount should have the Feature.
    @[JSON::Field(key: "requested", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter requested : Bool? = nil

    # Whether the Feature is operational.
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil
    ERROR_MESSAGE_FOR_STATUS = "invalid value for \"status\", must be one of [active, pending, restricted]."
    VALID_VALUES_FOR_STATUS  = String.static_array("active", "pending", "restricted")

    # Additional details; includes at least one entry when the status is not `active`.
    @[JSON::Field(key: "status_details", type: Array(Stripe::TreasuryFinancialAccountsResourceTogglesSettingStatusDetails)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status_details : Array(Stripe::TreasuryFinancialAccountsResourceTogglesSettingStatusDetails)? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @requested : Bool? = nil,
      @status : String? = nil,
      @status_details : Array(Stripe::TreasuryFinancialAccountsResourceTogglesSettingStatusDetails)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"requested\" is required and cannot be null") if @requested.nil?

      invalid_properties.push("\"status\" is required and cannot be null") if @status.nil?

      unless (_status = @status).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_STATUS) unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end
      invalid_properties.push("\"status_details\" is required and cannot be null") if @status_details.nil?

      unless (_status_details = @status_details).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "status_details", container: _status_details)) if _status_details.is_a?(Array)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @requested.nil?

      return false if @status.nil?
      unless (_status = @status).nil?
        return false unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end

      return false if @status_details.nil?
      unless (_status_details = @status_details).nil?
        return false if _status_details.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _status_details)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] requested Object to be assigned
    def requested=(requested : Bool?)
      if requested.nil?
        raise ArgumentError.new("\"requested\" is required and cannot be null")
      end
      _requested = requested.not_nil!
      @requested = _requested
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
    # @param [Object] status_details Object to be assigned
    def status_details=(status_details : Array(Stripe::TreasuryFinancialAccountsResourceTogglesSettingStatusDetails)?)
      if status_details.nil?
        raise ArgumentError.new("\"status_details\" is required and cannot be null")
      end
      _status_details = status_details.not_nil!
      OpenApi::ContainerValidator.validate(container: _status_details) if _status_details.is_a?(Array)
      @status_details = _status_details
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@requested, @status, @status_details)
  end
end
