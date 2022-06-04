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
  # Result from a document check
  @[JSON::Serializable::Options(emit_nulls: true)]
  class GelatoDocumentReport
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Status of this `document` check.
    @[JSON::Field(key: "status", type: String)]
    getter status : String

    ENUM_VALIDATOR_FOR_STATUS = EnumValidator.new("status", "String", ["unverified", "verified"])

    # Optional properties

    @[JSON::Field(key: "address", type: GelatoDocumentReportAddress?, presence: true, ignore_serialize: address.nil? && !address_present?)]
    property address : GelatoDocumentReportAddress?

    @[JSON::Field(ignore: true)]
    property? address_present : Bool = false

    @[JSON::Field(key: "dob", type: GelatoDocumentReportDob?, presence: true, ignore_serialize: dob.nil? && !dob_present?)]
    property dob : GelatoDocumentReportDob?

    @[JSON::Field(ignore: true)]
    property? dob_present : Bool = false

    @[JSON::Field(key: "error", type: GelatoDocumentReportError1?, presence: true, ignore_serialize: error.nil? && !error_present?)]
    property error : GelatoDocumentReportError1?

    @[JSON::Field(ignore: true)]
    property? error_present : Bool = false

    @[JSON::Field(key: "expiration_date", type: GelatoDocumentReportExpirationDate?, presence: true, ignore_serialize: expiration_date.nil? && !expiration_date_present?)]
    property expiration_date : GelatoDocumentReportExpirationDate?

    @[JSON::Field(ignore: true)]
    property? expiration_date_present : Bool = false

    # Array of [File](https://stripe.com/docs/api/files) ids containing images for this document.
    @[JSON::Field(key: "files", type: Array(String)?, presence: true, ignore_serialize: files.nil? && !files_present?)]
    property files : Array(String)?

    @[JSON::Field(ignore: true)]
    property? files_present : Bool = false

    # First name as it appears in the document.
    @[JSON::Field(key: "first_name", type: String?, presence: true, ignore_serialize: first_name.nil? && !first_name_present?)]
    getter first_name : String?

    @[JSON::Field(ignore: true)]
    property? first_name_present : Bool = false

    @[JSON::Field(key: "issued_date", type: GelatoDocumentReportIssuedDate?, presence: true, ignore_serialize: issued_date.nil? && !issued_date_present?)]
    property issued_date : GelatoDocumentReportIssuedDate?

    @[JSON::Field(ignore: true)]
    property? issued_date_present : Bool = false

    # Issuing country of the document.
    @[JSON::Field(key: "issuing_country", type: String?, presence: true, ignore_serialize: issuing_country.nil? && !issuing_country_present?)]
    getter issuing_country : String?

    @[JSON::Field(ignore: true)]
    property? issuing_country_present : Bool = false

    # Last name as it appears in the document.
    @[JSON::Field(key: "last_name", type: String?, presence: true, ignore_serialize: last_name.nil? && !last_name_present?)]
    getter last_name : String?

    @[JSON::Field(ignore: true)]
    property? last_name_present : Bool = false

    # Document ID number.
    @[JSON::Field(key: "number", type: String?, presence: true, ignore_serialize: number.nil? && !number_present?)]
    getter number : String?

    @[JSON::Field(ignore: true)]
    property? number_present : Bool = false

    # Type of the document.
    @[JSON::Field(key: "type", type: String?, presence: true, ignore_serialize: _type.nil? && !_type_present?)]
    getter _type : String?

    @[JSON::Field(ignore: true)]
    property? _type_present : Bool = false

    ENUM_VALIDATOR_FOR__TYPE = EnumValidator.new("_type", "String", ["driving_license", "id_card", "passport"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Required properties
      @status : String, 
      # Optional properties
      @address : GelatoDocumentReportAddress? = nil, 
      @dob : GelatoDocumentReportDob? = nil, 
      @error : GelatoDocumentReportError1? = nil, 
      @expiration_date : GelatoDocumentReportExpirationDate? = nil, 
      @files : Array(String)? = nil, 
      @first_name : String? = nil, 
      @issued_date : GelatoDocumentReportIssuedDate? = nil, 
      @issuing_country : String? = nil, 
      @last_name : String? = nil, 
      @number : String? = nil, 
      @_type : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_STATUS.error_message) unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status, false)

      if !@first_name.nil? && @first_name.to_s.size > 5000
        invalid_properties.push("invalid value for \"first_name\", the character length must be smaller than or equal to 5000.")
      end

      if !@issuing_country.nil? && @issuing_country.to_s.size > 5000
        invalid_properties.push("invalid value for \"issuing_country\", the character length must be smaller than or equal to 5000.")
      end

      if !@last_name.nil? && @last_name.to_s.size > 5000
        invalid_properties.push("invalid value for \"last_name\", the character length must be smaller than or equal to 5000.")
      end

      if !@number.nil? && @number.to_s.size > 5000
        invalid_properties.push("invalid value for \"number\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR__TYPE.error_message) unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status, false)
      return false if !@first_name.nil? && @first_name.to_s.size > 5000
      return false if !@issuing_country.nil? && @issuing_country.to_s.size > 5000
      return false if !@last_name.nil? && @last_name.to_s.size > 5000
      return false if !@number.nil? && @number.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      ENUM_VALIDATOR_FOR_STATUS.valid!(status, false)
      @status = status
    end

    # Custom attribute writer method with validation
    # @param [Object] first_name Value to be assigned
    def first_name=(first_name)
      if !first_name.nil? && first_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"first_name\", the character length must be smaller than or equal to 5000.")
      end

      @first_name = first_name
    end

    # Custom attribute writer method with validation
    # @param [Object] issuing_country Value to be assigned
    def issuing_country=(issuing_country)
      if !issuing_country.nil? && issuing_country.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"issuing_country\", the character length must be smaller than or equal to 5000.")
      end

      @issuing_country = issuing_country
    end

    # Custom attribute writer method with validation
    # @param [Object] last_name Value to be assigned
    def last_name=(last_name)
      if !last_name.nil? && last_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"last_name\", the character length must be smaller than or equal to 5000.")
      end

      @last_name = last_name
    end

    # Custom attribute writer method with validation
    # @param [Object] number Value to be assigned
    def number=(number)
      if !number.nil? && number.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"number\", the character length must be smaller than or equal to 5000.")
      end

      @number = number
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type)
      ENUM_VALIDATOR_FOR__TYPE.valid!(_type)
      @_type = _type
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
    def_equals_and_hash(@status, @address, @dob, @error, @expiration_date, @files, @first_name, @issued_date, @issuing_country, @last_name, @number, @_type)
  end
end
