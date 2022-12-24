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
  class PersonTokenSpecs
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "address", type: Stripe::AddressSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address : Stripe::AddressSpecs? = nil

    @[JSON::Field(key: "address_kana", type: Stripe::JapanAddressKanaSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address_kana : Stripe::JapanAddressKanaSpecs? = nil

    @[JSON::Field(key: "address_kanji", type: Stripe::JapanAddressKanjiSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address_kanji : Stripe::JapanAddressKanjiSpecs? = nil

    @[JSON::Field(key: "dob", type: Stripe::IndividualSpecsDob?, default: nil, required: false, nullable: false, emit_null: false)]
    getter dob : Stripe::IndividualSpecsDob? = nil

    @[JSON::Field(key: "documents", type: Stripe::PersonDocumentsSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter documents : Stripe::PersonDocumentsSpecs? = nil

    @[JSON::Field(key: "email", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter email : String? = nil

    @[JSON::Field(key: "first_name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter first_name : String? = nil
    MAX_LENGTH_FOR_FIRST_NAME = 5000

    @[JSON::Field(key: "first_name_kana", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter first_name_kana : String? = nil
    MAX_LENGTH_FOR_FIRST_NAME_KANA = 5000

    @[JSON::Field(key: "first_name_kanji", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter first_name_kanji : String? = nil
    MAX_LENGTH_FOR_FIRST_NAME_KANJI = 5000

    @[JSON::Field(key: "full_name_aliases", type: Stripe::GetInvoicesUpcomingSubscriptionDefaultTaxRatesParameter?, default: nil, required: false, nullable: false, emit_null: false)]
    getter full_name_aliases : Stripe::GetInvoicesUpcomingSubscriptionDefaultTaxRatesParameter? = nil

    @[JSON::Field(key: "gender", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter gender : String? = nil

    @[JSON::Field(key: "id_number", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter id_number : String? = nil
    MAX_LENGTH_FOR_ID_NUMBER = 5000

    @[JSON::Field(key: "id_number_secondary", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter id_number_secondary : String? = nil
    MAX_LENGTH_FOR_ID_NUMBER_SECONDARY = 5000

    @[JSON::Field(key: "last_name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter last_name : String? = nil
    MAX_LENGTH_FOR_LAST_NAME = 5000

    @[JSON::Field(key: "last_name_kana", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter last_name_kana : String? = nil
    MAX_LENGTH_FOR_LAST_NAME_KANA = 5000

    @[JSON::Field(key: "last_name_kanji", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter last_name_kanji : String? = nil
    MAX_LENGTH_FOR_LAST_NAME_KANJI = 5000

    @[JSON::Field(key: "maiden_name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter maiden_name : String? = nil
    MAX_LENGTH_FOR_MAIDEN_NAME = 5000

    @[JSON::Field(key: "metadata", type: Stripe::FileLinkCreationParamsMetadata?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Stripe::FileLinkCreationParamsMetadata? = nil

    @[JSON::Field(key: "nationality", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter nationality : String? = nil
    MAX_LENGTH_FOR_NATIONALITY = 5000

    @[JSON::Field(key: "phone", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter phone : String? = nil

    @[JSON::Field(key: "political_exposure", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter political_exposure : String? = nil
    MAX_LENGTH_FOR_POLITICAL_EXPOSURE = 5000

    @[JSON::Field(key: "registered_address", type: Stripe::AddressSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter registered_address : Stripe::AddressSpecs? = nil

    @[JSON::Field(key: "relationship", type: Stripe::RelationshipSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter relationship : Stripe::RelationshipSpecs? = nil

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
      @documents : Stripe::PersonDocumentsSpecs? = nil,
      @email : String? = nil,
      @first_name : String? = nil,
      @first_name_kana : String? = nil,
      @first_name_kanji : String? = nil,
      @full_name_aliases : Stripe::GetInvoicesUpcomingSubscriptionDefaultTaxRatesParameter? = nil,
      @gender : String? = nil,
      @id_number : String? = nil,
      @id_number_secondary : String? = nil,
      @last_name : String? = nil,
      @last_name_kana : String? = nil,
      @last_name_kanji : String? = nil,
      @maiden_name : String? = nil,
      @metadata : Stripe::FileLinkCreationParamsMetadata? = nil,
      @nationality : String? = nil,
      @phone : String? = nil,
      @political_exposure : String? = nil,
      @registered_address : Stripe::AddressSpecs? = nil,
      @relationship : Stripe::RelationshipSpecs? = nil,
      @ssn_last_4 : String? = nil,
      @verification : Stripe::PersonVerificationSpecs? = nil
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
      unless (_dob = @dob).nil?
        invalid_properties.concat(_dob.list_invalid_properties_for("dob")) if _dob.is_a?(OpenApi::Validatable)
      end
      unless (_documents = @documents).nil?
        invalid_properties.concat(_documents.list_invalid_properties_for("documents")) if _documents.is_a?(OpenApi::Validatable)
      end

      unless (_first_name = @first_name).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("first_name", _first_name.to_s.size, MAX_LENGTH_FOR_FIRST_NAME)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_first_name_kana = @first_name_kana).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("first_name_kana", _first_name_kana.to_s.size, MAX_LENGTH_FOR_FIRST_NAME_KANA)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_first_name_kanji = @first_name_kanji).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("first_name_kanji", _first_name_kanji.to_s.size, MAX_LENGTH_FOR_FIRST_NAME_KANJI)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_full_name_aliases = @full_name_aliases).nil?
        invalid_properties.concat(_full_name_aliases.list_invalid_properties_for("full_name_aliases")) if _full_name_aliases.is_a?(OpenApi::Validatable)
      end

      unless (_id_number = @id_number).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id_number", _id_number.to_s.size, MAX_LENGTH_FOR_ID_NUMBER)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_id_number_secondary = @id_number_secondary).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id_number_secondary", _id_number_secondary.to_s.size, MAX_LENGTH_FOR_ID_NUMBER_SECONDARY)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_last_name = @last_name).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("last_name", _last_name.to_s.size, MAX_LENGTH_FOR_LAST_NAME)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_last_name_kana = @last_name_kana).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("last_name_kana", _last_name_kana.to_s.size, MAX_LENGTH_FOR_LAST_NAME_KANA)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_last_name_kanji = @last_name_kanji).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("last_name_kanji", _last_name_kanji.to_s.size, MAX_LENGTH_FOR_LAST_NAME_KANJI)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_maiden_name = @maiden_name).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("maiden_name", _maiden_name.to_s.size, MAX_LENGTH_FOR_MAIDEN_NAME)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_metadata = @metadata).nil?
        invalid_properties.concat(_metadata.list_invalid_properties_for("metadata")) if _metadata.is_a?(OpenApi::Validatable)
      end
      unless (_nationality = @nationality).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("nationality", _nationality.to_s.size, MAX_LENGTH_FOR_NATIONALITY)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_political_exposure = @political_exposure).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("political_exposure", _political_exposure.to_s.size, MAX_LENGTH_FOR_POLITICAL_EXPOSURE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_registered_address = @registered_address).nil?
        invalid_properties.concat(_registered_address.list_invalid_properties_for("registered_address")) if _registered_address.is_a?(OpenApi::Validatable)
      end
      unless (_relationship = @relationship).nil?
        invalid_properties.concat(_relationship.list_invalid_properties_for("relationship")) if _relationship.is_a?(OpenApi::Validatable)
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

      unless (_dob = @dob).nil?
        return false if _dob.is_a?(OpenApi::Validatable) && !_dob.valid?
      end

      unless (_documents = @documents).nil?
        return false if _documents.is_a?(OpenApi::Validatable) && !_documents.valid?
      end

      unless (_first_name = @first_name).nil?
        return false if _first_name.to_s.size > MAX_LENGTH_FOR_FIRST_NAME
      end

      unless (_first_name_kana = @first_name_kana).nil?
        return false if _first_name_kana.to_s.size > MAX_LENGTH_FOR_FIRST_NAME_KANA
      end

      unless (_first_name_kanji = @first_name_kanji).nil?
        return false if _first_name_kanji.to_s.size > MAX_LENGTH_FOR_FIRST_NAME_KANJI
      end

      unless (_full_name_aliases = @full_name_aliases).nil?
        return false if _full_name_aliases.is_a?(OpenApi::Validatable) && !_full_name_aliases.valid?
      end

      unless (_id_number = @id_number).nil?
        return false if _id_number.to_s.size > MAX_LENGTH_FOR_ID_NUMBER
      end

      unless (_id_number_secondary = @id_number_secondary).nil?
        return false if _id_number_secondary.to_s.size > MAX_LENGTH_FOR_ID_NUMBER_SECONDARY
      end

      unless (_last_name = @last_name).nil?
        return false if _last_name.to_s.size > MAX_LENGTH_FOR_LAST_NAME
      end

      unless (_last_name_kana = @last_name_kana).nil?
        return false if _last_name_kana.to_s.size > MAX_LENGTH_FOR_LAST_NAME_KANA
      end

      unless (_last_name_kanji = @last_name_kanji).nil?
        return false if _last_name_kanji.to_s.size > MAX_LENGTH_FOR_LAST_NAME_KANJI
      end

      unless (_maiden_name = @maiden_name).nil?
        return false if _maiden_name.to_s.size > MAX_LENGTH_FOR_MAIDEN_NAME
      end

      unless (_metadata = @metadata).nil?
        return false if _metadata.is_a?(OpenApi::Validatable) && !_metadata.valid?
      end

      unless (_nationality = @nationality).nil?
        return false if _nationality.to_s.size > MAX_LENGTH_FOR_NATIONALITY
      end

      unless (_political_exposure = @political_exposure).nil?
        return false if _political_exposure.to_s.size > MAX_LENGTH_FOR_POLITICAL_EXPOSURE
      end

      unless (_registered_address = @registered_address).nil?
        return false if _registered_address.is_a?(OpenApi::Validatable) && !_registered_address.valid?
      end

      unless (_relationship = @relationship).nil?
        return false if _relationship.is_a?(OpenApi::Validatable) && !_relationship.valid?
      end

      unless (_verification = @verification).nil?
        return false if _verification.is_a?(OpenApi::Validatable) && !_verification.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address Object to be assigned
    def address=(new_value : Stripe::AddressSpecs?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @address = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address_kana Object to be assigned
    def address_kana=(new_value : Stripe::JapanAddressKanaSpecs?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @address_kana = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address_kanji Object to be assigned
    def address_kanji=(new_value : Stripe::JapanAddressKanjiSpecs?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @address_kanji = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] dob Object to be assigned
    def dob=(new_value : Stripe::IndividualSpecsDob?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @dob = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] documents Object to be assigned
    def documents=(new_value : Stripe::PersonDocumentsSpecs?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @documents = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] email Object to be assigned
    def email=(new_value : String?)
      @email = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] first_name Object to be assigned
    def first_name=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("first_name", new_value.to_s.size, MAX_LENGTH_FOR_FIRST_NAME)
      end

      @first_name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] first_name_kana Object to be assigned
    def first_name_kana=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("first_name_kana", new_value.to_s.size, MAX_LENGTH_FOR_FIRST_NAME_KANA)
      end

      @first_name_kana = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] first_name_kanji Object to be assigned
    def first_name_kanji=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("first_name_kanji", new_value.to_s.size, MAX_LENGTH_FOR_FIRST_NAME_KANJI)
      end

      @first_name_kanji = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] full_name_aliases Object to be assigned
    def full_name_aliases=(new_value : Stripe::GetInvoicesUpcomingSubscriptionDefaultTaxRatesParameter?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @full_name_aliases = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] gender Object to be assigned
    def gender=(new_value : String?)
      @gender = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id_number Object to be assigned
    def id_number=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("id_number", new_value.to_s.size, MAX_LENGTH_FOR_ID_NUMBER)
      end

      @id_number = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id_number_secondary Object to be assigned
    def id_number_secondary=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("id_number_secondary", new_value.to_s.size, MAX_LENGTH_FOR_ID_NUMBER_SECONDARY)
      end

      @id_number_secondary = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last_name Object to be assigned
    def last_name=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("last_name", new_value.to_s.size, MAX_LENGTH_FOR_LAST_NAME)
      end

      @last_name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last_name_kana Object to be assigned
    def last_name_kana=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("last_name_kana", new_value.to_s.size, MAX_LENGTH_FOR_LAST_NAME_KANA)
      end

      @last_name_kana = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last_name_kanji Object to be assigned
    def last_name_kanji=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("last_name_kanji", new_value.to_s.size, MAX_LENGTH_FOR_LAST_NAME_KANJI)
      end

      @last_name_kanji = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] maiden_name Object to be assigned
    def maiden_name=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("maiden_name", new_value.to_s.size, MAX_LENGTH_FOR_MAIDEN_NAME)
      end

      @maiden_name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(new_value : Stripe::FileLinkCreationParamsMetadata?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @metadata = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] nationality Object to be assigned
    def nationality=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("nationality", new_value.to_s.size, MAX_LENGTH_FOR_NATIONALITY)
      end

      @nationality = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] phone Object to be assigned
    def phone=(new_value : String?)
      @phone = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] political_exposure Object to be assigned
    def political_exposure=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("political_exposure", new_value.to_s.size, MAX_LENGTH_FOR_POLITICAL_EXPOSURE)
      end

      @political_exposure = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] registered_address Object to be assigned
    def registered_address=(new_value : Stripe::AddressSpecs?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @registered_address = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] relationship Object to be assigned
    def relationship=(new_value : Stripe::RelationshipSpecs?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @relationship = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ssn_last_4 Object to be assigned
    def ssn_last_4=(new_value : String?)
      @ssn_last_4 = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] verification Object to be assigned
    def verification=(new_value : Stripe::PersonVerificationSpecs?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @verification = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@address, @address_kana, @address_kanji, @dob, @documents, @email, @first_name, @first_name_kana, @first_name_kanji, @full_name_aliases, @gender, @id_number, @id_number_secondary, @last_name, @last_name_kana, @last_name_kanji, @maiden_name, @metadata, @nationality, @phone, @political_exposure, @registered_address, @relationship, @ssn_last_4, @verification)
  end
end
