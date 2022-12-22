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
  class SourceTypeCardPresent
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "application_cryptogram", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter application_cryptogram : String? = nil

    @[JSON::Field(key: "application_preferred_name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter application_preferred_name : String? = nil

    @[JSON::Field(key: "authorization_code", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: authorization_code.nil? && !authorization_code_present?)]
    getter authorization_code : String? = nil

    @[JSON::Field(ignore: true)]
    property? authorization_code_present : Bool = false

    @[JSON::Field(key: "authorization_response_code", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter authorization_response_code : String? = nil

    @[JSON::Field(key: "brand", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: brand.nil? && !brand_present?)]
    getter brand : String? = nil

    @[JSON::Field(ignore: true)]
    property? brand_present : Bool = false

    @[JSON::Field(key: "country", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: country.nil? && !country_present?)]
    getter country : String? = nil

    @[JSON::Field(ignore: true)]
    property? country_present : Bool = false

    @[JSON::Field(key: "cvm_type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter cvm_type : String? = nil

    @[JSON::Field(key: "data_type", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: data_type.nil? && !data_type_present?)]
    getter data_type : String? = nil

    @[JSON::Field(ignore: true)]
    property? data_type_present : Bool = false

    @[JSON::Field(key: "dedicated_file_name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter dedicated_file_name : String? = nil

    @[JSON::Field(key: "emv_auth_data", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter emv_auth_data : String? = nil

    @[JSON::Field(key: "evidence_customer_signature", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: evidence_customer_signature.nil? && !evidence_customer_signature_present?)]
    getter evidence_customer_signature : String? = nil

    @[JSON::Field(ignore: true)]
    property? evidence_customer_signature_present : Bool = false

    @[JSON::Field(key: "evidence_transaction_certificate", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: evidence_transaction_certificate.nil? && !evidence_transaction_certificate_present?)]
    getter evidence_transaction_certificate : String? = nil

    @[JSON::Field(ignore: true)]
    property? evidence_transaction_certificate_present : Bool = false

    @[JSON::Field(key: "exp_month", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: exp_month.nil? && !exp_month_present?)]
    getter exp_month : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? exp_month_present : Bool = false

    @[JSON::Field(key: "exp_year", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: exp_year.nil? && !exp_year_present?)]
    getter exp_year : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? exp_year_present : Bool = false

    @[JSON::Field(key: "fingerprint", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter fingerprint : String? = nil

    @[JSON::Field(key: "funding", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: funding.nil? && !funding_present?)]
    getter funding : String? = nil

    @[JSON::Field(ignore: true)]
    property? funding_present : Bool = false

    @[JSON::Field(key: "last4", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: last4.nil? && !last4_present?)]
    getter last4 : String? = nil

    @[JSON::Field(ignore: true)]
    property? last4_present : Bool = false

    @[JSON::Field(key: "pos_device_id", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: pos_device_id.nil? && !pos_device_id_present?)]
    getter pos_device_id : String? = nil

    @[JSON::Field(ignore: true)]
    property? pos_device_id_present : Bool = false

    @[JSON::Field(key: "pos_entry_mode", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter pos_entry_mode : String? = nil

    @[JSON::Field(key: "read_method", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: read_method.nil? && !read_method_present?)]
    getter read_method : String? = nil

    @[JSON::Field(ignore: true)]
    property? read_method_present : Bool = false

    @[JSON::Field(key: "reader", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: reader.nil? && !reader_present?)]
    getter reader : String? = nil

    @[JSON::Field(ignore: true)]
    property? reader_present : Bool = false

    @[JSON::Field(key: "terminal_verification_results", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter terminal_verification_results : String? = nil

    @[JSON::Field(key: "transaction_status_information", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter transaction_status_information : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @application_cryptogram : String? = nil,
      @application_preferred_name : String? = nil,
      @authorization_code : String? = nil,
      @authorization_response_code : String? = nil,
      @brand : String? = nil,
      @country : String? = nil,
      @cvm_type : String? = nil,
      @data_type : String? = nil,
      @dedicated_file_name : String? = nil,
      @emv_auth_data : String? = nil,
      @evidence_customer_signature : String? = nil,
      @evidence_transaction_certificate : String? = nil,
      @exp_month : Int64? = nil,
      @exp_year : Int64? = nil,
      @fingerprint : String? = nil,
      @funding : String? = nil,
      @last4 : String? = nil,
      @pos_device_id : String? = nil,
      @pos_entry_mode : String? = nil,
      @read_method : String? = nil,
      @reader : String? = nil,
      @terminal_verification_results : String? = nil,
      @transaction_status_information : String? = nil
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
    # @param [Object] application_cryptogram Object to be assigned
    def application_cryptogram=(application_cryptogram : String?)
      if application_cryptogram.nil?
        return @application_cryptogram = nil
      end
      _application_cryptogram = application_cryptogram.not_nil!
      @application_cryptogram = _application_cryptogram
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] application_preferred_name Object to be assigned
    def application_preferred_name=(application_preferred_name : String?)
      if application_preferred_name.nil?
        return @application_preferred_name = nil
      end
      _application_preferred_name = application_preferred_name.not_nil!
      @application_preferred_name = _application_preferred_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] authorization_code Object to be assigned
    def authorization_code=(authorization_code : String?)
      if authorization_code.nil?
        return @authorization_code = nil
      end
      _authorization_code = authorization_code.not_nil!
      @authorization_code = _authorization_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] authorization_response_code Object to be assigned
    def authorization_response_code=(authorization_response_code : String?)
      if authorization_response_code.nil?
        return @authorization_response_code = nil
      end
      _authorization_response_code = authorization_response_code.not_nil!
      @authorization_response_code = _authorization_response_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] brand Object to be assigned
    def brand=(brand : String?)
      if brand.nil?
        return @brand = nil
      end
      _brand = brand.not_nil!
      @brand = _brand
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] country Object to be assigned
    def country=(country : String?)
      if country.nil?
        return @country = nil
      end
      _country = country.not_nil!
      @country = _country
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cvm_type Object to be assigned
    def cvm_type=(cvm_type : String?)
      if cvm_type.nil?
        return @cvm_type = nil
      end
      _cvm_type = cvm_type.not_nil!
      @cvm_type = _cvm_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] data_type Object to be assigned
    def data_type=(data_type : String?)
      if data_type.nil?
        return @data_type = nil
      end
      _data_type = data_type.not_nil!
      @data_type = _data_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] dedicated_file_name Object to be assigned
    def dedicated_file_name=(dedicated_file_name : String?)
      if dedicated_file_name.nil?
        return @dedicated_file_name = nil
      end
      _dedicated_file_name = dedicated_file_name.not_nil!
      @dedicated_file_name = _dedicated_file_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] emv_auth_data Object to be assigned
    def emv_auth_data=(emv_auth_data : String?)
      if emv_auth_data.nil?
        return @emv_auth_data = nil
      end
      _emv_auth_data = emv_auth_data.not_nil!
      @emv_auth_data = _emv_auth_data
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] evidence_customer_signature Object to be assigned
    def evidence_customer_signature=(evidence_customer_signature : String?)
      if evidence_customer_signature.nil?
        return @evidence_customer_signature = nil
      end
      _evidence_customer_signature = evidence_customer_signature.not_nil!
      @evidence_customer_signature = _evidence_customer_signature
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] evidence_transaction_certificate Object to be assigned
    def evidence_transaction_certificate=(evidence_transaction_certificate : String?)
      if evidence_transaction_certificate.nil?
        return @evidence_transaction_certificate = nil
      end
      _evidence_transaction_certificate = evidence_transaction_certificate.not_nil!
      @evidence_transaction_certificate = _evidence_transaction_certificate
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] exp_month Object to be assigned
    def exp_month=(exp_month : Int64?)
      if exp_month.nil?
        return @exp_month = nil
      end
      _exp_month = exp_month.not_nil!
      @exp_month = _exp_month
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] exp_year Object to be assigned
    def exp_year=(exp_year : Int64?)
      if exp_year.nil?
        return @exp_year = nil
      end
      _exp_year = exp_year.not_nil!
      @exp_year = _exp_year
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fingerprint Object to be assigned
    def fingerprint=(fingerprint : String?)
      if fingerprint.nil?
        return @fingerprint = nil
      end
      _fingerprint = fingerprint.not_nil!
      @fingerprint = _fingerprint
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] funding Object to be assigned
    def funding=(funding : String?)
      if funding.nil?
        return @funding = nil
      end
      _funding = funding.not_nil!
      @funding = _funding
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last4 Object to be assigned
    def last4=(last4 : String?)
      if last4.nil?
        return @last4 = nil
      end
      _last4 = last4.not_nil!
      @last4 = _last4
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pos_device_id Object to be assigned
    def pos_device_id=(pos_device_id : String?)
      if pos_device_id.nil?
        return @pos_device_id = nil
      end
      _pos_device_id = pos_device_id.not_nil!
      @pos_device_id = _pos_device_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pos_entry_mode Object to be assigned
    def pos_entry_mode=(pos_entry_mode : String?)
      if pos_entry_mode.nil?
        return @pos_entry_mode = nil
      end
      _pos_entry_mode = pos_entry_mode.not_nil!
      @pos_entry_mode = _pos_entry_mode
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] read_method Object to be assigned
    def read_method=(read_method : String?)
      if read_method.nil?
        return @read_method = nil
      end
      _read_method = read_method.not_nil!
      @read_method = _read_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reader Object to be assigned
    def reader=(reader : String?)
      if reader.nil?
        return @reader = nil
      end
      _reader = reader.not_nil!
      @reader = _reader
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] terminal_verification_results Object to be assigned
    def terminal_verification_results=(terminal_verification_results : String?)
      if terminal_verification_results.nil?
        return @terminal_verification_results = nil
      end
      _terminal_verification_results = terminal_verification_results.not_nil!
      @terminal_verification_results = _terminal_verification_results
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transaction_status_information Object to be assigned
    def transaction_status_information=(transaction_status_information : String?)
      if transaction_status_information.nil?
        return @transaction_status_information = nil
      end
      _transaction_status_information = transaction_status_information.not_nil!
      @transaction_status_information = _transaction_status_information
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@application_cryptogram, @application_preferred_name, @authorization_code, @authorization_code_present, @authorization_response_code, @brand, @brand_present, @country, @country_present, @cvm_type, @data_type, @data_type_present, @dedicated_file_name, @emv_auth_data, @evidence_customer_signature, @evidence_customer_signature_present, @evidence_transaction_certificate, @evidence_transaction_certificate_present, @exp_month, @exp_month_present, @exp_year, @exp_year_present, @fingerprint, @funding, @funding_present, @last4, @last4_present, @pos_device_id, @pos_device_id_present, @pos_entry_mode, @read_method, @read_method_present, @reader, @reader_present, @terminal_verification_results, @transaction_status_information)
  end
end
