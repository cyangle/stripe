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
  #
  class PaymentIntentNextActionKonbini
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The timestamp at which the pending Konbini payment expires.
    @[JSON::Field(key: "expires_at", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter expires_at : Int64? = nil

    @[JSON::Field(key: "stores", type: Stripe::PaymentIntentNextActionKonbiniStores?, default: nil, required: true, nullable: false, emit_null: false)]
    getter stores : Stripe::PaymentIntentNextActionKonbiniStores? = nil

    # End of Required Properties

    # Optional Properties

    # The URL for the Konbini payment instructions page, which allows customers to view and print a Konbini voucher.
    @[JSON::Field(key: "hosted_voucher_url", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: hosted_voucher_url.nil? && !hosted_voucher_url_present?)]
    getter hosted_voucher_url : String? = nil
    MAX_LENGTH_FOR_HOSTED_VOUCHER_URL = 5000

    @[JSON::Field(ignore: true)]
    property? hosted_voucher_url_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @expires_at : Int64? = nil,
      @stores : Stripe::PaymentIntentNextActionKonbiniStores? = nil,
      # Optional properties
      @hosted_voucher_url : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"expires_at\" is required and cannot be null") if @expires_at.nil?

      invalid_properties.push("\"stores\" is required and cannot be null") if @stores.nil?

      unless (_stores = @stores).nil?
        invalid_properties.concat(_stores.list_invalid_properties_for("stores")) if _stores.is_a?(OpenApi::Validatable)
      end
      unless (_hosted_voucher_url = @hosted_voucher_url).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("hosted_voucher_url", _hosted_voucher_url.to_s.size, MAX_LENGTH_FOR_HOSTED_VOUCHER_URL)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @expires_at.nil?

      return false if @stores.nil?
      unless (_stores = @stores).nil?
        return false if _stores.is_a?(OpenApi::Validatable) && !_stores.valid?
      end

      unless (_hosted_voucher_url = @hosted_voucher_url).nil?
        return false if _hosted_voucher_url.to_s.size > MAX_LENGTH_FOR_HOSTED_VOUCHER_URL
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expires_at Object to be assigned
    def expires_at=(new_value : Int64?)
      raise ArgumentError.new("\"expires_at\" is required and cannot be null") if new_value.nil?

      @expires_at = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] stores Object to be assigned
    def stores=(new_value : Stripe::PaymentIntentNextActionKonbiniStores?)
      raise ArgumentError.new("\"stores\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @stores = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] hosted_voucher_url Object to be assigned
    def hosted_voucher_url=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("hosted_voucher_url", new_value.to_s.size, MAX_LENGTH_FOR_HOSTED_VOUCHER_URL)
      end

      @hosted_voucher_url = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@expires_at, @stores, @hosted_voucher_url, @hosted_voucher_url_present)
  end
end
