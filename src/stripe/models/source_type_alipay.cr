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
  class SourceTypeAlipay
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "data_string", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: data_string.nil? && !data_string_present?)]
    getter data_string : String? = nil

    @[JSON::Field(ignore: true)]
    property? data_string_present : Bool = false

    @[JSON::Field(key: "native_url", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: native_url.nil? && !native_url_present?)]
    getter native_url : String? = nil

    @[JSON::Field(ignore: true)]
    property? native_url_present : Bool = false

    @[JSON::Field(key: "statement_descriptor", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: statement_descriptor.nil? && !statement_descriptor_present?)]
    getter statement_descriptor : String? = nil

    @[JSON::Field(ignore: true)]
    property? statement_descriptor_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @data_string : String? = nil,
      @native_url : String? = nil,
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
    # @param [Object] data_string Object to be assigned
    def data_string=(new_value : String?)
      @data_string = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] native_url Object to be assigned
    def native_url=(new_value : String?)
      @native_url = new_value
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
    def_equals_and_hash(@data_string, @data_string_present, @native_url, @native_url_present, @statement_descriptor, @statement_descriptor_present)
  end
end
