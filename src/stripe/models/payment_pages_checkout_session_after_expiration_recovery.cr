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
  class PaymentPagesCheckoutSessionAfterExpirationRecovery
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Enables user redeemable promotion codes on the recovered Checkout Sessions. Defaults to `false`
    @[JSON::Field(key: "allow_promotion_codes", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter allow_promotion_codes : Bool? = nil

    # If `true`, a recovery url will be generated to recover this Checkout Session if it expires before a transaction is completed. It will be attached to the Checkout Session object upon expiration.
    @[JSON::Field(key: "enabled", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter enabled : Bool? = nil

    # The timestamp at which the recovery URL will expire.
    @[JSON::Field(key: "expires_at", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    getter expires_at : Int64? = nil

    # URL that creates a new Checkout Session when clicked that is a copy of this expired Checkout Session
    @[JSON::Field(key: "url", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter url : String? = nil
    MAX_LENGTH_FOR_URL = 5000

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @allow_promotion_codes : Bool? = nil,
      @enabled : Bool? = nil,
      @expires_at : Int64? = nil,
      @url : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"allow_promotion_codes\" is required and cannot be null") if @allow_promotion_codes.nil?

      invalid_properties.push("\"enabled\" is required and cannot be null") if @enabled.nil?

      unless (_url = @url).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("url", _url.to_s.size, MAX_LENGTH_FOR_URL)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @allow_promotion_codes.nil?

      return false if @enabled.nil?

      unless (_url = @url).nil?
        return false if _url.to_s.size > MAX_LENGTH_FOR_URL
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] allow_promotion_codes Object to be assigned
    def allow_promotion_codes=(new_value : Bool?)
      raise ArgumentError.new("\"allow_promotion_codes\" is required and cannot be null") if new_value.nil?

      @allow_promotion_codes = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] enabled Object to be assigned
    def enabled=(new_value : Bool?)
      raise ArgumentError.new("\"enabled\" is required and cannot be null") if new_value.nil?

      @enabled = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expires_at Object to be assigned
    def expires_at=(new_value : Int64?)
      @expires_at = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] url Object to be assigned
    def url=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("url", new_value.to_s.size, MAX_LENGTH_FOR_URL)
      end

      @url = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@allow_promotion_codes, @enabled, @expires_at, @url)
  end
end
