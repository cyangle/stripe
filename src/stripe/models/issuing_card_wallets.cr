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
  class IssuingCardWallets
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "apple_pay", type: Stripe::IssuingCardApplePay?, default: nil, required: true, nullable: false, emit_null: false)]
    getter apple_pay : Stripe::IssuingCardApplePay? = nil

    @[JSON::Field(key: "google_pay", type: Stripe::IssuingCardGooglePay?, default: nil, required: true, nullable: false, emit_null: false)]
    getter google_pay : Stripe::IssuingCardGooglePay? = nil

    # Optional properties

    # Unique identifier for a card used with digital wallets
    @[JSON::Field(key: "primary_account_identifier", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: primary_account_identifier.nil? && !primary_account_identifier_present?)]
    getter primary_account_identifier : String? = nil

    @[JSON::Field(ignore: true)]
    property? primary_account_identifier_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @apple_pay : Stripe::IssuingCardApplePay? = nil,
      @google_pay : Stripe::IssuingCardGooglePay? = nil,
      # Optional properties
      @primary_account_identifier : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"apple_pay\" is required and cannot be null") if @apple_pay.nil?
      if _apple_pay = @apple_pay
        if _apple_pay.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_apple_pay.list_invalid_properties_for("apple_pay"))
        end
      end
      invalid_properties.push("\"google_pay\" is required and cannot be null") if @google_pay.nil?
      if _google_pay = @google_pay
        if _google_pay.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_google_pay.list_invalid_properties_for("google_pay"))
        end
      end
      if _primary_account_identifier = @primary_account_identifier
        if _primary_account_identifier.to_s.size > 5000
          invalid_properties.push("invalid value for \"primary_account_identifier\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @apple_pay.nil?
      if _apple_pay = @apple_pay
        if _apple_pay.is_a?(OpenApi::Validatable)
          return false unless _apple_pay.valid?
        end
      end
      return false if @google_pay.nil?
      if _google_pay = @google_pay
        if _google_pay.is_a?(OpenApi::Validatable)
          return false unless _google_pay.valid?
        end
      end
      if _primary_account_identifier = @primary_account_identifier
        return false if _primary_account_identifier.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] apple_pay Object to be assigned
    def apple_pay=(apple_pay : Stripe::IssuingCardApplePay?)
      if apple_pay.nil?
        raise ArgumentError.new("\"apple_pay\" is required and cannot be null")
      end
      _apple_pay = apple_pay.not_nil!
      if _apple_pay.is_a?(OpenApi::Validatable)
        _apple_pay.validate
      end
      @apple_pay = _apple_pay
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] google_pay Object to be assigned
    def google_pay=(google_pay : Stripe::IssuingCardGooglePay?)
      if google_pay.nil?
        raise ArgumentError.new("\"google_pay\" is required and cannot be null")
      end
      _google_pay = google_pay.not_nil!
      if _google_pay.is_a?(OpenApi::Validatable)
        _google_pay.validate
      end
      @google_pay = _google_pay
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] primary_account_identifier Object to be assigned
    def primary_account_identifier=(primary_account_identifier : String?)
      if primary_account_identifier.nil?
        return @primary_account_identifier = nil
      end
      _primary_account_identifier = primary_account_identifier.not_nil!
      if _primary_account_identifier.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"primary_account_identifier\", the character length must be smaller than or equal to 5000.")
      end

      @primary_account_identifier = _primary_account_identifier
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@apple_pay, @google_pay, @primary_account_identifier, @primary_account_identifier_present)
  end
end
