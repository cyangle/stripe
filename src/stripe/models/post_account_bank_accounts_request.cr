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
  class PostAccountBankAccountsRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "bank_account", type: Stripe::PostAccountRequestBankAccount?, default: nil, required: false, nullable: false, emit_null: false)]
    getter bank_account : Stripe::PostAccountRequestBankAccount? = nil

    # When set to true, or if this is the first external account added in this currency, this account becomes the default external account for its currency.
    @[JSON::Field(key: "default_for_currency", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter default_for_currency : Bool? = nil

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # Please refer to full [documentation](https://stripe.com/docs/api) instead.
    @[JSON::Field(key: "external_account", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter external_account : String? = nil

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @bank_account : Stripe::PostAccountRequestBankAccount? = nil,
      @default_for_currency : Bool? = nil,
      @expand : Array(String)? = nil,
      @external_account : String? = nil,
      @metadata : Hash(String, String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      if _bank_account = @bank_account
        if _bank_account.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_bank_account.list_invalid_properties_for("bank_account"))
        end
      end

      if _external_account = @external_account
        if _external_account.to_s.size > 5000
          invalid_properties.push("invalid value for \"external_account\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _bank_account = @bank_account
        if _bank_account.is_a?(OpenApi::Validatable)
          return false unless _bank_account.valid?
        end
      end

      if _external_account = @external_account
        return false if _external_account.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bank_account Object to be assigned
    def bank_account=(bank_account : Stripe::PostAccountRequestBankAccount?)
      if bank_account.nil?
        return @bank_account = nil
      end
      _bank_account = bank_account.not_nil!
      if _bank_account.is_a?(OpenApi::Validatable)
        _bank_account.validate
      end
      @bank_account = _bank_account
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_for_currency Object to be assigned
    def default_for_currency=(default_for_currency : Bool?)
      if default_for_currency.nil?
        return @default_for_currency = nil
      end
      _default_for_currency = default_for_currency.not_nil!
      @default_for_currency = _default_for_currency
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
    # @param [Object] external_account Object to be assigned
    def external_account=(external_account : String?)
      if external_account.nil?
        return @external_account = nil
      end
      _external_account = external_account.not_nil!
      if _external_account.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"external_account\", the character length must be smaller than or equal to 5000.")
      end

      @external_account = _external_account
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

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@bank_account, @default_for_currency, @expand, @external_account, @metadata)
  end
end
