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
  # Result from a document check
  class GelatoDocumentReport
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # Status of this `document` check.
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil

    ENUM_VALIDATOR_FOR_STATUS = EnumValidator.new("status", "String", ["unverified", "verified"])

    # Optional properties

    @[JSON::Field(key: "address", type: Stripe::GelatoDocumentReportAddress?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: address.nil? && !address_present?)]
    getter address : Stripe::GelatoDocumentReportAddress? = nil

    @[JSON::Field(ignore: true)]
    property? address_present : Bool = false

    @[JSON::Field(key: "dob", type: Stripe::GelatoDocumentReportDob?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: dob.nil? && !dob_present?)]
    getter dob : Stripe::GelatoDocumentReportDob? = nil

    @[JSON::Field(ignore: true)]
    property? dob_present : Bool = false

    @[JSON::Field(key: "error", type: Stripe::GelatoDocumentReportError1?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: error.nil? && !error_present?)]
    getter error : Stripe::GelatoDocumentReportError1? = nil

    @[JSON::Field(ignore: true)]
    property? error_present : Bool = false

    @[JSON::Field(key: "expiration_date", type: Stripe::GelatoDocumentReportExpirationDate?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: expiration_date.nil? && !expiration_date_present?)]
    getter expiration_date : Stripe::GelatoDocumentReportExpirationDate? = nil

    @[JSON::Field(ignore: true)]
    property? expiration_date_present : Bool = false

    # Array of [File](https://stripe.com/docs/api/files) ids containing images for this document.
    @[JSON::Field(key: "files", type: Array(String)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: files.nil? && !files_present?)]
    getter files : Array(String)? = nil

    @[JSON::Field(ignore: true)]
    property? files_present : Bool = false

    # First name as it appears in the document.
    @[JSON::Field(key: "first_name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: first_name.nil? && !first_name_present?)]
    getter first_name : String? = nil

    @[JSON::Field(ignore: true)]
    property? first_name_present : Bool = false

    @[JSON::Field(key: "issued_date", type: Stripe::GelatoDocumentReportIssuedDate?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: issued_date.nil? && !issued_date_present?)]
    getter issued_date : Stripe::GelatoDocumentReportIssuedDate? = nil

    @[JSON::Field(ignore: true)]
    property? issued_date_present : Bool = false

    # Issuing country of the document.
    @[JSON::Field(key: "issuing_country", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: issuing_country.nil? && !issuing_country_present?)]
    getter issuing_country : String? = nil

    @[JSON::Field(ignore: true)]
    property? issuing_country_present : Bool = false

    # Last name as it appears in the document.
    @[JSON::Field(key: "last_name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: last_name.nil? && !last_name_present?)]
    getter last_name : String? = nil

    @[JSON::Field(ignore: true)]
    property? last_name_present : Bool = false

    # Document ID number.
    @[JSON::Field(key: "number", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: number.nil? && !number_present?)]
    getter number : String? = nil

    @[JSON::Field(ignore: true)]
    property? number_present : Bool = false

    # Type of the document.
    @[JSON::Field(key: "type", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: _type.nil? && !_type_present?)]
    getter _type : String? = nil

    @[JSON::Field(ignore: true)]
    property? _type_present : Bool = false

    ENUM_VALIDATOR_FOR__TYPE = EnumValidator.new("_type", "String", ["driving_license", "id_card", "passport"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @status : String? = nil,
      # Optional properties
      @address : Stripe::GelatoDocumentReportAddress? = nil,
      @dob : Stripe::GelatoDocumentReportDob? = nil,
      @error : Stripe::GelatoDocumentReportError1? = nil,
      @expiration_date : Stripe::GelatoDocumentReportExpirationDate? = nil,
      @files : Array(String)? = nil,
      @first_name : String? = nil,
      @issued_date : Stripe::GelatoDocumentReportIssuedDate? = nil,
      @issuing_country : String? = nil,
      @last_name : String? = nil,
      @number : String? = nil,
      @_type : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_STATUS.error_message) unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status, false)
      if _address = @address
        if _address.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_address.list_invalid_properties_for("address"))
        end
      end
      if _dob = @dob
        if _dob.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_dob.list_invalid_properties_for("dob"))
        end
      end
      if _error = @error
        if _error.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_error.list_invalid_properties_for("error"))
        end
      end
      if _expiration_date = @expiration_date
        if _expiration_date.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_expiration_date.list_invalid_properties_for("expiration_date"))
        end
      end

      if _first_name = @first_name
        if _first_name.to_s.size > 5000
          invalid_properties.push("invalid value for \"first_name\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _issued_date = @issued_date
        if _issued_date.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_issued_date.list_invalid_properties_for("issued_date"))
        end
      end
      if _issuing_country = @issuing_country
        if _issuing_country.to_s.size > 5000
          invalid_properties.push("invalid value for \"issuing_country\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _last_name = @last_name
        if _last_name.to_s.size > 5000
          invalid_properties.push("invalid value for \"last_name\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _number = @number
        if _number.to_s.size > 5000
          invalid_properties.push("invalid value for \"number\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR__TYPE.error_message) unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status, false)
      if _address = @address
        if _address.is_a?(OpenApi::Validatable)
          return false unless _address.valid?
        end
      end
      if _dob = @dob
        if _dob.is_a?(OpenApi::Validatable)
          return false unless _dob.valid?
        end
      end
      if _error = @error
        if _error.is_a?(OpenApi::Validatable)
          return false unless _error.valid?
        end
      end
      if _expiration_date = @expiration_date
        if _expiration_date.is_a?(OpenApi::Validatable)
          return false unless _expiration_date.valid?
        end
      end

      if _first_name = @first_name
        return false if _first_name.to_s.size > 5000
      end
      if _issued_date = @issued_date
        if _issued_date.is_a?(OpenApi::Validatable)
          return false unless _issued_date.valid?
        end
      end
      if _issuing_country = @issuing_country
        return false if _issuing_country.to_s.size > 5000
      end
      if _last_name = @last_name
        return false if _last_name.to_s.size > 5000
      end
      if _number = @number
        return false if _number.to_s.size > 5000
      end
      return false unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status : String?)
      if status.nil?
        raise ArgumentError.new("\"status\" is required and cannot be null")
      end
      _status = status.not_nil!
      ENUM_VALIDATOR_FOR_STATUS.valid!(_status)
      @status = _status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address Object to be assigned
    def address=(address : Stripe::GelatoDocumentReportAddress?)
      if address.nil?
        return @address = nil
      end
      _address = address.not_nil!
      if _address.is_a?(OpenApi::Validatable)
        _address.validate
      end
      @address = _address
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] dob Object to be assigned
    def dob=(dob : Stripe::GelatoDocumentReportDob?)
      if dob.nil?
        return @dob = nil
      end
      _dob = dob.not_nil!
      if _dob.is_a?(OpenApi::Validatable)
        _dob.validate
      end
      @dob = _dob
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] error Object to be assigned
    def error=(error : Stripe::GelatoDocumentReportError1?)
      if error.nil?
        return @error = nil
      end
      _error = error.not_nil!
      if _error.is_a?(OpenApi::Validatable)
        _error.validate
      end
      @error = _error
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expiration_date Object to be assigned
    def expiration_date=(expiration_date : Stripe::GelatoDocumentReportExpirationDate?)
      if expiration_date.nil?
        return @expiration_date = nil
      end
      _expiration_date = expiration_date.not_nil!
      if _expiration_date.is_a?(OpenApi::Validatable)
        _expiration_date.validate
      end
      @expiration_date = _expiration_date
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] files Object to be assigned
    def files=(files : Array(String)?)
      if files.nil?
        return @files = nil
      end
      _files = files.not_nil!
      @files = _files
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] first_name Object to be assigned
    def first_name=(first_name : String?)
      if first_name.nil?
        return @first_name = nil
      end
      _first_name = first_name.not_nil!
      if _first_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"first_name\", the character length must be smaller than or equal to 5000.")
      end

      @first_name = _first_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] issued_date Object to be assigned
    def issued_date=(issued_date : Stripe::GelatoDocumentReportIssuedDate?)
      if issued_date.nil?
        return @issued_date = nil
      end
      _issued_date = issued_date.not_nil!
      if _issued_date.is_a?(OpenApi::Validatable)
        _issued_date.validate
      end
      @issued_date = _issued_date
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] issuing_country Object to be assigned
    def issuing_country=(issuing_country : String?)
      if issuing_country.nil?
        return @issuing_country = nil
      end
      _issuing_country = issuing_country.not_nil!
      if _issuing_country.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"issuing_country\", the character length must be smaller than or equal to 5000.")
      end

      @issuing_country = _issuing_country
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last_name Object to be assigned
    def last_name=(last_name : String?)
      if last_name.nil?
        return @last_name = nil
      end
      _last_name = last_name.not_nil!
      if _last_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"last_name\", the character length must be smaller than or equal to 5000.")
      end

      @last_name = _last_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] number Object to be assigned
    def number=(number : String?)
      if number.nil?
        return @number = nil
      end
      _number = number.not_nil!
      if _number.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"number\", the character length must be smaller than or equal to 5000.")
      end

      @number = _number
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type : String?)
      if _type.nil?
        return @_type = nil
      end
      __type = _type.not_nil!
      ENUM_VALIDATOR_FOR__TYPE.valid!(__type)
      @_type = __type
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@status, @address, @address_present, @dob, @dob_present, @error, @error_present, @expiration_date, @expiration_date_present, @files, @files_present, @first_name, @first_name_present, @issued_date, @issued_date_present, @issuing_country, @issuing_country_present, @last_name, @last_name_present, @number, @number_present, @_type, @_type_present)
  end
end
