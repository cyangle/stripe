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
  #
  class PaymentPagesCheckoutSessionAfterExpirationRecovery
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Required properties

    # Enables user redeemable promotion codes on the recovered Checkout Sessions. Defaults to `false`
    @[JSON::Field(key: "allow_promotion_codes", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter allow_promotion_codes : Bool? = nil

    # If `true`, a recovery url will be generated to recover this Checkout Session if it expires before a transaction is completed. It will be attached to the Checkout Session object upon expiration.
    @[JSON::Field(key: "enabled", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter enabled : Bool? = nil

    # Optional properties

    # The timestamp at which the recovery URL will expire.
    @[JSON::Field(key: "expires_at", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: expires_at.nil? && !expires_at_present?)]
    getter expires_at : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? expires_at_present : Bool = false

    # URL that creates a new Checkout Session when clicked that is a copy of this expired Checkout Session
    @[JSON::Field(key: "url", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: url.nil? && !url_present?)]
    getter url : String? = nil

    @[JSON::Field(ignore: true)]
    property? url_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @allow_promotion_codes : Bool? = nil,
      @enabled : Bool? = nil,
      # Optional properties
      @expires_at : Int64? = nil,
      @url : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      invalid_properties.push("\"allow_promotion_codes\" is required and cannot be null") if @allow_promotion_codes.nil?
      invalid_properties.push("\"enabled\" is required and cannot be null") if @enabled.nil?
      if _url = @url
        if _url.to_s.size > 5000
          invalid_properties.push("invalid value for \"url\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @allow_promotion_codes.nil?
      return false if @enabled.nil?
      if _url = @url
        return false if _url.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] allow_promotion_codes Object to be assigned
    def allow_promotion_codes=(allow_promotion_codes : Bool?)
      if allow_promotion_codes.nil?
        raise ArgumentError.new("\"allow_promotion_codes\" is required and cannot be null")
      end
      @allow_promotion_codes = allow_promotion_codes
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] enabled Object to be assigned
    def enabled=(enabled : Bool?)
      if enabled.nil?
        raise ArgumentError.new("\"enabled\" is required and cannot be null")
      end
      @enabled = enabled
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expires_at Object to be assigned
    def expires_at=(expires_at : Int64?)
      if expires_at.nil?
        return @expires_at = nil
      end
      @expires_at = expires_at
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] url Object to be assigned
    def url=(url : String?)
      if url.nil?
        return @url = nil
      end
      _url = url.not_nil!
      if _url.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"url\", the character length must be smaller than or equal to 5000.")
      end

      @url = url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@allow_promotion_codes, @enabled, @expires_at, @expires_at_present, @url, @url_present)
  end
end
