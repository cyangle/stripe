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
  class SourceTypeMultibanco
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "entity", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: entity.nil? && !entity_present?)]
    getter entity : String? = nil

    @[JSON::Field(ignore: true)]
    property? entity_present : Bool = false

    @[JSON::Field(key: "reference", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: reference.nil? && !reference_present?)]
    getter reference : String? = nil

    @[JSON::Field(ignore: true)]
    property? reference_present : Bool = false

    @[JSON::Field(key: "refund_account_holder_address_city", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: refund_account_holder_address_city.nil? && !refund_account_holder_address_city_present?)]
    getter refund_account_holder_address_city : String? = nil

    @[JSON::Field(ignore: true)]
    property? refund_account_holder_address_city_present : Bool = false

    @[JSON::Field(key: "refund_account_holder_address_country", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: refund_account_holder_address_country.nil? && !refund_account_holder_address_country_present?)]
    getter refund_account_holder_address_country : String? = nil

    @[JSON::Field(ignore: true)]
    property? refund_account_holder_address_country_present : Bool = false

    @[JSON::Field(key: "refund_account_holder_address_line1", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: refund_account_holder_address_line1.nil? && !refund_account_holder_address_line1_present?)]
    getter refund_account_holder_address_line1 : String? = nil

    @[JSON::Field(ignore: true)]
    property? refund_account_holder_address_line1_present : Bool = false

    @[JSON::Field(key: "refund_account_holder_address_line2", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: refund_account_holder_address_line2.nil? && !refund_account_holder_address_line2_present?)]
    getter refund_account_holder_address_line2 : String? = nil

    @[JSON::Field(ignore: true)]
    property? refund_account_holder_address_line2_present : Bool = false

    @[JSON::Field(key: "refund_account_holder_address_postal_code", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: refund_account_holder_address_postal_code.nil? && !refund_account_holder_address_postal_code_present?)]
    getter refund_account_holder_address_postal_code : String? = nil

    @[JSON::Field(ignore: true)]
    property? refund_account_holder_address_postal_code_present : Bool = false

    @[JSON::Field(key: "refund_account_holder_address_state", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: refund_account_holder_address_state.nil? && !refund_account_holder_address_state_present?)]
    getter refund_account_holder_address_state : String? = nil

    @[JSON::Field(ignore: true)]
    property? refund_account_holder_address_state_present : Bool = false

    @[JSON::Field(key: "refund_account_holder_name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: refund_account_holder_name.nil? && !refund_account_holder_name_present?)]
    getter refund_account_holder_name : String? = nil

    @[JSON::Field(ignore: true)]
    property? refund_account_holder_name_present : Bool = false

    @[JSON::Field(key: "refund_iban", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: refund_iban.nil? && !refund_iban_present?)]
    getter refund_iban : String? = nil

    @[JSON::Field(ignore: true)]
    property? refund_iban_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @entity : String? = nil,
      @reference : String? = nil,
      @refund_account_holder_address_city : String? = nil,
      @refund_account_holder_address_country : String? = nil,
      @refund_account_holder_address_line1 : String? = nil,
      @refund_account_holder_address_line2 : String? = nil,
      @refund_account_holder_address_postal_code : String? = nil,
      @refund_account_holder_address_state : String? = nil,
      @refund_account_holder_name : String? = nil,
      @refund_iban : String? = nil
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
    # @param [Object] entity Object to be assigned
    def entity=(entity : String?)
      if entity.nil?
        return @entity = nil
      end
      _entity = entity.not_nil!
      @entity = _entity
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reference Object to be assigned
    def reference=(reference : String?)
      if reference.nil?
        return @reference = nil
      end
      _reference = reference.not_nil!
      @reference = _reference
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] refund_account_holder_address_city Object to be assigned
    def refund_account_holder_address_city=(refund_account_holder_address_city : String?)
      if refund_account_holder_address_city.nil?
        return @refund_account_holder_address_city = nil
      end
      _refund_account_holder_address_city = refund_account_holder_address_city.not_nil!
      @refund_account_holder_address_city = _refund_account_holder_address_city
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] refund_account_holder_address_country Object to be assigned
    def refund_account_holder_address_country=(refund_account_holder_address_country : String?)
      if refund_account_holder_address_country.nil?
        return @refund_account_holder_address_country = nil
      end
      _refund_account_holder_address_country = refund_account_holder_address_country.not_nil!
      @refund_account_holder_address_country = _refund_account_holder_address_country
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] refund_account_holder_address_line1 Object to be assigned
    def refund_account_holder_address_line1=(refund_account_holder_address_line1 : String?)
      if refund_account_holder_address_line1.nil?
        return @refund_account_holder_address_line1 = nil
      end
      _refund_account_holder_address_line1 = refund_account_holder_address_line1.not_nil!
      @refund_account_holder_address_line1 = _refund_account_holder_address_line1
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] refund_account_holder_address_line2 Object to be assigned
    def refund_account_holder_address_line2=(refund_account_holder_address_line2 : String?)
      if refund_account_holder_address_line2.nil?
        return @refund_account_holder_address_line2 = nil
      end
      _refund_account_holder_address_line2 = refund_account_holder_address_line2.not_nil!
      @refund_account_holder_address_line2 = _refund_account_holder_address_line2
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] refund_account_holder_address_postal_code Object to be assigned
    def refund_account_holder_address_postal_code=(refund_account_holder_address_postal_code : String?)
      if refund_account_holder_address_postal_code.nil?
        return @refund_account_holder_address_postal_code = nil
      end
      _refund_account_holder_address_postal_code = refund_account_holder_address_postal_code.not_nil!
      @refund_account_holder_address_postal_code = _refund_account_holder_address_postal_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] refund_account_holder_address_state Object to be assigned
    def refund_account_holder_address_state=(refund_account_holder_address_state : String?)
      if refund_account_holder_address_state.nil?
        return @refund_account_holder_address_state = nil
      end
      _refund_account_holder_address_state = refund_account_holder_address_state.not_nil!
      @refund_account_holder_address_state = _refund_account_holder_address_state
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] refund_account_holder_name Object to be assigned
    def refund_account_holder_name=(refund_account_holder_name : String?)
      if refund_account_holder_name.nil?
        return @refund_account_holder_name = nil
      end
      _refund_account_holder_name = refund_account_holder_name.not_nil!
      @refund_account_holder_name = _refund_account_holder_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] refund_iban Object to be assigned
    def refund_iban=(refund_iban : String?)
      if refund_iban.nil?
        return @refund_iban = nil
      end
      _refund_iban = refund_iban.not_nil!
      @refund_iban = _refund_iban
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@entity, @entity_present, @reference, @reference_present, @refund_account_holder_address_city, @refund_account_holder_address_city_present, @refund_account_holder_address_country, @refund_account_holder_address_country_present, @refund_account_holder_address_line1, @refund_account_holder_address_line1_present, @refund_account_holder_address_line2, @refund_account_holder_address_line2_present, @refund_account_holder_address_postal_code, @refund_account_holder_address_postal_code_present, @refund_account_holder_address_state, @refund_account_holder_address_state_present, @refund_account_holder_name, @refund_account_holder_name_present, @refund_iban, @refund_iban_present)
  end
end
