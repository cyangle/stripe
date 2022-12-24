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
  #
  class LegalEntityCompany
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

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
    MAX_LENGTH_FOR_NAME = 5000

    @[JSON::Field(ignore: true)]
    property? name_present : Bool = false

    # The Kana variation of the company's legal name (Japan only).
    @[JSON::Field(key: "name_kana", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: name_kana.nil? && !name_kana_present?)]
    getter name_kana : String? = nil
    MAX_LENGTH_FOR_NAME_KANA = 5000

    @[JSON::Field(ignore: true)]
    property? name_kana_present : Bool = false

    # The Kanji variation of the company's legal name (Japan only).
    @[JSON::Field(key: "name_kanji", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: name_kanji.nil? && !name_kanji_present?)]
    getter name_kanji : String? = nil
    MAX_LENGTH_FOR_NAME_KANJI = 5000

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
    MAX_LENGTH_FOR_PHONE = 5000

    @[JSON::Field(ignore: true)]
    property? phone_present : Bool = false

    # The category identifying the legal structure of the company or legal entity. See [Business structure](https://stripe.com/docs/connect/identity-verification#business-structure) for more details.
    @[JSON::Field(key: "structure", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter structure : String? = nil
    ERROR_MESSAGE_FOR_STRUCTURE = "invalid value for \"structure\", must be one of [free_zone_establishment, free_zone_llc, government_instrumentality, governmental_unit, incorporated_non_profit, limited_liability_partnership, llc, multi_member_llc, private_company, private_corporation, private_partnership, public_company, public_corporation, public_partnership, single_member_llc, sole_establishment, sole_proprietorship, tax_exempt_government_instrumentality, unincorporated_association, unincorporated_non_profit]."
    VALID_VALUES_FOR_STRUCTURE  = String.static_array("free_zone_establishment", "free_zone_llc", "government_instrumentality", "governmental_unit", "incorporated_non_profit", "limited_liability_partnership", "llc", "multi_member_llc", "private_company", "private_corporation", "private_partnership", "public_company", "public_corporation", "public_partnership", "single_member_llc", "sole_establishment", "sole_proprietorship", "tax_exempt_government_instrumentality", "unincorporated_association", "unincorporated_non_profit")

    # Whether the company's business ID number was provided.
    @[JSON::Field(key: "tax_id_provided", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax_id_provided : Bool? = nil

    # The jurisdiction in which the `tax_id` is registered (Germany-based companies only).
    @[JSON::Field(key: "tax_id_registrar", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax_id_registrar : String? = nil
    MAX_LENGTH_FOR_TAX_ID_REGISTRAR = 5000

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

      unless (_address = @address).nil?
        invalid_properties.concat(_address.list_invalid_properties_for("address")) if _address.is_a?(OpenApi::Validatable)
      end
      unless (_address_kana = @address_kana).nil?
        invalid_properties.concat(_address_kana.list_invalid_properties_for("address_kana")) if _address_kana.is_a?(OpenApi::Validatable)
      end
      unless (_address_kanji = @address_kanji).nil?
        invalid_properties.concat(_address_kanji.list_invalid_properties_for("address_kanji")) if _address_kanji.is_a?(OpenApi::Validatable)
      end

      unless (_name = @name).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("name", _name.to_s.size, MAX_LENGTH_FOR_NAME)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_name_kana = @name_kana).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("name_kana", _name_kana.to_s.size, MAX_LENGTH_FOR_NAME_KANA)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_name_kanji = @name_kanji).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("name_kanji", _name_kanji.to_s.size, MAX_LENGTH_FOR_NAME_KANJI)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_ownership_declaration = @ownership_declaration).nil?
        invalid_properties.concat(_ownership_declaration.list_invalid_properties_for("ownership_declaration")) if _ownership_declaration.is_a?(OpenApi::Validatable)
      end
      unless (_phone = @phone).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("phone", _phone.to_s.size, MAX_LENGTH_FOR_PHONE)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_tax_id_registrar = @tax_id_registrar).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("tax_id_registrar", _tax_id_registrar.to_s.size, MAX_LENGTH_FOR_TAX_ID_REGISTRAR)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_verification = @verification).nil?
        invalid_properties.concat(_verification.list_invalid_properties_for("verification")) if _verification.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_address = @address).nil?
        return false if _address.is_a?(OpenApi::Validatable) && !_address.valid?
      end

      unless (_address_kana = @address_kana).nil?
        return false if _address_kana.is_a?(OpenApi::Validatable) && !_address_kana.valid?
      end

      unless (_address_kanji = @address_kanji).nil?
        return false if _address_kanji.is_a?(OpenApi::Validatable) && !_address_kanji.valid?
      end

      unless (_name = @name).nil?
        return false if _name.to_s.size > MAX_LENGTH_FOR_NAME
      end

      unless (_name_kana = @name_kana).nil?
        return false if _name_kana.to_s.size > MAX_LENGTH_FOR_NAME_KANA
      end

      unless (_name_kanji = @name_kanji).nil?
        return false if _name_kanji.to_s.size > MAX_LENGTH_FOR_NAME_KANJI
      end

      unless (_ownership_declaration = @ownership_declaration).nil?
        return false if _ownership_declaration.is_a?(OpenApi::Validatable) && !_ownership_declaration.valid?
      end

      unless (_phone = @phone).nil?
        return false if _phone.to_s.size > MAX_LENGTH_FOR_PHONE
      end

      unless (_tax_id_registrar = @tax_id_registrar).nil?
        return false if _tax_id_registrar.to_s.size > MAX_LENGTH_FOR_TAX_ID_REGISTRAR
      end

      unless (_verification = @verification).nil?
        return false if _verification.is_a?(OpenApi::Validatable) && !_verification.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address Object to be assigned
    def address=(new_value : Stripe::Address?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @address = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address_kana Object to be assigned
    def address_kana=(new_value : Stripe::LegalEntityCompanyAddressKana?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @address_kana = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address_kanji Object to be assigned
    def address_kanji=(new_value : Stripe::LegalEntityCompanyAddressKanji?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @address_kanji = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] directors_provided Object to be assigned
    def directors_provided=(new_value : Bool?)
      @directors_provided = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] executives_provided Object to be assigned
    def executives_provided=(new_value : Bool?)
      @executives_provided = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name Object to be assigned
    def name=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("name", new_value.to_s.size, MAX_LENGTH_FOR_NAME)
      end

      @name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name_kana Object to be assigned
    def name_kana=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("name_kana", new_value.to_s.size, MAX_LENGTH_FOR_NAME_KANA)
      end

      @name_kana = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name_kanji Object to be assigned
    def name_kanji=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("name_kanji", new_value.to_s.size, MAX_LENGTH_FOR_NAME_KANJI)
      end

      @name_kanji = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] owners_provided Object to be assigned
    def owners_provided=(new_value : Bool?)
      @owners_provided = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ownership_declaration Object to be assigned
    def ownership_declaration=(new_value : Stripe::LegalEntityCompanyOwnershipDeclaration?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @ownership_declaration = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] phone Object to be assigned
    def phone=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("phone", new_value.to_s.size, MAX_LENGTH_FOR_PHONE)
      end

      @phone = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] structure Object to be assigned
    def structure=(new_value : String?)
      @structure = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_id_provided Object to be assigned
    def tax_id_provided=(new_value : Bool?)
      @tax_id_provided = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_id_registrar Object to be assigned
    def tax_id_registrar=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("tax_id_registrar", new_value.to_s.size, MAX_LENGTH_FOR_TAX_ID_REGISTRAR)
      end

      @tax_id_registrar = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] vat_id_provided Object to be assigned
    def vat_id_provided=(new_value : Bool?)
      @vat_id_provided = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] verification Object to be assigned
    def verification=(new_value : Stripe::LegalEntityCompanyVerification1?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @verification = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@address, @address_kana, @address_kana_present, @address_kanji, @address_kanji_present, @directors_provided, @executives_provided, @name, @name_present, @name_kana, @name_kana_present, @name_kanji, @name_kanji_present, @owners_provided, @ownership_declaration, @ownership_declaration_present, @phone, @phone_present, @structure, @tax_id_provided, @tax_id_registrar, @vat_id_provided, @verification, @verification_present)
  end
end
