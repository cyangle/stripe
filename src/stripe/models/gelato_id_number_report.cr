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
  # Result from an id_number check
  @[JSON::Serializable::Options(emit_nulls: true)]
  class GelatoIdNumberReport
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Status of this `id_number` check.
    @[JSON::Field(key: "status", type: String)]
    getter status : String

    ENUM_VALIDATOR_FOR_STATUS = EnumValidator.new("status", "String", ["unverified", "verified"])

    # Optional properties

    @[JSON::Field(key: "dob", type: GelatoIdNumberReportDob?, presence: true, ignore_serialize: dob.nil? && !dob_present?)]
    property dob : GelatoIdNumberReportDob?

    @[JSON::Field(ignore: true)]
    property? dob_present : Bool = false

    @[JSON::Field(key: "error", type: GelatoIdNumberReportError1?, presence: true, ignore_serialize: error.nil? && !error_present?)]
    property error : GelatoIdNumberReportError1?

    @[JSON::Field(ignore: true)]
    property? error_present : Bool = false

    # First name.
    @[JSON::Field(key: "first_name", type: String?, presence: true, ignore_serialize: first_name.nil? && !first_name_present?)]
    getter first_name : String?

    @[JSON::Field(ignore: true)]
    property? first_name_present : Bool = false

    # ID number.
    @[JSON::Field(key: "id_number", type: String?, presence: true, ignore_serialize: id_number.nil? && !id_number_present?)]
    getter id_number : String?

    @[JSON::Field(ignore: true)]
    property? id_number_present : Bool = false

    # Type of ID number.
    @[JSON::Field(key: "id_number_type", type: String?, presence: true, ignore_serialize: id_number_type.nil? && !id_number_type_present?)]
    getter id_number_type : String?

    @[JSON::Field(ignore: true)]
    property? id_number_type_present : Bool = false

    ENUM_VALIDATOR_FOR_ID_NUMBER_TYPE = EnumValidator.new("id_number_type", "String", ["br_cpf", "sg_nric", "us_ssn"])

    # Last name.
    @[JSON::Field(key: "last_name", type: String?, presence: true, ignore_serialize: last_name.nil? && !last_name_present?)]
    getter last_name : String?

    @[JSON::Field(ignore: true)]
    property? last_name_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @status : String,
      # Optional properties
      @dob : GelatoIdNumberReportDob? = nil,
      @error : GelatoIdNumberReportError1? = nil,
      @first_name : String? = nil,
      @id_number : String? = nil,
      @id_number_type : String? = nil,
      @last_name : String? = nil
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

      if !@id_number.nil? && @id_number.to_s.size > 5000
        invalid_properties.push("invalid value for \"id_number\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_ID_NUMBER_TYPE.error_message) unless ENUM_VALIDATOR_FOR_ID_NUMBER_TYPE.valid?(@id_number_type)

      if !@last_name.nil? && @last_name.to_s.size > 5000
        invalid_properties.push("invalid value for \"last_name\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status, false)
      return false if !@first_name.nil? && @first_name.to_s.size > 5000
      return false if !@id_number.nil? && @id_number.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_ID_NUMBER_TYPE.valid?(@id_number_type)
      return false if !@last_name.nil? && @last_name.to_s.size > 5000

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
    # @param [Object] id_number Value to be assigned
    def id_number=(id_number)
      if !id_number.nil? && id_number.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"id_number\", the character length must be smaller than or equal to 5000.")
      end

      @id_number = id_number
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id_number_type Object to be assigned
    def id_number_type=(id_number_type)
      ENUM_VALIDATOR_FOR_ID_NUMBER_TYPE.valid!(id_number_type)
      @id_number_type = id_number_type
    end

    # Custom attribute writer method with validation
    # @param [Object] last_name Value to be assigned
    def last_name=(last_name)
      if !last_name.nil? && last_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"last_name\", the character length must be smaller than or equal to 5000.")
      end

      @last_name = last_name
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
    def_equals_and_hash(@status, @dob, @error, @first_name, @id_number, @id_number_type, @last_name)
  end
end
