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
  # Information about the company or business. This field is available for any `business_type`.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class CompanySpecs
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "address", type: AddressSpecs?, presence: true, ignore_serialize: address.nil? && !address_present?)]
    property address : AddressSpecs?

    @[JSON::Field(ignore: true)]
    property? address_present : Bool = false

    @[JSON::Field(key: "address_kana", type: JapanAddressKanaSpecs?, presence: true, ignore_serialize: address_kana.nil? && !address_kana_present?)]
    property address_kana : JapanAddressKanaSpecs?

    @[JSON::Field(ignore: true)]
    property? address_kana_present : Bool = false

    @[JSON::Field(key: "address_kanji", type: JapanAddressKanjiSpecs?, presence: true, ignore_serialize: address_kanji.nil? && !address_kanji_present?)]
    property address_kanji : JapanAddressKanjiSpecs?

    @[JSON::Field(ignore: true)]
    property? address_kanji_present : Bool = false

    @[JSON::Field(key: "directors_provided", type: Bool?, presence: true, ignore_serialize: directors_provided.nil? && !directors_provided_present?)]
    property directors_provided : Bool?

    @[JSON::Field(ignore: true)]
    property? directors_provided_present : Bool = false

    @[JSON::Field(key: "executives_provided", type: Bool?, presence: true, ignore_serialize: executives_provided.nil? && !executives_provided_present?)]
    property executives_provided : Bool?

    @[JSON::Field(ignore: true)]
    property? executives_provided_present : Bool = false

    @[JSON::Field(key: "name", type: String?, presence: true, ignore_serialize: name.nil? && !name_present?)]
    getter name : String?

    @[JSON::Field(ignore: true)]
    property? name_present : Bool = false

    @[JSON::Field(key: "name_kana", type: String?, presence: true, ignore_serialize: name_kana.nil? && !name_kana_present?)]
    getter name_kana : String?

    @[JSON::Field(ignore: true)]
    property? name_kana_present : Bool = false

    @[JSON::Field(key: "name_kanji", type: String?, presence: true, ignore_serialize: name_kanji.nil? && !name_kanji_present?)]
    getter name_kanji : String?

    @[JSON::Field(ignore: true)]
    property? name_kanji_present : Bool = false

    @[JSON::Field(key: "owners_provided", type: Bool?, presence: true, ignore_serialize: owners_provided.nil? && !owners_provided_present?)]
    property owners_provided : Bool?

    @[JSON::Field(ignore: true)]
    property? owners_provided_present : Bool = false

    @[JSON::Field(key: "ownership_declaration", type: CompanyOwnershipDeclaration?, presence: true, ignore_serialize: ownership_declaration.nil? && !ownership_declaration_present?)]
    property ownership_declaration : CompanyOwnershipDeclaration?

    @[JSON::Field(ignore: true)]
    property? ownership_declaration_present : Bool = false

    @[JSON::Field(key: "phone", type: String?, presence: true, ignore_serialize: phone.nil? && !phone_present?)]
    getter phone : String?

    @[JSON::Field(ignore: true)]
    property? phone_present : Bool = false

    @[JSON::Field(key: "registration_number", type: String?, presence: true, ignore_serialize: registration_number.nil? && !registration_number_present?)]
    getter registration_number : String?

    @[JSON::Field(ignore: true)]
    property? registration_number_present : Bool = false

    @[JSON::Field(key: "structure", type: String?, presence: true, ignore_serialize: structure.nil? && !structure_present?)]
    getter structure : String?

    @[JSON::Field(ignore: true)]
    property? structure_present : Bool = false

    ENUM_VALIDATOR_FOR_STRUCTURE = EnumValidator.new("structure", "String", ["", "free_zone_establishment", "free_zone_llc", "government_instrumentality", "governmental_unit", "incorporated_non_profit", "limited_liability_partnership", "llc", "multi_member_llc", "private_company", "private_corporation", "private_partnership", "public_company", "public_corporation", "public_partnership", "single_member_llc", "sole_establishment", "sole_proprietorship", "tax_exempt_government_instrumentality", "unincorporated_association", "unincorporated_non_profit"])

    @[JSON::Field(key: "tax_id", type: String?, presence: true, ignore_serialize: tax_id.nil? && !tax_id_present?)]
    getter tax_id : String?

    @[JSON::Field(ignore: true)]
    property? tax_id_present : Bool = false

    @[JSON::Field(key: "tax_id_registrar", type: String?, presence: true, ignore_serialize: tax_id_registrar.nil? && !tax_id_registrar_present?)]
    getter tax_id_registrar : String?

    @[JSON::Field(ignore: true)]
    property? tax_id_registrar_present : Bool = false

    @[JSON::Field(key: "vat_id", type: String?, presence: true, ignore_serialize: vat_id.nil? && !vat_id_present?)]
    getter vat_id : String?

    @[JSON::Field(ignore: true)]
    property? vat_id_present : Bool = false

    @[JSON::Field(key: "verification", type: VerificationSpecs?, presence: true, ignore_serialize: verification.nil? && !verification_present?)]
    property verification : VerificationSpecs?

    @[JSON::Field(ignore: true)]
    property? verification_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @address : AddressSpecs? = nil,
      @address_kana : JapanAddressKanaSpecs? = nil,
      @address_kanji : JapanAddressKanjiSpecs? = nil,
      @directors_provided : Bool? = nil,
      @executives_provided : Bool? = nil,
      @name : String? = nil,
      @name_kana : String? = nil,
      @name_kanji : String? = nil,
      @owners_provided : Bool? = nil,
      @ownership_declaration : CompanyOwnershipDeclaration? = nil,
      @phone : String? = nil,
      @registration_number : String? = nil,
      @structure : String? = nil,
      @tax_id : String? = nil,
      @tax_id_registrar : String? = nil,
      @vat_id : String? = nil,
      @verification : VerificationSpecs? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@name.nil? && @name.to_s.size > 100
        invalid_properties.push("invalid value for \"name\", the character length must be smaller than or equal to 100.")
      end

      if !@name_kana.nil? && @name_kana.to_s.size > 100
        invalid_properties.push("invalid value for \"name_kana\", the character length must be smaller than or equal to 100.")
      end

      if !@name_kanji.nil? && @name_kanji.to_s.size > 100
        invalid_properties.push("invalid value for \"name_kanji\", the character length must be smaller than or equal to 100.")
      end

      if !@phone.nil? && @phone.to_s.size > 5000
        invalid_properties.push("invalid value for \"phone\", the character length must be smaller than or equal to 5000.")
      end

      if !@registration_number.nil? && @registration_number.to_s.size > 5000
        invalid_properties.push("invalid value for \"registration_number\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_STRUCTURE.error_message) unless ENUM_VALIDATOR_FOR_STRUCTURE.valid?(@structure)

      if !@tax_id.nil? && @tax_id.to_s.size > 5000
        invalid_properties.push("invalid value for \"tax_id\", the character length must be smaller than or equal to 5000.")
      end

      if !@tax_id_registrar.nil? && @tax_id_registrar.to_s.size > 5000
        invalid_properties.push("invalid value for \"tax_id_registrar\", the character length must be smaller than or equal to 5000.")
      end

      if !@vat_id.nil? && @vat_id.to_s.size > 5000
        invalid_properties.push("invalid value for \"vat_id\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@name.nil? && @name.to_s.size > 100
      return false if !@name_kana.nil? && @name_kana.to_s.size > 100
      return false if !@name_kanji.nil? && @name_kanji.to_s.size > 100
      return false if !@phone.nil? && @phone.to_s.size > 5000
      return false if !@registration_number.nil? && @registration_number.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_STRUCTURE.valid?(@structure)
      return false if !@tax_id.nil? && @tax_id.to_s.size > 5000
      return false if !@tax_id_registrar.nil? && @tax_id_registrar.to_s.size > 5000
      return false if !@vat_id.nil? && @vat_id.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name : String?)
      if !name.nil? && name.to_s.size > 100
        raise ArgumentError.new("invalid value for \"name\", the character length must be smaller than or equal to 100.")
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] name_kana Value to be assigned
    def name_kana=(name_kana : String?)
      if !name_kana.nil? && name_kana.to_s.size > 100
        raise ArgumentError.new("invalid value for \"name_kana\", the character length must be smaller than or equal to 100.")
      end

      @name_kana = name_kana
    end

    # Custom attribute writer method with validation
    # @param [Object] name_kanji Value to be assigned
    def name_kanji=(name_kanji : String?)
      if !name_kanji.nil? && name_kanji.to_s.size > 100
        raise ArgumentError.new("invalid value for \"name_kanji\", the character length must be smaller than or equal to 100.")
      end

      @name_kanji = name_kanji
    end

    # Custom attribute writer method with validation
    # @param [Object] phone Value to be assigned
    def phone=(phone : String?)
      if !phone.nil? && phone.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"phone\", the character length must be smaller than or equal to 5000.")
      end

      @phone = phone
    end

    # Custom attribute writer method with validation
    # @param [Object] registration_number Value to be assigned
    def registration_number=(registration_number : String?)
      if !registration_number.nil? && registration_number.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"registration_number\", the character length must be smaller than or equal to 5000.")
      end

      @registration_number = registration_number
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] structure Object to be assigned
    def structure=(structure : String?)
      ENUM_VALIDATOR_FOR_STRUCTURE.valid!(structure)
      @structure = structure
    end

    # Custom attribute writer method with validation
    # @param [Object] tax_id Value to be assigned
    def tax_id=(tax_id : String?)
      if !tax_id.nil? && tax_id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"tax_id\", the character length must be smaller than or equal to 5000.")
      end

      @tax_id = tax_id
    end

    # Custom attribute writer method with validation
    # @param [Object] tax_id_registrar Value to be assigned
    def tax_id_registrar=(tax_id_registrar : String?)
      if !tax_id_registrar.nil? && tax_id_registrar.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"tax_id_registrar\", the character length must be smaller than or equal to 5000.")
      end

      @tax_id_registrar = tax_id_registrar
    end

    # Custom attribute writer method with validation
    # @param [Object] vat_id Value to be assigned
    def vat_id=(vat_id : String?)
      if !vat_id.nil? && vat_id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"vat_id\", the character length must be smaller than or equal to 5000.")
      end

      @vat_id = vat_id
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
    def_equals_and_hash(@address, @address_present, @address_kana, @address_kana_present, @address_kanji, @address_kanji_present, @directors_provided, @directors_provided_present, @executives_provided, @executives_provided_present, @name, @name_present, @name_kana, @name_kana_present, @name_kanji, @name_kanji_present, @owners_provided, @owners_provided_present, @ownership_declaration, @ownership_declaration_present, @phone, @phone_present, @registration_number, @registration_number_present, @structure, @structure_present, @tax_id, @tax_id_present, @tax_id_registrar, @tax_id_registrar_present, @vat_id, @vat_id_present, @verification, @verification_present)
  end
end
