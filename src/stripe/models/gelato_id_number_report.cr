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
  # Result from an id_number check
  class GelatoIdNumberReport
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # Status of this `id_number` check.
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil

    ENUM_VALIDATOR_FOR_STATUS = OpenApi::EnumValidator.new("status", "String", ["unverified", "verified"])

    # Optional properties

    @[JSON::Field(key: "dob", type: Stripe::GelatoIdNumberReportDob?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: dob.nil? && !dob_present?)]
    getter dob : Stripe::GelatoIdNumberReportDob? = nil

    @[JSON::Field(ignore: true)]
    property? dob_present : Bool = false

    @[JSON::Field(key: "error", type: Stripe::GelatoIdNumberReportError1?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: error.nil? && !error_present?)]
    getter error : Stripe::GelatoIdNumberReportError1? = nil

    @[JSON::Field(ignore: true)]
    property? error_present : Bool = false

    # First name.
    @[JSON::Field(key: "first_name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: first_name.nil? && !first_name_present?)]
    getter first_name : String? = nil

    @[JSON::Field(ignore: true)]
    property? first_name_present : Bool = false

    # ID number.
    @[JSON::Field(key: "id_number", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: id_number.nil? && !id_number_present?)]
    getter id_number : String? = nil

    @[JSON::Field(ignore: true)]
    property? id_number_present : Bool = false

    # Type of ID number.
    @[JSON::Field(key: "id_number_type", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: id_number_type.nil? && !id_number_type_present?)]
    getter id_number_type : String? = nil

    @[JSON::Field(ignore: true)]
    property? id_number_type_present : Bool = false

    ENUM_VALIDATOR_FOR_ID_NUMBER_TYPE = OpenApi::EnumValidator.new("id_number_type", "String", ["br_cpf", "sg_nric", "us_ssn"])

    # Last name.
    @[JSON::Field(key: "last_name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: last_name.nil? && !last_name_present?)]
    getter last_name : String? = nil

    @[JSON::Field(ignore: true)]
    property? last_name_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @status : String? = nil,
      # Optional properties
      @dob : Stripe::GelatoIdNumberReportDob? = nil,
      @error : Stripe::GelatoIdNumberReportError1? = nil,
      @first_name : String? = nil,
      @id_number : String? = nil,
      @id_number_type : String? = nil,
      @last_name : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_STATUS.error_message) unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status, false)
      if _dob = @dob
        invalid_properties.concat(_dob.list_invalid_properties_for("dob")) if _dob.is_a?(OpenApi::Validatable)
      end
      if _error = @error
        invalid_properties.concat(_error.list_invalid_properties_for("error")) if _error.is_a?(OpenApi::Validatable)
      end
      if _first_name = @first_name
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("first_name", _first_name.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _id_number = @id_number
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id_number", _id_number.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_ID_NUMBER_TYPE.error_message) unless ENUM_VALIDATOR_FOR_ID_NUMBER_TYPE.valid?(@id_number_type)
      if _last_name = @last_name
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("last_name", _last_name.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status, false)
      if _dob = @dob
        return false if _dob.is_a?(OpenApi::Validatable) && !_dob.valid?
      end
      if _error = @error
        return false if _error.is_a?(OpenApi::Validatable) && !_error.valid?
      end
      if _first_name = @first_name
        return false if _first_name.to_s.size > 5000
      end
      if _id_number = @id_number
        return false if _id_number.to_s.size > 5000
      end
      return false unless ENUM_VALIDATOR_FOR_ID_NUMBER_TYPE.valid?(@id_number_type)
      if _last_name = @last_name
        return false if _last_name.to_s.size > 5000
      end

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
    # @param [Object] dob Object to be assigned
    def dob=(dob : Stripe::GelatoIdNumberReportDob?)
      if dob.nil?
        return @dob = nil
      end
      _dob = dob.not_nil!
      _dob.validate if _dob.is_a?(OpenApi::Validatable)
      @dob = _dob
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] error Object to be assigned
    def error=(error : Stripe::GelatoIdNumberReportError1?)
      if error.nil?
        return @error = nil
      end
      _error = error.not_nil!
      _error.validate if _error.is_a?(OpenApi::Validatable)
      @error = _error
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] first_name Object to be assigned
    def first_name=(first_name : String?)
      if first_name.nil?
        return @first_name = nil
      end
      _first_name = first_name.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("first_name", _first_name.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @first_name = _first_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id_number Object to be assigned
    def id_number=(id_number : String?)
      if id_number.nil?
        return @id_number = nil
      end
      _id_number = id_number.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id_number", _id_number.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @id_number = _id_number
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id_number_type Object to be assigned
    def id_number_type=(id_number_type : String?)
      if id_number_type.nil?
        return @id_number_type = nil
      end
      _id_number_type = id_number_type.not_nil!
      ENUM_VALIDATOR_FOR_ID_NUMBER_TYPE.valid!(_id_number_type)
      @id_number_type = _id_number_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last_name Object to be assigned
    def last_name=(last_name : String?)
      if last_name.nil?
        return @last_name = nil
      end
      _last_name = last_name.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("last_name", _last_name.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @last_name = _last_name
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@status, @dob, @dob_present, @error, @error_present, @first_name, @first_name_present, @id_number, @id_number_present, @id_number_type, @id_number_type_present, @last_name, @last_name_present)
  end
end
