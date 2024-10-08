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
  class SourceTypeWechat
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "prepay_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter prepay_id : String? = nil

    @[JSON::Field(key: "qr_code_url", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: qr_code_url.nil? && !qr_code_url_present?)]
    getter qr_code_url : String? = nil

    @[JSON::Field(ignore: true)]
    property? qr_code_url_present : Bool = false

    @[JSON::Field(key: "statement_descriptor", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter statement_descriptor : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @prepay_id : String? = nil,
      @qr_code_url : String? = nil,
      @statement_descriptor : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] prepay_id Object to be assigned
    def prepay_id=(new_value : String?)
      @prepay_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] qr_code_url Object to be assigned
    def qr_code_url=(new_value : String?)
      @qr_code_url = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor Object to be assigned
    def statement_descriptor=(new_value : String?)
      @statement_descriptor = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@prepay_id, @qr_code_url, @qr_code_url_present, @statement_descriptor)
  end
end
