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
  # This is an object representing a file hosted on Stripe's servers. The file may have been uploaded by yourself using the [create file](https://stripe.com/docs/api#create_file) request (for example, when uploading dispute evidence) or it may have been created by Stripe (for example, the results of a [Sigma scheduled query](#scheduled_queries)).  Related guide: [File Upload Guide](https://stripe.com/docs/file-upload).
  class File
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

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
    ERROR_MESSAGE_FOR_PURPOSE = "invalid value for \"purpose\", must be one of [account_requirement, additional_verification, business_icon, business_logo, customer_signature, dispute_evidence, document_provider_identity_document, finance_report_run, identity_document, identity_document_downloadable, pci_document, selfie, sigma_scheduled_query, tax_document_user_upload, terminal_reader_splashscreen]."
    VALID_VALUES_FOR_PURPOSE  = String.static_array("account_requirement", "additional_verification", "business_icon", "business_logo", "customer_signature", "dispute_evidence", "document_provider_identity_document", "finance_report_run", "identity_document", "identity_document_downloadable", "pci_document", "selfie", "sigma_scheduled_query", "tax_document_user_upload", "terminal_reader_splashscreen")

    # The size in bytes of the file object.
    @[JSON::Field(key: "size", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter size : Int64? = nil

    # End of Required Properties

    # Optional Properties

    # The time at which the file expires and is no longer available in epoch seconds.
    @[JSON::Field(key: "expires_at", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: expires_at.nil? && !expires_at_present?)]
    getter expires_at : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? expires_at_present : Bool = false

    # A filename for the file, suitable for saving to a filesystem.
    @[JSON::Field(key: "filename", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: filename.nil? && !filename_present?)]
    getter filename : String? = nil
    MAX_LENGTH_FOR_FILENAME = 5000

    @[JSON::Field(ignore: true)]
    property? filename_present : Bool = false

    @[JSON::Field(key: "links", type: Stripe::FileFileLinkList?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: links.nil? && !links_present?)]
    getter links : Stripe::FileFileLinkList? = nil

    @[JSON::Field(ignore: true)]
    property? links_present : Bool = false

    # A user friendly title for the document.
    @[JSON::Field(key: "title", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: title.nil? && !title_present?)]
    getter title : String? = nil
    MAX_LENGTH_FOR_TITLE = 5000

    @[JSON::Field(ignore: true)]
    property? title_present : Bool = false

    # The type of the file returned (e.g., `csv`, `pdf`, `jpg`, or `png`).
    @[JSON::Field(key: "type", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: _type.nil? && !_type_present?)]
    getter _type : String? = nil
    MAX_LENGTH_FOR__TYPE = 5000

    @[JSON::Field(ignore: true)]
    property? _type_present : Bool = false

    # The URL from which the file can be downloaded using your live secret API key.
    @[JSON::Field(key: "url", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: url.nil? && !url_present?)]
    getter url : String? = nil
    MAX_LENGTH_FOR_URL = 5000

    @[JSON::Field(ignore: true)]
    property? url_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @created : Int64? = nil,
      @id : String? = nil,
      @object : String? = nil,
      @purpose : String? = nil,
      @size : Int64? = nil,
      # Optional properties
      @expires_at : Int64? = nil,
      @filename : String? = nil,
      @links : Stripe::FileFileLinkList? = nil,
      @title : String? = nil,
      @_type : String? = nil,
      @url : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

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

      unless (_filename = @filename).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("filename", _filename.to_s.size, MAX_LENGTH_FOR_FILENAME)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_links = @links).nil?
        invalid_properties.concat(_links.list_invalid_properties_for("links")) if _links.is_a?(OpenApi::Validatable)
      end
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
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @created.nil?

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

      unless (_filename = @filename).nil?
        return false if _filename.to_s.size > MAX_LENGTH_FOR_FILENAME
      end

      unless (_links = @links).nil?
        return false if _links.is_a?(OpenApi::Validatable) && !_links.valid?
      end

      unless (_title = @title).nil?
        return false if _title.to_s.size > MAX_LENGTH_FOR_TITLE
      end

      unless (__type = @_type).nil?
        return false if __type.to_s.size > MAX_LENGTH_FOR__TYPE
      end

      unless (_url = @url).nil?
        return false if _url.to_s.size > MAX_LENGTH_FOR_URL
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] created Object to be assigned
    def created=(created : Int64?)
      if created.nil?
        raise ArgumentError.new("\"created\" is required and cannot be null")
      end
      _created = created.not_nil!
      @created = _created
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(id : String?)
      if id.nil?
        raise ArgumentError.new("\"id\" is required and cannot be null")
      end
      _id = id.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
      @id = _id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object : String?)
      if object.nil?
        raise ArgumentError.new("\"object\" is required and cannot be null")
      end
      _object = object.not_nil!
      OpenApi::EnumValidator.validate("object", _object, VALID_VALUES_FOR_OBJECT)
      @object = _object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] purpose Object to be assigned
    def purpose=(purpose : String?)
      if purpose.nil?
        raise ArgumentError.new("\"purpose\" is required and cannot be null")
      end
      _purpose = purpose.not_nil!
      OpenApi::EnumValidator.validate("purpose", _purpose, VALID_VALUES_FOR_PURPOSE)
      @purpose = _purpose
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] size Object to be assigned
    def size=(size : Int64?)
      if size.nil?
        raise ArgumentError.new("\"size\" is required and cannot be null")
      end
      _size = size.not_nil!
      @size = _size
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expires_at Object to be assigned
    def expires_at=(expires_at : Int64?)
      if expires_at.nil?
        return @expires_at = nil
      end
      _expires_at = expires_at.not_nil!
      @expires_at = _expires_at
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] filename Object to be assigned
    def filename=(filename : String?)
      if filename.nil?
        return @filename = nil
      end
      _filename = filename.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("filename", _filename.to_s.size, MAX_LENGTH_FOR_FILENAME)
      @filename = _filename
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] links Object to be assigned
    def links=(links : Stripe::FileFileLinkList?)
      if links.nil?
        return @links = nil
      end
      _links = links.not_nil!
      _links.validate if _links.is_a?(OpenApi::Validatable)
      @links = _links
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] title Object to be assigned
    def title=(title : String?)
      if title.nil?
        return @title = nil
      end
      _title = title.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("title", _title.to_s.size, MAX_LENGTH_FOR_TITLE)
      @title = _title
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type : String?)
      if _type.nil?
        return @_type = nil
      end
      __type = _type.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("_type", __type.to_s.size, MAX_LENGTH_FOR__TYPE)
      @_type = __type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] url Object to be assigned
    def url=(url : String?)
      if url.nil?
        return @url = nil
      end
      _url = url.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("url", _url.to_s.size, MAX_LENGTH_FOR_URL)
      @url = _url
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@created, @id, @object, @purpose, @size, @expires_at, @expires_at_present, @filename, @filename_present, @links, @links_present, @title, @title_present, @_type, @_type_present, @url, @url_present)
  end
end
