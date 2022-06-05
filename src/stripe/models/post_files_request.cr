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
  class PostFilesRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # A file to upload. The file should follow the specifications of RFC 2388 (which defines file transfers for the `multipart/form-data` protocol).
    @[JSON::Field(key: "file", type: String)]
    property file : String

    # The [purpose](https://stripe.com/docs/file-upload#uploading-a-file) of the uploaded file.
    @[JSON::Field(key: "purpose", type: String)]
    getter purpose : String

    ENUM_VALIDATOR_FOR_PURPOSE = EnumValidator.new("purpose", "String", ["account_requirement", "additional_verification", "business_icon", "business_logo", "customer_signature", "dispute_evidence", "identity_document", "pci_document", "tax_document_user_upload"])

    # Optional properties

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, presence: true, ignore_serialize: expand.nil? && !expand_present?)]
    property expand : Array(String)?

    @[JSON::Field(ignore: true)]
    property? expand_present : Bool = false

    @[JSON::Field(key: "file_link_data", type: FileLinkCreationParams?, presence: true, ignore_serialize: file_link_data.nil? && !file_link_data_present?)]
    property file_link_data : FileLinkCreationParams?

    @[JSON::Field(ignore: true)]
    property? file_link_data_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @file : String,
      @purpose : String,
      # Optional properties
      @expand : Array(String)? = nil,
      @file_link_data : FileLinkCreationParams? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_PURPOSE.error_message) unless ENUM_VALIDATOR_FOR_PURPOSE.valid?(@purpose, false)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_PURPOSE.valid?(@purpose, false)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] purpose Object to be assigned
    def purpose=(purpose)
      ENUM_VALIDATOR_FOR_PURPOSE.valid!(purpose, false)
      @purpose = purpose
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
    def_equals_and_hash(@file, @purpose, @expand, @file_link_data)
  end
end
