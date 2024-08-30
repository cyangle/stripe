#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

module Stripe
  class PostAccountsAccountExternalAccountsRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Please refer to full [documentation](https://stripe.com/docs/api) instead.
    @[JSON::Field(key: "external_account", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter external_account : String? = nil
    MAX_LENGTH_FOR_EXTERNAL_ACCOUNT = 5000

    # End of Required Properties

    # Optional Properties

    # When set to true, or if this is the first external account added in this currency, this account becomes the default external account for its currency.
    @[JSON::Field(key: "default_for_currency", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter default_for_currency : Bool? = nil

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @external_account : String? = nil,
      # Optional properties
      @default_for_currency : Bool? = nil,
      @expand : Array(String)? = nil,
      @metadata : Hash(String, String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"external_account\" is required and cannot be null") if @external_account.nil?

      unless (_external_account = @external_account).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("external_account", _external_account.to_s.size, MAX_LENGTH_FOR_EXTERNAL_ACCOUNT)
          invalid_properties.push(max_length_error)
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @external_account.nil?
      unless (_external_account = @external_account).nil?
        return false if _external_account.to_s.size > MAX_LENGTH_FOR_EXTERNAL_ACCOUNT
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] external_account Object to be assigned
    def external_account=(new_value : String?)
      raise ArgumentError.new("\"external_account\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("external_account", new_value.to_s.size, MAX_LENGTH_FOR_EXTERNAL_ACCOUNT)
      end

      @external_account = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_for_currency Object to be assigned
    def default_for_currency=(new_value : Bool?)
      @default_for_currency = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(new_value : Array(String)?)
      @expand = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(new_value : Hash(String, String)?)
      @metadata = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@external_account, @default_for_currency, @expand, @metadata)
  end
end
