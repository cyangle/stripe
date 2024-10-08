#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./file_resource_file_link_list"

module Stripe
  # This object represents files hosted on Stripe's servers. You can upload files with the [create file](https://stripe.com/docs/api#create_file) request (for example, when uploading dispute evidence). Stripe also creates files independently (for example, the results of a [Sigma scheduled query](#scheduled_queries)).  Related guide: [File upload guide](https://stripe.com/docs/file-upload)
  class File
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # The file expires and isn't available at this time in epoch seconds.
    @[JSON::Field(key: "expires_at", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    getter expires_at : Int64? = nil

    # The suitable name for saving the file to a filesystem.
    @[JSON::Field(key: "filename", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter filename : String? = nil
    MAX_LENGTH_FOR_FILENAME = 5000

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [file]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("file")

    # The [purpose](https://stripe.com/docs/file-upload#uploading-a-file) of the uploaded file.
    @[JSON::Field(key: "purpose", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter purpose : String? = nil
    ERROR_MESSAGE_FOR_PURPOSE = "invalid value for \"purpose\", must be one of [account_requirement, additional_verification, business_icon, business_logo, customer_signature, dispute_evidence, document_provider_identity_document, finance_report_run, identity_document, identity_document_downloadable, issuing_regulatory_reporting, pci_document, selfie, sigma_scheduled_query, tax_document_user_upload, terminal_reader_splashscreen]."
    VALID_VALUES_FOR_PURPOSE  = String.static_array("account_requirement", "additional_verification", "business_icon", "business_logo", "customer_signature", "dispute_evidence", "document_provider_identity_document", "finance_report_run", "identity_document", "identity_document_downloadable", "issuing_regulatory_reporting", "pci_document", "selfie", "sigma_scheduled_query", "tax_document_user_upload", "terminal_reader_splashscreen")

    # The size of the file object in bytes.
    @[JSON::Field(key: "size", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter size : Int64? = nil

    # A suitable title for the document.
    @[JSON::Field(key: "title", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter title : String? = nil
    MAX_LENGTH_FOR_TITLE = 5000

    # The returned file type (for example, `csv`, `pdf`, `jpg`, or `png`).
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter _type : String? = nil
    MAX_LENGTH_FOR__TYPE = 5000

    # Use your live secret API key to download the file from this URL.
    @[JSON::Field(key: "url", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter url : String? = nil
    MAX_LENGTH_FOR_URL = 5000

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "links", type: Stripe::FileResourceFileLinkList?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: links.nil? && !links_present?)]
    getter links : Stripe::FileResourceFileLinkList? = nil

    @[JSON::Field(ignore: true)]
    property? links_present : Bool = false

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

      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      unless (_filename = @filename).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("filename", _filename.to_s.size, MAX_LENGTH_FOR_FILENAME)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      unless (_object = @object).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      invalid_properties.push("\"purpose\" is required and cannot be null") if @purpose.nil?

      unless (_purpose = @purpose).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_PURPOSE) unless OpenApi::EnumValidator.valid?(_purpose, VALID_VALUES_FOR_PURPOSE)
      end
      invalid_properties.push("\"size\" is required and cannot be null") if @size.nil?

      unless (_title = @title).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("title", _title.to_s.size, MAX_LENGTH_FOR_TITLE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (__type = @_type).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("_type", __type.to_s.size, MAX_LENGTH_FOR__TYPE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_url = @url).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("url", _url.to_s.size, MAX_LENGTH_FOR_URL)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_links = @links).nil?
        invalid_properties.concat(_links.list_invalid_properties_for("links")) if _links.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @created.nil?

      unless (_filename = @filename).nil?
        return false if _filename.to_s.size > MAX_LENGTH_FOR_FILENAME
      end

      return false if @id.nil?
      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      return false if @object.nil?
      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      return false if @purpose.nil?
      unless (_purpose = @purpose).nil?
        return false unless OpenApi::EnumValidator.valid?(_purpose, VALID_VALUES_FOR_PURPOSE)
      end

      return false if @size.nil?

      unless (_title = @title).nil?
        return false if _title.to_s.size > MAX_LENGTH_FOR_TITLE
      end

      unless (__type = @_type).nil?
        return false if __type.to_s.size > MAX_LENGTH_FOR__TYPE
      end

      unless (_url = @url).nil?
        return false if _url.to_s.size > MAX_LENGTH_FOR_URL
      end

      unless (_links = @links).nil?
        return false if _links.is_a?(OpenApi::Validatable) && !_links.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] created Object to be assigned
    def created=(new_value : Int64?)
      raise ArgumentError.new("\"created\" is required and cannot be null") if new_value.nil?

      @created = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expires_at Object to be assigned
    def expires_at=(new_value : Int64?)
      @expires_at = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] filename Object to be assigned
    def filename=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("filename", new_value.to_s.size, MAX_LENGTH_FOR_FILENAME)
      end

      @filename = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(new_value : String?)
      raise ArgumentError.new("\"id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("id", new_value.to_s.size, MAX_LENGTH_FOR_ID)
      end

      @id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(new_value : String?)
      raise ArgumentError.new("\"object\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("object", new_value, VALID_VALUES_FOR_OBJECT)
      end

      @object = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] purpose Object to be assigned
    def purpose=(new_value : String?)
      raise ArgumentError.new("\"purpose\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("purpose", new_value, VALID_VALUES_FOR_PURPOSE)
      end

      @purpose = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] size Object to be assigned
    def size=(new_value : Int64?)
      raise ArgumentError.new("\"size\" is required and cannot be null") if new_value.nil?

      @size = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] title Object to be assigned
    def title=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("title", new_value.to_s.size, MAX_LENGTH_FOR_TITLE)
      end

      @title = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("_type", new_value.to_s.size, MAX_LENGTH_FOR__TYPE)
      end

      @_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] url Object to be assigned
    def url=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("url", new_value.to_s.size, MAX_LENGTH_FOR_URL)
      end

      @url = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] links Object to be assigned
    def links=(new_value : Stripe::FileResourceFileLinkList?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @links = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@created, @expires_at, @filename, @id, @object, @purpose, @size, @title, @_type, @url, @links, @links_present)
  end
end
