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
  #
  @[JSON::Serializable::Options(emit_nulls: true)]
  class LegalEntityCompany
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "address", type: Address?, presence: true, ignore_serialize: address.nil? && !address_present?)]
    property address : Address?

    @[JSON::Field(ignore: true)]
    property? address_present : Bool = false

    @[JSON::Field(key: "address_kana", type: LegalEntityCompanyAddressKana?, presence: true, ignore_serialize: address_kana.nil? && !address_kana_present?)]
    property address_kana : LegalEntityCompanyAddressKana?

    @[JSON::Field(ignore: true)]
    property? address_kana_present : Bool = false

    @[JSON::Field(key: "address_kanji", type: LegalEntityCompanyAddressKanji?, presence: true, ignore_serialize: address_kanji.nil? && !address_kanji_present?)]
    property address_kanji : LegalEntityCompanyAddressKanji?

    @[JSON::Field(ignore: true)]
    property? address_kanji_present : Bool = false

    # Whether the company's directors have been provided. This Boolean will be `true` if you've manually indicated that all directors are provided via [the `directors_provided` parameter](https://stripe.com/docs/api/accounts/update#update_account-company-directors_provided).
    @[JSON::Field(key: "directors_provided", type: Bool?, presence: true, ignore_serialize: directors_provided.nil? && !directors_provided_present?)]
    property directors_provided : Bool?

    @[JSON::Field(ignore: true)]
    property? directors_provided_present : Bool = false

    # Whether the company's executives have been provided. This Boolean will be `true` if you've manually indicated that all executives are provided via [the `executives_provided` parameter](https://stripe.com/docs/api/accounts/update#update_account-company-executives_provided), or if Stripe determined that sufficient executives were provided.
    @[JSON::Field(key: "executives_provided", type: Bool?, presence: true, ignore_serialize: executives_provided.nil? && !executives_provided_present?)]
    property executives_provided : Bool?

    @[JSON::Field(ignore: true)]
    property? executives_provided_present : Bool = false

    # The company's legal name.
    @[JSON::Field(key: "name", type: String?, presence: true, ignore_serialize: name.nil? && !name_present?)]
    getter name : String?

    @[JSON::Field(ignore: true)]
    property? name_present : Bool = false

    # The Kana variation of the company's legal name (Japan only).
    @[JSON::Field(key: "name_kana", type: String?, presence: true, ignore_serialize: name_kana.nil? && !name_kana_present?)]
    getter name_kana : String?

    @[JSON::Field(ignore: true)]
    property? name_kana_present : Bool = false

    # The Kanji variation of the company's legal name (Japan only).
    @[JSON::Field(key: "name_kanji", type: String?, presence: true, ignore_serialize: name_kanji.nil? && !name_kanji_present?)]
    getter name_kanji : String?

    @[JSON::Field(ignore: true)]
    property? name_kanji_present : Bool = false

    # Whether the company's owners have been provided. This Boolean will be `true` if you've manually indicated that all owners are provided via [the `owners_provided` parameter](https://stripe.com/docs/api/accounts/update#update_account-company-owners_provided), or if Stripe determined that sufficient owners were provided. Stripe determines ownership requirements using both the number of owners provided and their total percent ownership (calculated by adding the `percent_ownership` of each owner together).
    @[JSON::Field(key: "owners_provided", type: Bool?, presence: true, ignore_serialize: owners_provided.nil? && !owners_provided_present?)]
    property owners_provided : Bool?

    @[JSON::Field(ignore: true)]
    property? owners_provided_present : Bool = false

    @[JSON::Field(key: "ownership_declaration", type: LegalEntityCompanyOwnershipDeclaration?, presence: true, ignore_serialize: ownership_declaration.nil? && !ownership_declaration_present?)]
    property ownership_declaration : LegalEntityCompanyOwnershipDeclaration?

    @[JSON::Field(ignore: true)]
    property? ownership_declaration_present : Bool = false

    # The company's phone number (used for verification).
    @[JSON::Field(key: "phone", type: String?, presence: true, ignore_serialize: phone.nil? && !phone_present?)]
    getter phone : String?

    @[JSON::Field(ignore: true)]
    property? phone_present : Bool = false

    # The category identifying the legal structure of the company or legal entity. See [Business structure](https://stripe.com/docs/connect/identity-verification#business-structure) for more details.
    @[JSON::Field(key: "structure", type: String?, presence: true, ignore_serialize: structure.nil? && !structure_present?)]
    getter structure : String?

    @[JSON::Field(ignore: true)]
    property? structure_present : Bool = false

    ENUM_VALIDATOR_FOR_STRUCTURE = EnumValidator.new("structure", "String", ["free_zone_establishment", "free_zone_llc", "government_instrumentality", "governmental_unit", "incorporated_non_profit", "limited_liability_partnership", "llc", "multi_member_llc", "private_company", "private_corporation", "private_partnership", "public_company", "public_corporation", "public_partnership", "single_member_llc", "sole_establishment", "sole_proprietorship", "tax_exempt_government_instrumentality", "unincorporated_association", "unincorporated_non_profit"])

    # Whether the company's business ID number was provided.
    @[JSON::Field(key: "tax_id_provided", type: Bool?, presence: true, ignore_serialize: tax_id_provided.nil? && !tax_id_provided_present?)]
    property tax_id_provided : Bool?

    @[JSON::Field(ignore: true)]
    property? tax_id_provided_present : Bool = false

    # The jurisdiction in which the `tax_id` is registered (Germany-based companies only).
    @[JSON::Field(key: "tax_id_registrar", type: String?, presence: true, ignore_serialize: tax_id_registrar.nil? && !tax_id_registrar_present?)]
    getter tax_id_registrar : String?

    @[JSON::Field(ignore: true)]
    property? tax_id_registrar_present : Bool = false

    # Whether the company's business VAT number was provided.
    @[JSON::Field(key: "vat_id_provided", type: Bool?, presence: true, ignore_serialize: vat_id_provided.nil? && !vat_id_provided_present?)]
    property vat_id_provided : Bool?

    @[JSON::Field(ignore: true)]
    property? vat_id_provided_present : Bool = false

    @[JSON::Field(key: "verification", type: LegalEntityCompanyVerification1?, presence: true, ignore_serialize: verification.nil? && !verification_present?)]
    property verification : LegalEntityCompanyVerification1?

    @[JSON::Field(ignore: true)]
    property? verification_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @address : Address? = nil,
      @address_kana : LegalEntityCompanyAddressKana? = nil,
      @address_kanji : LegalEntityCompanyAddressKanji? = nil,
      @directors_provided : Bool? = nil,
      @executives_provided : Bool? = nil,
      @name : String? = nil,
      @name_kana : String? = nil,
      @name_kanji : String? = nil,
      @owners_provided : Bool? = nil,
      @ownership_declaration : LegalEntityCompanyOwnershipDeclaration? = nil,
      @phone : String? = nil,
      @structure : String? = nil,
      @tax_id_provided : Bool? = nil,
      @tax_id_registrar : String? = nil,
      @vat_id_provided : Bool? = nil,
      @verification : LegalEntityCompanyVerification1? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@name.nil? && @name.to_s.size > 5000
        invalid_properties.push("invalid value for \"name\", the character length must be smaller than or equal to 5000.")
      end

      if !@name_kana.nil? && @name_kana.to_s.size > 5000
        invalid_properties.push("invalid value for \"name_kana\", the character length must be smaller than or equal to 5000.")
      end

      if !@name_kanji.nil? && @name_kanji.to_s.size > 5000
        invalid_properties.push("invalid value for \"name_kanji\", the character length must be smaller than or equal to 5000.")
      end

      if !@phone.nil? && @phone.to_s.size > 5000
        invalid_properties.push("invalid value for \"phone\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_STRUCTURE.error_message) unless ENUM_VALIDATOR_FOR_STRUCTURE.valid?(@structure)

      if !@tax_id_registrar.nil? && @tax_id_registrar.to_s.size > 5000
        invalid_properties.push("invalid value for \"tax_id_registrar\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@name.nil? && @name.to_s.size > 5000
      return false if !@name_kana.nil? && @name_kana.to_s.size > 5000
      return false if !@name_kanji.nil? && @name_kanji.to_s.size > 5000
      return false if !@phone.nil? && @phone.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_STRUCTURE.valid?(@structure)
      return false if !@tax_id_registrar.nil? && @tax_id_registrar.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name : String?)
      if !name.nil? && name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"name\", the character length must be smaller than or equal to 5000.")
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] name_kana Value to be assigned
    def name_kana=(name_kana : String?)
      if !name_kana.nil? && name_kana.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"name_kana\", the character length must be smaller than or equal to 5000.")
      end

      @name_kana = name_kana
    end

    # Custom attribute writer method with validation
    # @param [Object] name_kanji Value to be assigned
    def name_kanji=(name_kanji : String?)
      if !name_kanji.nil? && name_kanji.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"name_kanji\", the character length must be smaller than or equal to 5000.")
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] structure Object to be assigned
    def structure=(structure : String?)
      ENUM_VALIDATOR_FOR_STRUCTURE.valid!(structure)
      @structure = structure
    end

    # Custom attribute writer method with validation
    # @param [Object] tax_id_registrar Value to be assigned
    def tax_id_registrar=(tax_id_registrar : String?)
      if !tax_id_registrar.nil? && tax_id_registrar.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"tax_id_registrar\", the character length must be smaller than or equal to 5000.")
      end

      @tax_id_registrar = tax_id_registrar
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
    def_equals_and_hash(@address, @address_present, @address_kana, @address_kana_present, @address_kanji, @address_kanji_present, @directors_provided, @directors_provided_present, @executives_provided, @executives_provided_present, @name, @name_present, @name_kana, @name_kana_present, @name_kanji, @name_kanji_present, @owners_provided, @owners_provided_present, @ownership_declaration, @ownership_declaration_present, @phone, @phone_present, @structure, @structure_present, @tax_id_provided, @tax_id_provided_present, @tax_id_registrar, @tax_id_registrar_present, @vat_id_provided, @vat_id_provided_present, @verification, @verification_present)
  end
end
