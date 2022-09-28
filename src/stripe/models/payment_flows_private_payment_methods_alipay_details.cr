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
  class PaymentFlowsPrivatePaymentMethodsAlipayDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    # Uniquely identifies this particular Alipay account. You can use this attribute to check whether two Alipay accounts are the same.
    @[JSON::Field(key: "buyer_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter buyer_id : String? = nil

    # Uniquely identifies this particular Alipay account. You can use this attribute to check whether two Alipay accounts are the same.
    @[JSON::Field(key: "fingerprint", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: fingerprint.nil? && !fingerprint_present?)]
    getter fingerprint : String? = nil

    @[JSON::Field(ignore: true)]
    property? fingerprint_present : Bool = false

    # Transaction ID of this particular Alipay transaction.
    @[JSON::Field(key: "transaction_id", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: transaction_id.nil? && !transaction_id_present?)]
    getter transaction_id : String? = nil

    @[JSON::Field(ignore: true)]
    property? transaction_id_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @buyer_id : String? = nil,
      @fingerprint : String? = nil,
      @transaction_id : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      if _buyer_id = @buyer_id
        if _buyer_id.to_s.size > 5000
          invalid_properties.push("invalid value for \"buyer_id\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _fingerprint = @fingerprint
        if _fingerprint.to_s.size > 5000
          invalid_properties.push("invalid value for \"fingerprint\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _transaction_id = @transaction_id
        if _transaction_id.to_s.size > 5000
          invalid_properties.push("invalid value for \"transaction_id\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _buyer_id = @buyer_id
        return false if _buyer_id.to_s.size > 5000
      end
      if _fingerprint = @fingerprint
        return false if _fingerprint.to_s.size > 5000
      end
      if _transaction_id = @transaction_id
        return false if _transaction_id.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] buyer_id Object to be assigned
    def buyer_id=(buyer_id : String?)
      if buyer_id.nil?
        return @buyer_id = nil
      end
      _buyer_id = buyer_id.not_nil!
      if _buyer_id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"buyer_id\", the character length must be smaller than or equal to 5000.")
      end

      @buyer_id = _buyer_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fingerprint Object to be assigned
    def fingerprint=(fingerprint : String?)
      if fingerprint.nil?
        return @fingerprint = nil
      end
      _fingerprint = fingerprint.not_nil!
      if _fingerprint.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"fingerprint\", the character length must be smaller than or equal to 5000.")
      end

      @fingerprint = _fingerprint
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transaction_id Object to be assigned
    def transaction_id=(transaction_id : String?)
      if transaction_id.nil?
        return @transaction_id = nil
      end
      _transaction_id = transaction_id.not_nil!
      if _transaction_id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"transaction_id\", the character length must be smaller than or equal to 5000.")
      end

      @transaction_id = _transaction_id
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@buyer_id, @fingerprint, @fingerprint_present, @transaction_id, @transaction_id_present)
  end
end
