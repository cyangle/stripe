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
  #
  class CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceJpBankTransfer
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The name of the bank of the sender of the funding.
    @[JSON::Field(key: "sender_bank", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter sender_bank : String? = nil
    MAX_LENGTH_FOR_SENDER_BANK = 5000

    # The name of the bank branch of the sender of the funding.
    @[JSON::Field(key: "sender_branch", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter sender_branch : String? = nil
    MAX_LENGTH_FOR_SENDER_BRANCH = 5000

    # The full name of the sender, as supplied by the sending bank.
    @[JSON::Field(key: "sender_name", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter sender_name : String? = nil
    MAX_LENGTH_FOR_SENDER_NAME = 5000

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @sender_bank : String? = nil,
      @sender_branch : String? = nil,
      @sender_name : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_sender_bank = @sender_bank).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("sender_bank", _sender_bank.to_s.size, MAX_LENGTH_FOR_SENDER_BANK)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_sender_branch = @sender_branch).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("sender_branch", _sender_branch.to_s.size, MAX_LENGTH_FOR_SENDER_BRANCH)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_sender_name = @sender_name).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("sender_name", _sender_name.to_s.size, MAX_LENGTH_FOR_SENDER_NAME)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_sender_bank = @sender_bank).nil?
        return false if _sender_bank.to_s.size > MAX_LENGTH_FOR_SENDER_BANK
      end

      unless (_sender_branch = @sender_branch).nil?
        return false if _sender_branch.to_s.size > MAX_LENGTH_FOR_SENDER_BRANCH
      end

      unless (_sender_name = @sender_name).nil?
        return false if _sender_name.to_s.size > MAX_LENGTH_FOR_SENDER_NAME
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sender_bank Object to be assigned
    def sender_bank=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("sender_bank", new_value.to_s.size, MAX_LENGTH_FOR_SENDER_BANK)
      end

      @sender_bank = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sender_branch Object to be assigned
    def sender_branch=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("sender_branch", new_value.to_s.size, MAX_LENGTH_FOR_SENDER_BRANCH)
      end

      @sender_branch = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sender_name Object to be assigned
    def sender_name=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("sender_name", new_value.to_s.size, MAX_LENGTH_FOR_SENDER_NAME)
      end

      @sender_name = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@sender_bank, @sender_branch, @sender_name)
  end
end
