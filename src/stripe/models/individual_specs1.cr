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
  class IndividualSpecs1
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

    @[JSON::Field(key: "dob", type: Stripe::IndividualSpecsDob?, default: nil, required: false, nullable: false, emit_null: false)]
    getter dob : Stripe::IndividualSpecsDob? = nil

    @[JSON::Field(key: "email", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter email : String? = nil

    @[JSON::Field(key: "first_name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter first_name : String? = nil

    @[JSON::Field(key: "first_name_kana", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter first_name_kana : String? = nil

    @[JSON::Field(key: "first_name_kanji", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter first_name_kanji : String? = nil

    @[JSON::Field(key: "full_name_aliases", type: Stripe::IndividualSpecsFullNameAliases?, default: nil, required: false, nullable: false, emit_null: false)]
    getter full_name_aliases : Stripe::IndividualSpecsFullNameAliases? = nil

    @[JSON::Field(key: "gender", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter gender : String? = nil

    @[JSON::Field(key: "id_number", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter id_number : String? = nil

    @[JSON::Field(key: "id_number_secondary", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter id_number_secondary : String? = nil

    @[JSON::Field(key: "last_name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter last_name : String? = nil

    @[JSON::Field(key: "last_name_kana", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter last_name_kana : String? = nil

    @[JSON::Field(key: "last_name_kanji", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter last_name_kanji : String? = nil

    @[JSON::Field(key: "maiden_name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter maiden_name : String? = nil

    @[JSON::Field(key: "metadata", type: Stripe::IndividualSpecsMetadata?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Stripe::IndividualSpecsMetadata? = nil

    @[JSON::Field(key: "phone", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter phone : String? = nil

    @[JSON::Field(key: "political_exposure", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter political_exposure : String? = nil

    ENUM_VALIDATOR_FOR_POLITICAL_EXPOSURE = OpenApi::EnumValidator.new("political_exposure", "String", ["existing", "none"])

    @[JSON::Field(key: "registered_address", type: Stripe::AddressSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter registered_address : Stripe::AddressSpecs? = nil

    @[JSON::Field(key: "ssn_last_4", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter ssn_last_4 : String? = nil

    @[JSON::Field(key: "verification", type: Stripe::PersonVerificationSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter verification : Stripe::PersonVerificationSpecs? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @address : Stripe::AddressSpecs? = nil,
      @address_kana : Stripe::JapanAddressKanaSpecs? = nil,
      @address_kanji : Stripe::JapanAddressKanjiSpecs? = nil,
      @dob : Stripe::IndividualSpecsDob? = nil,
      @email : String? = nil,
      @first_name : String? = nil,
      @first_name_kana : String? = nil,
      @first_name_kanji : String? = nil,
      @full_name_aliases : Stripe::IndividualSpecsFullNameAliases? = nil,
      @gender : String? = nil,
      @id_number : String? = nil,
      @id_number_secondary : String? = nil,
      @last_name : String? = nil,
      @last_name_kana : String? = nil,
      @last_name_kanji : String? = nil,
      @maiden_name : String? = nil,
      @metadata : Stripe::IndividualSpecsMetadata? = nil,
      @phone : String? = nil,
      @political_exposure : String? = nil,
      @registered_address : Stripe::AddressSpecs? = nil,
      @ssn_last_4 : String? = nil,
      @verification : Stripe::PersonVerificationSpecs? = nil
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
      if _dob = @dob
        invalid_properties.concat(_dob.list_invalid_properties_for("dob")) if _dob.is_a?(OpenApi::Validatable)
      end

      if _first_name = @first_name
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("first_name", _first_name.to_s.size, 100)
          invalid_properties.push(max_length_error)
        end
      end
      if _first_name_kana = @first_name_kana
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("first_name_kana", _first_name_kana.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _first_name_kanji = @first_name_kanji
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("first_name_kanji", _first_name_kanji.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _full_name_aliases = @full_name_aliases
        invalid_properties.concat(_full_name_aliases.list_invalid_properties_for("full_name_aliases")) if _full_name_aliases.is_a?(OpenApi::Validatable)
      end

      if _id_number = @id_number
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id_number", _id_number.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _id_number_secondary = @id_number_secondary
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id_number_secondary", _id_number_secondary.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _last_name = @last_name
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("last_name", _last_name.to_s.size, 100)
          invalid_properties.push(max_length_error)
        end
      end
      if _last_name_kana = @last_name_kana
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("last_name_kana", _last_name_kana.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _last_name_kanji = @last_name_kanji
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("last_name_kanji", _last_name_kanji.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _maiden_name = @maiden_name
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("maiden_name", _maiden_name.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _metadata = @metadata
        invalid_properties.concat(_metadata.list_invalid_properties_for("metadata")) if _metadata.is_a?(OpenApi::Validatable)
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_POLITICAL_EXPOSURE.error_message) unless ENUM_VALIDATOR_FOR_POLITICAL_EXPOSURE.valid?(@political_exposure)
      if _registered_address = @registered_address
        invalid_properties.concat(_registered_address.list_invalid_properties_for("registered_address")) if _registered_address.is_a?(OpenApi::Validatable)
      end
      if _ssn_last_4 = @ssn_last_4
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("ssn_last_4", _ssn_last_4.to_s.size, 5000)
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
      if _dob = @dob
        return false if _dob.is_a?(OpenApi::Validatable) && !_dob.valid?
      end

      if _first_name = @first_name
        return false if _first_name.to_s.size > 100
      end
      if _first_name_kana = @first_name_kana
        return false if _first_name_kana.to_s.size > 5000
      end
      if _first_name_kanji = @first_name_kanji
        return false if _first_name_kanji.to_s.size > 5000
      end
      if _full_name_aliases = @full_name_aliases
        return false if _full_name_aliases.is_a?(OpenApi::Validatable) && !_full_name_aliases.valid?
      end

      if _id_number = @id_number
        return false if _id_number.to_s.size > 5000
      end
      if _id_number_secondary = @id_number_secondary
        return false if _id_number_secondary.to_s.size > 5000
      end
      if _last_name = @last_name
        return false if _last_name.to_s.size > 100
      end
      if _last_name_kana = @last_name_kana
        return false if _last_name_kana.to_s.size > 5000
      end
      if _last_name_kanji = @last_name_kanji
        return false if _last_name_kanji.to_s.size > 5000
      end
      if _maiden_name = @maiden_name
        return false if _maiden_name.to_s.size > 5000
      end
      if _metadata = @metadata
        return false if _metadata.is_a?(OpenApi::Validatable) && !_metadata.valid?
      end

      return false unless ENUM_VALIDATOR_FOR_POLITICAL_EXPOSURE.valid?(@political_exposure)
      if _registered_address = @registered_address
        return false if _registered_address.is_a?(OpenApi::Validatable) && !_registered_address.valid?
      end
      if _ssn_last_4 = @ssn_last_4
        return false if _ssn_last_4.to_s.size > 5000
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
    # @param [Object] dob Object to be assigned
    def dob=(dob : Stripe::IndividualSpecsDob?)
      if dob.nil?
        return @dob = nil
      end
      _dob = dob.not_nil!
      _dob.validate if _dob.is_a?(OpenApi::Validatable)
      @dob = _dob
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] email Object to be assigned
    def email=(email : String?)
      if email.nil?
        return @email = nil
      end
      _email = email.not_nil!
      @email = _email
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] first_name Object to be assigned
    def first_name=(first_name : String?)
      if first_name.nil?
        return @first_name = nil
      end
      _first_name = first_name.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("first_name", _first_name.to_s.size, 100)
        raise ArgumentError.new(max_length_error)
      end

      @first_name = _first_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] first_name_kana Object to be assigned
    def first_name_kana=(first_name_kana : String?)
      if first_name_kana.nil?
        return @first_name_kana = nil
      end
      _first_name_kana = first_name_kana.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("first_name_kana", _first_name_kana.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @first_name_kana = _first_name_kana
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] first_name_kanji Object to be assigned
    def first_name_kanji=(first_name_kanji : String?)
      if first_name_kanji.nil?
        return @first_name_kanji = nil
      end
      _first_name_kanji = first_name_kanji.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("first_name_kanji", _first_name_kanji.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @first_name_kanji = _first_name_kanji
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] full_name_aliases Object to be assigned
    def full_name_aliases=(full_name_aliases : Stripe::IndividualSpecsFullNameAliases?)
      if full_name_aliases.nil?
        return @full_name_aliases = nil
      end
      _full_name_aliases = full_name_aliases.not_nil!
      _full_name_aliases.validate if _full_name_aliases.is_a?(OpenApi::Validatable)
      @full_name_aliases = _full_name_aliases
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] gender Object to be assigned
    def gender=(gender : String?)
      if gender.nil?
        return @gender = nil
      end
      _gender = gender.not_nil!
      @gender = _gender
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
    # @param [Object] id_number_secondary Object to be assigned
    def id_number_secondary=(id_number_secondary : String?)
      if id_number_secondary.nil?
        return @id_number_secondary = nil
      end
      _id_number_secondary = id_number_secondary.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id_number_secondary", _id_number_secondary.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @id_number_secondary = _id_number_secondary
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last_name Object to be assigned
    def last_name=(last_name : String?)
      if last_name.nil?
        return @last_name = nil
      end
      _last_name = last_name.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("last_name", _last_name.to_s.size, 100)
        raise ArgumentError.new(max_length_error)
      end

      @last_name = _last_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last_name_kana Object to be assigned
    def last_name_kana=(last_name_kana : String?)
      if last_name_kana.nil?
        return @last_name_kana = nil
      end
      _last_name_kana = last_name_kana.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("last_name_kana", _last_name_kana.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @last_name_kana = _last_name_kana
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last_name_kanji Object to be assigned
    def last_name_kanji=(last_name_kanji : String?)
      if last_name_kanji.nil?
        return @last_name_kanji = nil
      end
      _last_name_kanji = last_name_kanji.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("last_name_kanji", _last_name_kanji.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @last_name_kanji = _last_name_kanji
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] maiden_name Object to be assigned
    def maiden_name=(maiden_name : String?)
      if maiden_name.nil?
        return @maiden_name = nil
      end
      _maiden_name = maiden_name.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("maiden_name", _maiden_name.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @maiden_name = _maiden_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Stripe::IndividualSpecsMetadata?)
      if metadata.nil?
        return @metadata = nil
      end
      _metadata = metadata.not_nil!
      _metadata.validate if _metadata.is_a?(OpenApi::Validatable)
      @metadata = _metadata
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] phone Object to be assigned
    def phone=(phone : String?)
      if phone.nil?
        return @phone = nil
      end
      _phone = phone.not_nil!
      @phone = _phone
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] political_exposure Object to be assigned
    def political_exposure=(political_exposure : String?)
      if political_exposure.nil?
        return @political_exposure = nil
      end
      _political_exposure = political_exposure.not_nil!
      ENUM_VALIDATOR_FOR_POLITICAL_EXPOSURE.valid!(_political_exposure)
      @political_exposure = _political_exposure
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] registered_address Object to be assigned
    def registered_address=(registered_address : Stripe::AddressSpecs?)
      if registered_address.nil?
        return @registered_address = nil
      end
      _registered_address = registered_address.not_nil!
      _registered_address.validate if _registered_address.is_a?(OpenApi::Validatable)
      @registered_address = _registered_address
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ssn_last_4 Object to be assigned
    def ssn_last_4=(ssn_last_4 : String?)
      if ssn_last_4.nil?
        return @ssn_last_4 = nil
      end
      _ssn_last_4 = ssn_last_4.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("ssn_last_4", _ssn_last_4.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @ssn_last_4 = _ssn_last_4
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] verification Object to be assigned
    def verification=(verification : Stripe::PersonVerificationSpecs?)
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
    def_equals_and_hash(@address, @address_kana, @address_kanji, @dob, @email, @first_name, @first_name_kana, @first_name_kanji, @full_name_aliases, @gender, @id_number, @id_number_secondary, @last_name, @last_name_kana, @last_name_kanji, @maiden_name, @metadata, @phone, @political_exposure, @registered_address, @ssn_last_4, @verification)
  end
end
