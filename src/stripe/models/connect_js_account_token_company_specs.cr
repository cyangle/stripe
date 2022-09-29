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
  class ConnectJsAccountTokenCompanySpecs
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "address", type: Stripe::AddressSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address : Stripe::AddressSpecs? = nil

    @[JSON::Field(key: "address_kana", type: Stripe::JapanAddressKanaSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address_kana : Stripe::JapanAddressKanaSpecs? = nil

    @[JSON::Field(key: "address_kanji", type: Stripe::JapanAddressKanjiSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address_kanji : Stripe::JapanAddressKanjiSpecs? = nil

    @[JSON::Field(key: "directors_provided", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter directors_provided : Bool? = nil

    @[JSON::Field(key: "executives_provided", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter executives_provided : Bool? = nil

    @[JSON::Field(key: "name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter name : String? = nil

    @[JSON::Field(key: "name_kana", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter name_kana : String? = nil

    @[JSON::Field(key: "name_kanji", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter name_kanji : String? = nil

    @[JSON::Field(key: "owners_provided", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter owners_provided : Bool? = nil

    @[JSON::Field(key: "ownership_declaration", type: Stripe::CompanyOwnershipDeclaration?, default: nil, required: false, nullable: false, emit_null: false)]
    getter ownership_declaration : Stripe::CompanyOwnershipDeclaration? = nil

    @[JSON::Field(key: "ownership_declaration_shown_and_signed", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter ownership_declaration_shown_and_signed : Bool? = nil

    @[JSON::Field(key: "phone", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter phone : String? = nil

    @[JSON::Field(key: "registration_number", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter registration_number : String? = nil

    @[JSON::Field(key: "structure", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter structure : String? = nil

    ENUM_VALIDATOR_FOR_STRUCTURE = OpenApi::EnumValidator.new("structure", "String", ["", "free_zone_establishment", "free_zone_llc", "government_instrumentality", "governmental_unit", "incorporated_non_profit", "limited_liability_partnership", "llc", "multi_member_llc", "private_company", "private_corporation", "private_partnership", "public_company", "public_corporation", "public_partnership", "single_member_llc", "sole_establishment", "sole_proprietorship", "tax_exempt_government_instrumentality", "unincorporated_association", "unincorporated_non_profit"])

    @[JSON::Field(key: "tax_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax_id : String? = nil

    @[JSON::Field(key: "tax_id_registrar", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax_id_registrar : String? = nil

    @[JSON::Field(key: "vat_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter vat_id : String? = nil

    @[JSON::Field(key: "verification", type: Stripe::VerificationSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter verification : Stripe::VerificationSpecs? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @address : Stripe::AddressSpecs? = nil,
      @address_kana : Stripe::JapanAddressKanaSpecs? = nil,
      @address_kanji : Stripe::JapanAddressKanjiSpecs? = nil,
      @directors_provided : Bool? = nil,
      @executives_provided : Bool? = nil,
      @name : String? = nil,
      @name_kana : String? = nil,
      @name_kanji : String? = nil,
      @owners_provided : Bool? = nil,
      @ownership_declaration : Stripe::CompanyOwnershipDeclaration? = nil,
      @ownership_declaration_shown_and_signed : Bool? = nil,
      @phone : String? = nil,
      @registration_number : String? = nil,
      @structure : String? = nil,
      @tax_id : String? = nil,
      @tax_id_registrar : String? = nil,
      @vat_id : String? = nil,
      @verification : Stripe::VerificationSpecs? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      if _address = @address
        invalid_properties.concat(_address.list_invalid_properties_for("address")) if _address.is_a?(OpenApi::Validatable)
      end
      if _address_kana = @address_kana
        invalid_properties.concat(_address_kana.list_invalid_properties_for("address_kana")) if _address_kana.is_a?(OpenApi::Validatable)
      end
      if _address_kanji = @address_kanji
        invalid_properties.concat(_address_kanji.list_invalid_properties_for("address_kanji")) if _address_kanji.is_a?(OpenApi::Validatable)
      end

      if _name = @name
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("name", _name.to_s.size, 100)
          invalid_properties.push(max_length_error)
        end
      end
      if _name_kana = @name_kana
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("name_kana", _name_kana.to_s.size, 100)
          invalid_properties.push(max_length_error)
        end
      end
      if _name_kanji = @name_kanji
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("name_kanji", _name_kanji.to_s.size, 100)
          invalid_properties.push(max_length_error)
        end
      end

      if _ownership_declaration = @ownership_declaration
        invalid_properties.concat(_ownership_declaration.list_invalid_properties_for("ownership_declaration")) if _ownership_declaration.is_a?(OpenApi::Validatable)
      end

      if _phone = @phone
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("phone", _phone.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _registration_number = @registration_number
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("registration_number", _registration_number.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_STRUCTURE.error_message) unless ENUM_VALIDATOR_FOR_STRUCTURE.valid?(@structure)
      if _tax_id = @tax_id
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("tax_id", _tax_id.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _tax_id_registrar = @tax_id_registrar
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("tax_id_registrar", _tax_id_registrar.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _vat_id = @vat_id
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("vat_id", _vat_id.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _verification = @verification
        invalid_properties.concat(_verification.list_invalid_properties_for("verification")) if _verification.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _address = @address
        return false if _address.is_a?(OpenApi::Validatable) && !_address.valid?
      end
      if _address_kana = @address_kana
        return false if _address_kana.is_a?(OpenApi::Validatable) && !_address_kana.valid?
      end
      if _address_kanji = @address_kanji
        return false if _address_kanji.is_a?(OpenApi::Validatable) && !_address_kanji.valid?
      end

      if _name = @name
        return false if _name.to_s.size > 100
      end
      if _name_kana = @name_kana
        return false if _name_kana.to_s.size > 100
      end
      if _name_kanji = @name_kanji
        return false if _name_kanji.to_s.size > 100
      end

      if _ownership_declaration = @ownership_declaration
        return false if _ownership_declaration.is_a?(OpenApi::Validatable) && !_ownership_declaration.valid?
      end

      if _phone = @phone
        return false if _phone.to_s.size > 5000
      end
      if _registration_number = @registration_number
        return false if _registration_number.to_s.size > 5000
      end
      return false unless ENUM_VALIDATOR_FOR_STRUCTURE.valid?(@structure)
      if _tax_id = @tax_id
        return false if _tax_id.to_s.size > 5000
      end
      if _tax_id_registrar = @tax_id_registrar
        return false if _tax_id_registrar.to_s.size > 5000
      end
      if _vat_id = @vat_id
        return false if _vat_id.to_s.size > 5000
      end
      if _verification = @verification
        return false if _verification.is_a?(OpenApi::Validatable) && !_verification.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address Object to be assigned
    def address=(address : Stripe::AddressSpecs?)
      if address.nil?
        return @address = nil
      end
      _address = address.not_nil!
      _address.validate if _address.is_a?(OpenApi::Validatable)
      @address = _address
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address_kana Object to be assigned
    def address_kana=(address_kana : Stripe::JapanAddressKanaSpecs?)
      if address_kana.nil?
        return @address_kana = nil
      end
      _address_kana = address_kana.not_nil!
      _address_kana.validate if _address_kana.is_a?(OpenApi::Validatable)
      @address_kana = _address_kana
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address_kanji Object to be assigned
    def address_kanji=(address_kanji : Stripe::JapanAddressKanjiSpecs?)
      if address_kanji.nil?
        return @address_kanji = nil
      end
      _address_kanji = address_kanji.not_nil!
      _address_kanji.validate if _address_kanji.is_a?(OpenApi::Validatable)
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
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("name", _name.to_s.size, 100)
        raise ArgumentError.new(max_length_error)
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
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("name_kana", _name_kana.to_s.size, 100)
        raise ArgumentError.new(max_length_error)
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
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("name_kanji", _name_kanji.to_s.size, 100)
        raise ArgumentError.new(max_length_error)
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
    def ownership_declaration=(ownership_declaration : Stripe::CompanyOwnershipDeclaration?)
      if ownership_declaration.nil?
        return @ownership_declaration = nil
      end
      _ownership_declaration = ownership_declaration.not_nil!
      _ownership_declaration.validate if _ownership_declaration.is_a?(OpenApi::Validatable)
      @ownership_declaration = _ownership_declaration
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ownership_declaration_shown_and_signed Object to be assigned
    def ownership_declaration_shown_and_signed=(ownership_declaration_shown_and_signed : Bool?)
      if ownership_declaration_shown_and_signed.nil?
        return @ownership_declaration_shown_and_signed = nil
      end
      _ownership_declaration_shown_and_signed = ownership_declaration_shown_and_signed.not_nil!
      @ownership_declaration_shown_and_signed = _ownership_declaration_shown_and_signed
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] phone Object to be assigned
    def phone=(phone : String?)
      if phone.nil?
        return @phone = nil
      end
      _phone = phone.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("phone", _phone.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @phone = _phone
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] registration_number Object to be assigned
    def registration_number=(registration_number : String?)
      if registration_number.nil?
        return @registration_number = nil
      end
      _registration_number = registration_number.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("registration_number", _registration_number.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @registration_number = _registration_number
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
    # @param [Object] tax_id Object to be assigned
    def tax_id=(tax_id : String?)
      if tax_id.nil?
        return @tax_id = nil
      end
      _tax_id = tax_id.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("tax_id", _tax_id.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @tax_id = _tax_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_id_registrar Object to be assigned
    def tax_id_registrar=(tax_id_registrar : String?)
      if tax_id_registrar.nil?
        return @tax_id_registrar = nil
      end
      _tax_id_registrar = tax_id_registrar.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("tax_id_registrar", _tax_id_registrar.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @tax_id_registrar = _tax_id_registrar
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] vat_id Object to be assigned
    def vat_id=(vat_id : String?)
      if vat_id.nil?
        return @vat_id = nil
      end
      _vat_id = vat_id.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("vat_id", _vat_id.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @vat_id = _vat_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] verification Object to be assigned
    def verification=(verification : Stripe::VerificationSpecs?)
      if verification.nil?
        return @verification = nil
      end
      _verification = verification.not_nil!
      _verification.validate if _verification.is_a?(OpenApi::Validatable)
      @verification = _verification
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@address, @address_kana, @address_kanji, @directors_provided, @executives_provided, @name, @name_kana, @name_kanji, @owners_provided, @ownership_declaration, @ownership_declaration_shown_and_signed, @phone, @registration_number, @structure, @tax_id, @tax_id_registrar, @vat_id, @verification)
  end
end
