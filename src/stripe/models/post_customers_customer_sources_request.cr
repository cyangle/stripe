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
  class PostCustomersCustomerSourcesRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # A token returned by [Stripe.js](https://stripe.com/docs/js) representing the user’s Alipay account details.
    @[JSON::Field(key: "alipay_account", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter alipay_account : String? = nil
    MAX_LENGTH_FOR_ALIPAY_ACCOUNT = 5000

    @[JSON::Field(key: "bank_account", type: Stripe::PostCustomersCustomerRequestBankAccount?, default: nil, required: false, nullable: false, emit_null: false)]
    getter bank_account : Stripe::PostCustomersCustomerRequestBankAccount? = nil

    @[JSON::Field(key: "card", type: Stripe::PostChargesRequestCard?, default: nil, required: false, nullable: false, emit_null: false)]
    getter card : Stripe::PostChargesRequestCard? = nil

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # Please refer to full [documentation](https://stripe.com/docs/api) instead.
    @[JSON::Field(key: "source", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter source : String? = nil
    MAX_LENGTH_FOR_SOURCE = 5000

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @alipay_account : String? = nil,
      @bank_account : Stripe::PostCustomersCustomerRequestBankAccount? = nil,
      @card : Stripe::PostChargesRequestCard? = nil,
      @expand : Array(String)? = nil,
      @metadata : Hash(String, String)? = nil,
      @source : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_alipay_account = @alipay_account).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("alipay_account", _alipay_account.to_s.size, MAX_LENGTH_FOR_ALIPAY_ACCOUNT)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_bank_account = @bank_account).nil?
        invalid_properties.concat(_bank_account.list_invalid_properties_for("bank_account")) if _bank_account.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_alipay_account = @alipay_account).nil?
        return false if _alipay_account.to_s.size > MAX_LENGTH_FOR_ALIPAY_ACCOUNT
      end

      unless (_bank_account = @bank_account).nil?
        return false if _bank_account.is_a?(OpenApi::Validatable) && !_bank_account.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] alipay_account Object to be assigned
    def alipay_account=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("alipay_account", new_value.to_s.size, MAX_LENGTH_FOR_ALIPAY_ACCOUNT)
      end

      @alipay_account = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bank_account Object to be assigned
    def bank_account=(new_value : Stripe::PostCustomersCustomerRequestBankAccount?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @bank_account = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] card Object to be assigned
    def card=(new_value : Stripe::PostChargesRequestCard?)
      @card = new_value
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source Object to be assigned
    def source=(new_value : String?)
      @source = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@alipay_account, @bank_account, @card, @expand, @metadata, @source)
  end
end
