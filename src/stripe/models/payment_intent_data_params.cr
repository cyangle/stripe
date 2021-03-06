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
  # A subset of parameters to be passed to PaymentIntent creation for Checkout Sessions in `payment` mode.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class PaymentIntentDataParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "application_fee_amount", type: Int64?, presence: true, ignore_serialize: application_fee_amount.nil? && !application_fee_amount_present?)]
    property application_fee_amount : Int64?

    @[JSON::Field(ignore: true)]
    property? application_fee_amount_present : Bool = false

    @[JSON::Field(key: "capture_method", type: String?, presence: true, ignore_serialize: capture_method.nil? && !capture_method_present?)]
    getter capture_method : String?

    @[JSON::Field(ignore: true)]
    property? capture_method_present : Bool = false

    ENUM_VALIDATOR_FOR_CAPTURE_METHOD = EnumValidator.new("capture_method", "String", ["automatic", "manual"])

    @[JSON::Field(key: "description", type: String?, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String?

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    @[JSON::Field(key: "on_behalf_of", type: String?, presence: true, ignore_serialize: on_behalf_of.nil? && !on_behalf_of_present?)]
    property on_behalf_of : String?

    @[JSON::Field(ignore: true)]
    property? on_behalf_of_present : Bool = false

    @[JSON::Field(key: "receipt_email", type: String?, presence: true, ignore_serialize: receipt_email.nil? && !receipt_email_present?)]
    property receipt_email : String?

    @[JSON::Field(ignore: true)]
    property? receipt_email_present : Bool = false

    @[JSON::Field(key: "setup_future_usage", type: String?, presence: true, ignore_serialize: setup_future_usage.nil? && !setup_future_usage_present?)]
    getter setup_future_usage : String?

    @[JSON::Field(ignore: true)]
    property? setup_future_usage_present : Bool = false

    ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE = EnumValidator.new("setup_future_usage", "String", ["off_session", "on_session"])

    @[JSON::Field(key: "shipping", type: Shipping1?, presence: true, ignore_serialize: shipping.nil? && !shipping_present?)]
    property shipping : Shipping1?

    @[JSON::Field(ignore: true)]
    property? shipping_present : Bool = false

    @[JSON::Field(key: "statement_descriptor", type: String?, presence: true, ignore_serialize: statement_descriptor.nil? && !statement_descriptor_present?)]
    getter statement_descriptor : String?

    @[JSON::Field(ignore: true)]
    property? statement_descriptor_present : Bool = false

    @[JSON::Field(key: "statement_descriptor_suffix", type: String?, presence: true, ignore_serialize: statement_descriptor_suffix.nil? && !statement_descriptor_suffix_present?)]
    getter statement_descriptor_suffix : String?

    @[JSON::Field(ignore: true)]
    property? statement_descriptor_suffix_present : Bool = false

    @[JSON::Field(key: "transfer_data", type: TransferDataParams?, presence: true, ignore_serialize: transfer_data.nil? && !transfer_data_present?)]
    property transfer_data : TransferDataParams?

    @[JSON::Field(ignore: true)]
    property? transfer_data_present : Bool = false

    @[JSON::Field(key: "transfer_group", type: String?, presence: true, ignore_serialize: transfer_group.nil? && !transfer_group_present?)]
    property transfer_group : String?

    @[JSON::Field(ignore: true)]
    property? transfer_group_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @application_fee_amount : Int64? = nil,
      @capture_method : String? = nil,
      @description : String? = nil,
      @metadata : Hash(String, String)? = nil,
      @on_behalf_of : String? = nil,
      @receipt_email : String? = nil,
      @setup_future_usage : String? = nil,
      @shipping : Shipping1? = nil,
      @statement_descriptor : String? = nil,
      @statement_descriptor_suffix : String? = nil,
      @transfer_data : TransferDataParams? = nil,
      @transfer_group : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_CAPTURE_METHOD.error_message) unless ENUM_VALIDATOR_FOR_CAPTURE_METHOD.valid?(@capture_method)

      if !@description.nil? && @description.to_s.size > 1000
        invalid_properties.push("invalid value for \"description\", the character length must be smaller than or equal to 1000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.error_message) unless ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.valid?(@setup_future_usage)

      if !@statement_descriptor.nil? && @statement_descriptor.to_s.size > 22
        invalid_properties.push("invalid value for \"statement_descriptor\", the character length must be smaller than or equal to 22.")
      end

      if !@statement_descriptor_suffix.nil? && @statement_descriptor_suffix.to_s.size > 22
        invalid_properties.push("invalid value for \"statement_descriptor_suffix\", the character length must be smaller than or equal to 22.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_CAPTURE_METHOD.valid?(@capture_method)
      return false if !@description.nil? && @description.to_s.size > 1000
      return false unless ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.valid?(@setup_future_usage)
      return false if !@statement_descriptor.nil? && @statement_descriptor.to_s.size > 22
      return false if !@statement_descriptor_suffix.nil? && @statement_descriptor_suffix.to_s.size > 22

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] capture_method Object to be assigned
    def capture_method=(capture_method : String?)
      ENUM_VALIDATOR_FOR_CAPTURE_METHOD.valid!(capture_method)
      @capture_method = capture_method
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description : String?)
      if !description.nil? && description.to_s.size > 1000
        raise ArgumentError.new("invalid value for \"description\", the character length must be smaller than or equal to 1000.")
      end

      @description = description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] setup_future_usage Object to be assigned
    def setup_future_usage=(setup_future_usage : String?)
      ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.valid!(setup_future_usage)
      @setup_future_usage = setup_future_usage
    end

    # Custom attribute writer method with validation
    # @param [Object] statement_descriptor Value to be assigned
    def statement_descriptor=(statement_descriptor : String?)
      if !statement_descriptor.nil? && statement_descriptor.to_s.size > 22
        raise ArgumentError.new("invalid value for \"statement_descriptor\", the character length must be smaller than or equal to 22.")
      end

      @statement_descriptor = statement_descriptor
    end

    # Custom attribute writer method with validation
    # @param [Object] statement_descriptor_suffix Value to be assigned
    def statement_descriptor_suffix=(statement_descriptor_suffix : String?)
      if !statement_descriptor_suffix.nil? && statement_descriptor_suffix.to_s.size > 22
        raise ArgumentError.new("invalid value for \"statement_descriptor_suffix\", the character length must be smaller than or equal to 22.")
      end

      @statement_descriptor_suffix = statement_descriptor_suffix
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
    def_equals_and_hash(@application_fee_amount, @application_fee_amount_present, @capture_method, @capture_method_present, @description, @description_present, @metadata, @metadata_present, @on_behalf_of, @on_behalf_of_present, @receipt_email, @receipt_email_present, @setup_future_usage, @setup_future_usage_present, @shipping, @shipping_present, @statement_descriptor, @statement_descriptor_present, @statement_descriptor_suffix, @statement_descriptor_suffix_present, @transfer_data, @transfer_data_present, @transfer_group, @transfer_group_present)
  end
end
