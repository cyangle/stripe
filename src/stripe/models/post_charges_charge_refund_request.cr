#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  @[JSON::Serializable::Options(emit_nulls: true)]
  class PostChargesChargeRefundRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped


    # Optional properties

    @[JSON::Field(key: "amount", type: Int64?, presence: true, ignore_serialize: amount.nil? && !amount_present?)]
    property amount : Int64?

    @[JSON::Field(ignore: true)]
    property? amount_present : Bool = false

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, presence: true, ignore_serialize: expand.nil? && !expand_present?)]
    property expand : Array(String)?

    @[JSON::Field(ignore: true)]
    property? expand_present : Bool = false

    @[JSON::Field(key: "instructions_email", type: String?, presence: true, ignore_serialize: instructions_email.nil? && !instructions_email_present?)]
    property instructions_email : String?

    @[JSON::Field(ignore: true)]
    property? instructions_email_present : Bool = false

    @[JSON::Field(key: "metadata", type: PostAccountRequestMetadata?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : PostAccountRequestMetadata?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    @[JSON::Field(key: "payment_intent", type: String?, presence: true, ignore_serialize: payment_intent.nil? && !payment_intent_present?)]
    getter payment_intent : String?

    @[JSON::Field(ignore: true)]
    property? payment_intent_present : Bool = false

    @[JSON::Field(key: "reason", type: String?, presence: true, ignore_serialize: reason.nil? && !reason_present?)]
    getter reason : String?

    @[JSON::Field(ignore: true)]
    property? reason_present : Bool = false

    ENUM_VALIDATOR_FOR_REASON = EnumValidator.new("reason", "String", ["duplicate", "fraudulent", "requested_by_customer"])

    @[JSON::Field(key: "refund_application_fee", type: Bool?, presence: true, ignore_serialize: refund_application_fee.nil? && !refund_application_fee_present?)]
    property refund_application_fee : Bool?

    @[JSON::Field(ignore: true)]
    property? refund_application_fee_present : Bool = false

    @[JSON::Field(key: "reverse_transfer", type: Bool?, presence: true, ignore_serialize: reverse_transfer.nil? && !reverse_transfer_present?)]
    property reverse_transfer : Bool?

    @[JSON::Field(ignore: true)]
    property? reverse_transfer_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Optional properties
      @amount : Int64? = nil, 
      @expand : Array(String)? = nil, 
      @instructions_email : String? = nil, 
      @metadata : PostAccountRequestMetadata? = nil, 
      @payment_intent : String? = nil, 
      @reason : String? = nil, 
      @refund_application_fee : Bool? = nil, 
      @reverse_transfer : Bool? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@payment_intent.nil? && @payment_intent.to_s.size > 5000
        invalid_properties.push("invalid value for \"payment_intent\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_REASON.error_message) unless ENUM_VALIDATOR_FOR_REASON.valid?(@reason)

      if !@reason.nil? && @reason.to_s.size > 5000
        invalid_properties.push("invalid value for \"reason\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@payment_intent.nil? && @payment_intent.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_REASON.valid?(@reason)
      return false if !@reason.nil? && @reason.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] payment_intent Value to be assigned
    def payment_intent=(payment_intent)
      if !payment_intent.nil? && payment_intent.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"payment_intent\", the character length must be smaller than or equal to 5000.")
      end

      @payment_intent = payment_intent
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reason Object to be assigned
    def reason=(reason)
      ENUM_VALIDATOR_FOR_REASON.valid!(reason)
      @reason = reason
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
    def_equals_and_hash(@amount, @expand, @instructions_email, @metadata, @payment_intent, @reason, @refund_application_fee, @reverse_transfer)
  end
end
