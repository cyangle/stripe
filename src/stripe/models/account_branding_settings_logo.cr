#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./file"
require "./file_resource_file_link_list"

module Stripe
  # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) A logo for the account that will be used in Checkout instead of the icon and without the account's name next to it if provided. Must be at least 128px x 128px.
  class AccountBrandingSettingsLogo
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property created : Int64? = nil

    # The file expires and isn't available at this time in epoch seconds.
    @[JSON::Field(key: "expires_at", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    property expires_at : Int64? = nil

    # The suitable name for saving the file to a filesystem.
    @[JSON::Field(key: "filename", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property filename : String? = nil
    MAX_LENGTH_FOR_FILENAME = 5000

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [file]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("file")

    # The [purpose](https://stripe.com/docs/file-upload#uploading-a-file) of the uploaded file.
    @[JSON::Field(key: "purpose", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property purpose : String? = nil
    ERROR_MESSAGE_FOR_PURPOSE = "invalid value for \"purpose\", must be one of [account_requirement, additional_verification, business_icon, business_logo, customer_signature, dispute_evidence, document_provider_identity_document, finance_report_run, identity_document, identity_document_downloadable, issuing_regulatory_reporting, pci_document, selfie, sigma_scheduled_query, tax_document_user_upload, terminal_reader_splashscreen]."
    VALID_VALUES_FOR_PURPOSE  = String.static_array("account_requirement", "additional_verification", "business_icon", "business_logo", "customer_signature", "dispute_evidence", "document_provider_identity_document", "finance_report_run", "identity_document", "identity_document_downloadable", "issuing_regulatory_reporting", "pci_document", "selfie", "sigma_scheduled_query", "tax_document_user_upload", "terminal_reader_splashscreen")

    # The size of the file object in bytes.
    @[JSON::Field(key: "size", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property size : Int64? = nil

    # A suitable title for the document.
    @[JSON::Field(key: "title", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property title : String? = nil
    MAX_LENGTH_FOR_TITLE = 5000

    # The returned file type (for example, `csv`, `pdf`, `jpg`, or `png`).
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property _type : String? = nil
    MAX_LENGTH_FOR__TYPE = 5000

    # Use your live secret API key to download the file from this URL.
    @[JSON::Field(key: "url", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property url : String? = nil
    MAX_LENGTH_FOR_URL = 5000

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "links", type: Stripe::FileResourceFileLinkList?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: links.nil? && !links_present?)]
    property links : Stripe::FileResourceFileLinkList? = nil

    @[JSON::Field(ignore: true)]
    property? links_present : Bool = false

    # List of class defined in anyOf (OpenAPI v3)
    def self.openapi_any_of
      [
        Stripe::File,
        String,
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @created : Int64? = nil,
      @expires_at : Int64? = nil,
      @filename : String? = nil,
      @id : String? = nil,
      @object : String? = nil,
      @purpose : String? = nil,
      @size : Int64? = nil,
      @title : String? = nil,
      @_type : String? = nil,
      @url : String? = nil,
      # Optional properties
      @links : Stripe::FileResourceFileLinkList? = nil
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
      _any_of_found = false
      json_string : String = self.to_json
      _any_of_found = self.class.openapi_any_of.any? do |_class|
        _any_of = begin
          _class.from_json(json_string)
        rescue
          nil
        end

        !_any_of.nil? && _any_of.not_nil!.valid?
      end
      return false if !_any_of_found

      true
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@created, @expires_at, @filename, @id, @object, @purpose, @size, @title, @_type, @url, @links, @links_present)
  end
end
