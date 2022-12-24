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
  class SourceTypeAcssDebit
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "bank_address_city", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: bank_address_city.nil? && !bank_address_city_present?)]
    getter bank_address_city : String? = nil

    @[JSON::Field(ignore: true)]
    property? bank_address_city_present : Bool = false

    @[JSON::Field(key: "bank_address_line_1", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: bank_address_line_1.nil? && !bank_address_line_1_present?)]
    getter bank_address_line_1 : String? = nil

    @[JSON::Field(ignore: true)]
    property? bank_address_line_1_present : Bool = false

    @[JSON::Field(key: "bank_address_line_2", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: bank_address_line_2.nil? && !bank_address_line_2_present?)]
    getter bank_address_line_2 : String? = nil

    @[JSON::Field(ignore: true)]
    property? bank_address_line_2_present : Bool = false

    @[JSON::Field(key: "bank_address_postal_code", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: bank_address_postal_code.nil? && !bank_address_postal_code_present?)]
    getter bank_address_postal_code : String? = nil

    @[JSON::Field(ignore: true)]
    property? bank_address_postal_code_present : Bool = false

    @[JSON::Field(key: "bank_name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: bank_name.nil? && !bank_name_present?)]
    getter bank_name : String? = nil

    @[JSON::Field(ignore: true)]
    property? bank_name_present : Bool = false

    @[JSON::Field(key: "category", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: category.nil? && !category_present?)]
    getter category : String? = nil

    @[JSON::Field(ignore: true)]
    property? category_present : Bool = false

    @[JSON::Field(key: "country", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: country.nil? && !country_present?)]
    getter country : String? = nil

    @[JSON::Field(ignore: true)]
    property? country_present : Bool = false

    @[JSON::Field(key: "fingerprint", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: fingerprint.nil? && !fingerprint_present?)]
    getter fingerprint : String? = nil

    @[JSON::Field(ignore: true)]
    property? fingerprint_present : Bool = false

    @[JSON::Field(key: "last4", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: last4.nil? && !last4_present?)]
    getter last4 : String? = nil

    @[JSON::Field(ignore: true)]
    property? last4_present : Bool = false

    @[JSON::Field(key: "routing_number", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: routing_number.nil? && !routing_number_present?)]
    getter routing_number : String? = nil

    @[JSON::Field(ignore: true)]
    property? routing_number_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @bank_address_city : String? = nil,
      @bank_address_line_1 : String? = nil,
      @bank_address_line_2 : String? = nil,
      @bank_address_postal_code : String? = nil,
      @bank_name : String? = nil,
      @category : String? = nil,
      @country : String? = nil,
      @fingerprint : String? = nil,
      @last4 : String? = nil,
      @routing_number : String? = nil
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
    # @param [Object] bank_address_city Object to be assigned
    def bank_address_city=(new_value : String?)
      @bank_address_city = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bank_address_line_1 Object to be assigned
    def bank_address_line_1=(new_value : String?)
      @bank_address_line_1 = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bank_address_line_2 Object to be assigned
    def bank_address_line_2=(new_value : String?)
      @bank_address_line_2 = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bank_address_postal_code Object to be assigned
    def bank_address_postal_code=(new_value : String?)
      @bank_address_postal_code = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bank_name Object to be assigned
    def bank_name=(new_value : String?)
      @bank_name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] category Object to be assigned
    def category=(new_value : String?)
      @category = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] country Object to be assigned
    def country=(new_value : String?)
      @country = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fingerprint Object to be assigned
    def fingerprint=(new_value : String?)
      @fingerprint = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last4 Object to be assigned
    def last4=(new_value : String?)
      @last4 = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] routing_number Object to be assigned
    def routing_number=(new_value : String?)
      @routing_number = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@bank_address_city, @bank_address_city_present, @bank_address_line_1, @bank_address_line_1_present, @bank_address_line_2, @bank_address_line_2_present, @bank_address_postal_code, @bank_address_postal_code_present, @bank_name, @bank_name_present, @category, @category_present, @country, @country_present, @fingerprint, @fingerprint_present, @last4, @last4_present, @routing_number, @routing_number_present)
  end
end
