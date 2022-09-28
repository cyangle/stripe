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
  #
  class LegalEntityCompany
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "address", type: Stripe::Address?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address : Stripe::Address? = nil

    @[JSON::Field(key: "address_kana", type: Stripe::LegalEntityCompanyAddressKana?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: address_kana.nil? && !address_kana_present?)]
    getter address_kana : Stripe::LegalEntityCompanyAddressKana? = nil

    @[JSON::Field(ignore: true)]
    property? address_kana_present : Bool = false

    @[JSON::Field(key: "address_kanji", type: Stripe::LegalEntityCompanyAddressKanji?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: address_kanji.nil? && !address_kanji_present?)]
    getter address_kanji : Stripe::LegalEntityCompanyAddressKanji? = nil

    @[JSON::Field(ignore: true)]
    property? address_kanji_present : Bool = false

    # Whether the company's directors have been provided. This Boolean will be `true` if you've manually indicated that all directors are provided via [the `directors_provided` parameter](https://stripe.com/docs/api/accounts/update#update_account-company-directors_provided).
    @[JSON::Field(key: "directors_provided", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter directors_provided : Bool? = nil

    # Whether the company's executives have been provided. This Boolean will be `true` if you've manually indicated that all executives are provided via [the `executives_provided` parameter](https://stripe.com/docs/api/accounts/update#update_account-company-executives_provided), or if Stripe determined that sufficient executives were provided.
    @[JSON::Field(key: "executives_provided", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter executives_provided : Bool? = nil

    # The company's legal name.
    @[JSON::Field(key: "name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: name.nil? && !name_present?)]
    getter name : String? = nil

    @[JSON::Field(ignore: true)]
    property? name_present : Bool = false

    # The Kana variation of the company's legal name (Japan only).
    @[JSON::Field(key: "name_kana", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: name_kana.nil? && !name_kana_present?)]
    getter name_kana : String? = nil

    @[JSON::Field(ignore: true)]
    property? name_kana_present : Bool = false

    # The Kanji variation of the company's legal name (Japan only).
    @[JSON::Field(key: "name_kanji", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: name_kanji.nil? && !name_kanji_present?)]
    getter name_kanji : String? = nil

    @[JSON::Field(ignore: true)]
    property? name_kanji_present : Bool = false

    # Whether the company's owners have been provided. This Boolean will be `true` if you've manually indicated that all owners are provided via [the `owners_provided` parameter](https://stripe.com/docs/api/accounts/update#update_account-company-owners_provided), or if Stripe determined that sufficient owners were provided. Stripe determines ownership requirements using both the number of owners provided and their total percent ownership (calculated by adding the `percent_ownership` of each owner together).
    @[JSON::Field(key: "owners_provided", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter owners_provided : Bool? = nil

    @[JSON::Field(key: "ownership_declaration", type: Stripe::LegalEntityCompanyOwnershipDeclaration?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: ownership_declaration.nil? && !ownership_declaration_present?)]
    getter ownership_declaration : Stripe::LegalEntityCompanyOwnershipDeclaration? = nil

    @[JSON::Field(ignore: true)]
    property? ownership_declaration_present : Bool = false

    # The company's phone number (used for verification).
    @[JSON::Field(key: "phone", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: phone.nil? && !phone_present?)]
    getter phone : String? = nil

    @[JSON::Field(ignore: true)]
    property? phone_present : Bool = false

    # The category identifying the legal structure of the company or legal entity. See [Business structure](https://stripe.com/docs/connect/identity-verification#business-structure) for more details.
    @[JSON::Field(key: "structure", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter structure : String? = nil

    ENUM_VALIDATOR_FOR_STRUCTURE = EnumValidator.new("structure", "String", ["free_zone_establishment", "free_zone_llc", "government_instrumentality", "governmental_unit", "incorporated_non_profit", "limited_liability_partnership", "llc", "multi_member_llc", "private_company", "private_corporation", "private_partnership", "public_company", "public_corporation", "public_partnership", "single_member_llc", "sole_establishment", "sole_proprietorship", "tax_exempt_government_instrumentality", "unincorporated_association", "unincorporated_non_profit"])

    # Whether the company's business ID number was provided.
    @[JSON::Field(key: "tax_id_provided", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax_id_provided : Bool? = nil

    # The jurisdiction in which the `tax_id` is registered (Germany-based companies only).
    @[JSON::Field(key: "tax_id_registrar", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax_id_registrar : String? = nil

    # Whether the company's business VAT number was provided.
    @[JSON::Field(key: "vat_id_provided", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter vat_id_provided : Bool? = nil

    @[JSON::Field(key: "verification", type: Stripe::LegalEntityCompanyVerification1?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: verification.nil? && !verification_present?)]
    getter verification : Stripe::LegalEntityCompanyVerification1? = nil

    @[JSON::Field(ignore: true)]
    property? verification_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @address : Stripe::Address? = nil,
      @address_kana : Stripe::LegalEntityCompanyAddressKana? = nil,
      @address_kanji : Stripe::LegalEntityCompanyAddressKanji? = nil,
      @directors_provided : Bool? = nil,
      @executives_provided : Bool? = nil,
      @name : String? = nil,
      @name_kana : String? = nil,
      @name_kanji : String? = nil,
      @owners_provided : Bool? = nil,
      @ownership_declaration : Stripe::LegalEntityCompanyOwnershipDeclaration? = nil,
      @phone : String? = nil,
      @structure : String? = nil,
      @tax_id_provided : Bool? = nil,
      @tax_id_registrar : String? = nil,
      @vat_id_provided : Bool? = nil,
      @verification : Stripe::LegalEntityCompanyVerification1? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      if _address = @address
        if _address.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_address.list_invalid_properties_for("address"))
        end
      end
      if _address_kana = @address_kana
        if _address_kana.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_address_kana.list_invalid_properties_for("address_kana"))
        end
      end
      if _address_kanji = @address_kanji
        if _address_kanji.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_address_kanji.list_invalid_properties_for("address_kanji"))
        end
      end

      if _name = @name
        if _name.to_s.size > 5000
          invalid_properties.push("invalid value for \"name\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _name_kana = @name_kana
        if _name_kana.to_s.size > 5000
          invalid_properties.push("invalid value for \"name_kana\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _name_kanji = @name_kanji
        if _name_kanji.to_s.size > 5000
          invalid_properties.push("invalid value for \"name_kanji\", the character length must be smaller than or equal to 5000.")
        end
      end

      if _ownership_declaration = @ownership_declaration
        if _ownership_declaration.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_ownership_declaration.list_invalid_properties_for("ownership_declaration"))
        end
      end
      if _phone = @phone
        if _phone.to_s.size > 5000
          invalid_properties.push("invalid value for \"phone\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_STRUCTURE.error_message) unless ENUM_VALIDATOR_FOR_STRUCTURE.valid?(@structure)

      if _tax_id_registrar = @tax_id_registrar
        if _tax_id_registrar.to_s.size > 5000
          invalid_properties.push("invalid value for \"tax_id_registrar\", the character length must be smaller than or equal to 5000.")
        end
      end

      if _verification = @verification
        if _verification.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_verification.list_invalid_properties_for("verification"))
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _address = @address
        if _address.is_a?(OpenApi::Validatable)
          return false unless _address.valid?
        end
      end
      if _address_kana = @address_kana
        if _address_kana.is_a?(OpenApi::Validatable)
          return false unless _address_kana.valid?
        end
      end
      if _address_kanji = @address_kanji
        if _address_kanji.is_a?(OpenApi::Validatable)
          return false unless _address_kanji.valid?
        end
      end

      if _name = @name
        return false if _name.to_s.size > 5000
      end
      if _name_kana = @name_kana
        return false if _name_kana.to_s.size > 5000
      end
      if _name_kanji = @name_kanji
        return false if _name_kanji.to_s.size > 5000
      end

      if _ownership_declaration = @ownership_declaration
        if _ownership_declaration.is_a?(OpenApi::Validatable)
          return false unless _ownership_declaration.valid?
        end
      end
      if _phone = @phone
        return false if _phone.to_s.size > 5000
      end
      return false unless ENUM_VALIDATOR_FOR_STRUCTURE.valid?(@structure)

      if _tax_id_registrar = @tax_id_registrar
        return false if _tax_id_registrar.to_s.size > 5000
      end

      if _verification = @verification
        if _verification.is_a?(OpenApi::Validatable)
          return false unless _verification.valid?
        end
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address Object to be assigned
    def address=(address : Stripe::Address?)
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
    # @param [Object] address_kana Object to be assigned
    def address_kana=(address_kana : Stripe::LegalEntityCompanyAddressKana?)
      if address_kana.nil?
        return @address_kana = nil
      end
      _address_kana = address_kana.not_nil!
      if _address_kana.is_a?(OpenApi::Validatable)
        _address_kana.validate
      end
      @address_kana = _address_kana
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address_kanji Object to be assigned
    def address_kanji=(address_kanji : Stripe::LegalEntityCompanyAddressKanji?)
      if address_kanji.nil?
        return @address_kanji = nil
      end
      _address_kanji = address_kanji.not_nil!
      if _address_kanji.is_a?(OpenApi::Validatable)
        _address_kanji.validate
      end
      @address_kanji = _address_kanji
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] directors_provided Object to be assigned
    def directors_provided=(directors_provided : Bool?)
      if directors_provided.nil?
        return @directors_provided = nil
      end
      _directors_provided = directors_provided.not_nil!
      @directors_provided = _directors_provided
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] executives_provided Object to be assigned
    def executives_provided=(executives_provided : Bool?)
      if executives_provided.nil?
        return @executives_provided = nil
      end
      _executives_provided = executives_provided.not_nil!
      @executives_provided = _executives_provided
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name Object to be assigned
    def name=(name : String?)
      if name.nil?
        return @name = nil
      end
      _name = name.not_nil!
      if _name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"name\", the character length must be smaller than or equal to 5000.")
      end

      @name = _name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name_kana Object to be assigned
    def name_kana=(name_kana : String?)
      if name_kana.nil?
        return @name_kana = nil
      end
      _name_kana = name_kana.not_nil!
      if _name_kana.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"name_kana\", the character length must be smaller than or equal to 5000.")
      end

      @name_kana = _name_kana
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name_kanji Object to be assigned
    def name_kanji=(name_kanji : String?)
      if name_kanji.nil?
        return @name_kanji = nil
      end
      _name_kanji = name_kanji.not_nil!
      if _name_kanji.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"name_kanji\", the character length must be smaller than or equal to 5000.")
      end

      @name_kanji = _name_kanji
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] owners_provided Object to be assigned
    def owners_provided=(owners_provided : Bool?)
      if owners_provided.nil?
        return @owners_provided = nil
      end
      _owners_provided = owners_provided.not_nil!
      @owners_provided = _owners_provided
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ownership_declaration Object to be assigned
    def ownership_declaration=(ownership_declaration : Stripe::LegalEntityCompanyOwnershipDeclaration?)
      if ownership_declaration.nil?
        return @ownership_declaration = nil
      end
      _ownership_declaration = ownership_declaration.not_nil!
      if _ownership_declaration.is_a?(OpenApi::Validatable)
        _ownership_declaration.validate
      end
      @ownership_declaration = _ownership_declaration
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] phone Object to be assigned
    def phone=(phone : String?)
      if phone.nil?
        return @phone = nil
      end
      _phone = phone.not_nil!
      if _phone.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"phone\", the character length must be smaller than or equal to 5000.")
      end

      @phone = _phone
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] structure Object to be assigned
    def structure=(structure : String?)
      if structure.nil?
        return @structure = nil
      end
      _structure = structure.not_nil!
      ENUM_VALIDATOR_FOR_STRUCTURE.valid!(_structure)
      @structure = _structure
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_id_provided Object to be assigned
    def tax_id_provided=(tax_id_provided : Bool?)
      if tax_id_provided.nil?
        return @tax_id_provided = nil
      end
      _tax_id_provided = tax_id_provided.not_nil!
      @tax_id_provided = _tax_id_provided
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_id_registrar Object to be assigned
    def tax_id_registrar=(tax_id_registrar : String?)
      if tax_id_registrar.nil?
        return @tax_id_registrar = nil
      end
      _tax_id_registrar = tax_id_registrar.not_nil!
      if _tax_id_registrar.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"tax_id_registrar\", the character length must be smaller than or equal to 5000.")
      end

      @tax_id_registrar = _tax_id_registrar
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] vat_id_provided Object to be assigned
    def vat_id_provided=(vat_id_provided : Bool?)
      if vat_id_provided.nil?
        return @vat_id_provided = nil
      end
      _vat_id_provided = vat_id_provided.not_nil!
      @vat_id_provided = _vat_id_provided
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] verification Object to be assigned
    def verification=(verification : Stripe::LegalEntityCompanyVerification1?)
      if verification.nil?
        return @verification = nil
      end
      _verification = verification.not_nil!
      if _verification.is_a?(OpenApi::Validatable)
        _verification.validate
      end
      @verification = _verification
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@address, @address_kana, @address_kana_present, @address_kanji, @address_kanji_present, @directors_provided, @executives_provided, @name, @name_present, @name_kana, @name_kana_present, @name_kanji, @name_kanji_present, @owners_provided, @ownership_declaration, @ownership_declaration_present, @phone, @phone_present, @structure, @tax_id_provided, @tax_id_registrar, @vat_id_provided, @verification, @verification_present)
  end
end
