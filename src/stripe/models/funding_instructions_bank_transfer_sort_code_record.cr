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
  # Sort Code Records contain U.K. bank account details per the sort code format.
  class FundingInstructionsBankTransferSortCodeRecord
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The name of the person or business that owns the bank account
    @[JSON::Field(key: "account_holder_name", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter account_holder_name : String? = nil
    MAX_LENGTH_FOR_ACCOUNT_HOLDER_NAME = 5000

    # The account number
    @[JSON::Field(key: "account_number", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter account_number : String? = nil
    MAX_LENGTH_FOR_ACCOUNT_NUMBER = 5000

    # The six-digit sort code
    @[JSON::Field(key: "sort_code", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter sort_code : String? = nil
    MAX_LENGTH_FOR_SORT_CODE = 5000

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @account_holder_name : String? = nil,
      @account_number : String? = nil,
      @sort_code : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"account_holder_name\" is required and cannot be null") if @account_holder_name.nil?

      unless (_account_holder_name = @account_holder_name).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("account_holder_name", _account_holder_name.to_s.size, MAX_LENGTH_FOR_ACCOUNT_HOLDER_NAME)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"account_number\" is required and cannot be null") if @account_number.nil?

      unless (_account_number = @account_number).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("account_number", _account_number.to_s.size, MAX_LENGTH_FOR_ACCOUNT_NUMBER)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"sort_code\" is required and cannot be null") if @sort_code.nil?

      unless (_sort_code = @sort_code).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("sort_code", _sort_code.to_s.size, MAX_LENGTH_FOR_SORT_CODE)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @account_holder_name.nil?
      unless (_account_holder_name = @account_holder_name).nil?
        return false if _account_holder_name.to_s.size > MAX_LENGTH_FOR_ACCOUNT_HOLDER_NAME
      end

      return false if @account_number.nil?
      unless (_account_number = @account_number).nil?
        return false if _account_number.to_s.size > MAX_LENGTH_FOR_ACCOUNT_NUMBER
      end

      return false if @sort_code.nil?
      unless (_sort_code = @sort_code).nil?
        return false if _sort_code.to_s.size > MAX_LENGTH_FOR_SORT_CODE
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_holder_name Object to be assigned
    def account_holder_name=(new_value : String?)
      raise ArgumentError.new("\"account_holder_name\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("account_holder_name", new_value.to_s.size, MAX_LENGTH_FOR_ACCOUNT_HOLDER_NAME)
      end

      @account_holder_name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_number Object to be assigned
    def account_number=(new_value : String?)
      raise ArgumentError.new("\"account_number\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("account_number", new_value.to_s.size, MAX_LENGTH_FOR_ACCOUNT_NUMBER)
      end

      @account_number = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sort_code Object to be assigned
    def sort_code=(new_value : String?)
      raise ArgumentError.new("\"sort_code\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("sort_code", new_value.to_s.size, MAX_LENGTH_FOR_SORT_CODE)
      end

      @sort_code = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@account_holder_name, @account_number, @sort_code)
  end
end
