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
  class PostAccountsAccountPeopleRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "address", type: Stripe::AddressSpecs1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address : Stripe::AddressSpecs1? = nil

    @[JSON::Field(key: "address_kana", type: Stripe::JapanAddressKanaSpecs1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address_kana : Stripe::JapanAddressKanaSpecs1? = nil

    @[JSON::Field(key: "address_kanji", type: Stripe::JapanAddressKanjiSpecs1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address_kanji : Stripe::JapanAddressKanjiSpecs1? = nil

    @[JSON::Field(key: "dob", type: Stripe::PostAccountPeopleRequestDob?, default: nil, required: false, nullable: false, emit_null: false)]
    getter dob : Stripe::PostAccountPeopleRequestDob? = nil

    @[JSON::Field(key: "documents", type: Stripe::PersonDocumentsSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter documents : Stripe::PersonDocumentsSpecs? = nil

    # The person's email address.
    @[JSON::Field(key: "email", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter email : String? = nil

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # The person's first name.
    @[JSON::Field(key: "first_name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter first_name : String? = nil

    # The Kana variation of the person's first name (Japan only).
    @[JSON::Field(key: "first_name_kana", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter first_name_kana : String? = nil

    # The Kanji variation of the person's first name (Japan only).
    @[JSON::Field(key: "first_name_kanji", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter first_name_kanji : String? = nil

    @[JSON::Field(key: "full_name_aliases", type: Stripe::PostAccountPeopleRequestFullNameAliases?, default: nil, required: false, nullable: false, emit_null: false)]
    getter full_name_aliases : Stripe::PostAccountPeopleRequestFullNameAliases? = nil

    # The person's gender (International regulations require either \"male\" or \"female\").
    @[JSON::Field(key: "gender", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter gender : String? = nil

    # The person's ID number, as appropriate for their country. For example, a social security number in the U.S., social insurance number in Canada, etc. Instead of the number itself, you can also provide a [PII token provided by Stripe.js](https://stripe.com/docs/js/tokens_sources/create_token?type=pii).
    @[JSON::Field(key: "id_number", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter id_number : String? = nil

    # The person's secondary ID number, as appropriate for their country, will be used for enhanced verification checks. In Thailand, this would be the laser code found on the back of an ID card. Instead of the number itself, you can also provide a [PII token provided by Stripe.js](https://stripe.com/docs/js/tokens_sources/create_token?type=pii).
    @[JSON::Field(key: "id_number_secondary", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter id_number_secondary : String? = nil

    # The person's last name.
    @[JSON::Field(key: "last_name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter last_name : String? = nil

    # The Kana variation of the person's last name (Japan only).
    @[JSON::Field(key: "last_name_kana", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter last_name_kana : String? = nil

    # The Kanji variation of the person's last name (Japan only).
    @[JSON::Field(key: "last_name_kanji", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter last_name_kanji : String? = nil

    # The person's maiden name.
    @[JSON::Field(key: "maiden_name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter maiden_name : String? = nil

    @[JSON::Field(key: "metadata", type: Stripe::PostAccountRequestMetadata?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Stripe::PostAccountRequestMetadata? = nil

    # The country where the person is a national. Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)), or \"XX\" if unavailable.
    @[JSON::Field(key: "nationality", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter nationality : String? = nil

    # A [person token](https://stripe.com/docs/connect/account-tokens), used to securely provide details to the person.
    @[JSON::Field(key: "person_token", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter person_token : String? = nil

    # The person's phone number.
    @[JSON::Field(key: "phone", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter phone : String? = nil

    # Indicates if the person or any of their representatives, family members, or other closely related persons, declares that they hold or have held an important public job or function, in any jurisdiction.
    @[JSON::Field(key: "political_exposure", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter political_exposure : String? = nil

    @[JSON::Field(key: "registered_address", type: Stripe::AddressSpecs2?, default: nil, required: false, nullable: false, emit_null: false)]
    getter registered_address : Stripe::AddressSpecs2? = nil

    @[JSON::Field(key: "relationship", type: Stripe::RelationshipSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter relationship : Stripe::RelationshipSpecs? = nil

    # The last four digits of the person's Social Security number (U.S. only).
    @[JSON::Field(key: "ssn_last_4", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter ssn_last_4 : String? = nil

    @[JSON::Field(key: "verification", type: Stripe::PersonVerificationSpecs1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter verification : Stripe::PersonVerificationSpecs1? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @address : Stripe::AddressSpecs1? = nil,
      @address_kana : Stripe::JapanAddressKanaSpecs1? = nil,
      @address_kanji : Stripe::JapanAddressKanjiSpecs1? = nil,
      @dob : Stripe::PostAccountPeopleRequestDob? = nil,
      @documents : Stripe::PersonDocumentsSpecs? = nil,
      @email : String? = nil,
      @expand : Array(String)? = nil,
      @first_name : String? = nil,
      @first_name_kana : String? = nil,
      @first_name_kanji : String? = nil,
      @full_name_aliases : Stripe::PostAccountPeopleRequestFullNameAliases? = nil,
      @gender : String? = nil,
      @id_number : String? = nil,
      @id_number_secondary : String? = nil,
      @last_name : String? = nil,
      @last_name_kana : String? = nil,
      @last_name_kanji : String? = nil,
      @maiden_name : String? = nil,
      @metadata : Stripe::PostAccountRequestMetadata? = nil,
      @nationality : String? = nil,
      @person_token : String? = nil,
      @phone : String? = nil,
      @political_exposure : String? = nil,
      @registered_address : Stripe::AddressSpecs2? = nil,
      @relationship : Stripe::RelationshipSpecs? = nil,
      @ssn_last_4 : String? = nil,
      @verification : Stripe::PersonVerificationSpecs1? = nil
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
      if _dob = @dob
        if _dob.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_dob.list_invalid_properties_for("dob"))
        end
      end
      if _documents = @documents
        if _documents.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_documents.list_invalid_properties_for("documents"))
        end
      end

      if _first_name = @first_name
        if _first_name.to_s.size > 5000
          invalid_properties.push("invalid value for \"first_name\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _first_name_kana = @first_name_kana
        if _first_name_kana.to_s.size > 5000
          invalid_properties.push("invalid value for \"first_name_kana\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _first_name_kanji = @first_name_kanji
        if _first_name_kanji.to_s.size > 5000
          invalid_properties.push("invalid value for \"first_name_kanji\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _full_name_aliases = @full_name_aliases
        if _full_name_aliases.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_full_name_aliases.list_invalid_properties_for("full_name_aliases"))
        end
      end

      if _id_number = @id_number
        if _id_number.to_s.size > 5000
          invalid_properties.push("invalid value for \"id_number\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _id_number_secondary = @id_number_secondary
        if _id_number_secondary.to_s.size > 5000
          invalid_properties.push("invalid value for \"id_number_secondary\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _last_name = @last_name
        if _last_name.to_s.size > 5000
          invalid_properties.push("invalid value for \"last_name\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _last_name_kana = @last_name_kana
        if _last_name_kana.to_s.size > 5000
          invalid_properties.push("invalid value for \"last_name_kana\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _last_name_kanji = @last_name_kanji
        if _last_name_kanji.to_s.size > 5000
          invalid_properties.push("invalid value for \"last_name_kanji\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _maiden_name = @maiden_name
        if _maiden_name.to_s.size > 5000
          invalid_properties.push("invalid value for \"maiden_name\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _metadata = @metadata
        if _metadata.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_metadata.list_invalid_properties_for("metadata"))
        end
      end
      if _nationality = @nationality
        if _nationality.to_s.size > 5000
          invalid_properties.push("invalid value for \"nationality\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _person_token = @person_token
        if _person_token.to_s.size > 5000
          invalid_properties.push("invalid value for \"person_token\", the character length must be smaller than or equal to 5000.")
        end
      end

      if _political_exposure = @political_exposure
        if _political_exposure.to_s.size > 5000
          invalid_properties.push("invalid value for \"political_exposure\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _registered_address = @registered_address
        if _registered_address.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_registered_address.list_invalid_properties_for("registered_address"))
        end
      end
      if _relationship = @relationship
        if _relationship.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_relationship.list_invalid_properties_for("relationship"))
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
      if _dob = @dob
        if _dob.is_a?(OpenApi::Validatable)
          return false unless _dob.valid?
        end
      end
      if _documents = @documents
        if _documents.is_a?(OpenApi::Validatable)
          return false unless _documents.valid?
        end
      end

      if _first_name = @first_name
        return false if _first_name.to_s.size > 5000
      end
      if _first_name_kana = @first_name_kana
        return false if _first_name_kana.to_s.size > 5000
      end
      if _first_name_kanji = @first_name_kanji
        return false if _first_name_kanji.to_s.size > 5000
      end
      if _full_name_aliases = @full_name_aliases
        if _full_name_aliases.is_a?(OpenApi::Validatable)
          return false unless _full_name_aliases.valid?
        end
      end

      if _id_number = @id_number
        return false if _id_number.to_s.size > 5000
      end
      if _id_number_secondary = @id_number_secondary
        return false if _id_number_secondary.to_s.size > 5000
      end
      if _last_name = @last_name
        return false if _last_name.to_s.size > 5000
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
        if _metadata.is_a?(OpenApi::Validatable)
          return false unless _metadata.valid?
        end
      end
      if _nationality = @nationality
        return false if _nationality.to_s.size > 5000
      end
      if _person_token = @person_token
        return false if _person_token.to_s.size > 5000
      end

      if _political_exposure = @political_exposure
        return false if _political_exposure.to_s.size > 5000
      end
      if _registered_address = @registered_address
        if _registered_address.is_a?(OpenApi::Validatable)
          return false unless _registered_address.valid?
        end
      end
      if _relationship = @relationship
        if _relationship.is_a?(OpenApi::Validatable)
          return false unless _relationship.valid?
        end
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
    def address=(address : Stripe::AddressSpecs1?)
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
    def address_kana=(address_kana : Stripe::JapanAddressKanaSpecs1?)
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
    def address_kanji=(address_kanji : Stripe::JapanAddressKanjiSpecs1?)
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
    # @param [Object] dob Object to be assigned
    def dob=(dob : Stripe::PostAccountPeopleRequestDob?)
      if dob.nil?
        return @dob = nil
      end
      _dob = dob.not_nil!
      if _dob.is_a?(OpenApi::Validatable)
        _dob.validate
      end
      @dob = _dob
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] documents Object to be assigned
    def documents=(documents : Stripe::PersonDocumentsSpecs?)
      if documents.nil?
        return @documents = nil
      end
      _documents = documents.not_nil!
      if _documents.is_a?(OpenApi::Validatable)
        _documents.validate
      end
      @documents = _documents
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
    # @param [Object] expand Object to be assigned
    def expand=(expand : Array(String)?)
      if expand.nil?
        return @expand = nil
      end
      _expand = expand.not_nil!
      @expand = _expand
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] first_name Object to be assigned
    def first_name=(first_name : String?)
      if first_name.nil?
        return @first_name = nil
      end
      _first_name = first_name.not_nil!
      if _first_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"first_name\", the character length must be smaller than or equal to 5000.")
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
      if _first_name_kana.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"first_name_kana\", the character length must be smaller than or equal to 5000.")
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
      if _first_name_kanji.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"first_name_kanji\", the character length must be smaller than or equal to 5000.")
      end

      @first_name_kanji = _first_name_kanji
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] full_name_aliases Object to be assigned
    def full_name_aliases=(full_name_aliases : Stripe::PostAccountPeopleRequestFullNameAliases?)
      if full_name_aliases.nil?
        return @full_name_aliases = nil
      end
      _full_name_aliases = full_name_aliases.not_nil!
      if _full_name_aliases.is_a?(OpenApi::Validatable)
        _full_name_aliases.validate
      end
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
      if _id_number.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"id_number\", the character length must be smaller than or equal to 5000.")
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
      if _id_number_secondary.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"id_number_secondary\", the character length must be smaller than or equal to 5000.")
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
      if _last_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"last_name\", the character length must be smaller than or equal to 5000.")
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
      if _last_name_kana.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"last_name_kana\", the character length must be smaller than or equal to 5000.")
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
      if _last_name_kanji.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"last_name_kanji\", the character length must be smaller than or equal to 5000.")
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
      if _maiden_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"maiden_name\", the character length must be smaller than or equal to 5000.")
      end

      @maiden_name = _maiden_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Stripe::PostAccountRequestMetadata?)
      if metadata.nil?
        return @metadata = nil
      end
      _metadata = metadata.not_nil!
      if _metadata.is_a?(OpenApi::Validatable)
        _metadata.validate
      end
      @metadata = _metadata
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] nationality Object to be assigned
    def nationality=(nationality : String?)
      if nationality.nil?
        return @nationality = nil
      end
      _nationality = nationality.not_nil!
      if _nationality.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"nationality\", the character length must be smaller than or equal to 5000.")
      end

      @nationality = _nationality
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] person_token Object to be assigned
    def person_token=(person_token : String?)
      if person_token.nil?
        return @person_token = nil
      end
      _person_token = person_token.not_nil!
      if _person_token.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"person_token\", the character length must be smaller than or equal to 5000.")
      end

      @person_token = _person_token
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
      if _political_exposure.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"political_exposure\", the character length must be smaller than or equal to 5000.")
      end

      @political_exposure = _political_exposure
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] registered_address Object to be assigned
    def registered_address=(registered_address : Stripe::AddressSpecs2?)
      if registered_address.nil?
        return @registered_address = nil
      end
      _registered_address = registered_address.not_nil!
      if _registered_address.is_a?(OpenApi::Validatable)
        _registered_address.validate
      end
      @registered_address = _registered_address
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] relationship Object to be assigned
    def relationship=(relationship : Stripe::RelationshipSpecs?)
      if relationship.nil?
        return @relationship = nil
      end
      _relationship = relationship.not_nil!
      if _relationship.is_a?(OpenApi::Validatable)
        _relationship.validate
      end
      @relationship = _relationship
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ssn_last_4 Object to be assigned
    def ssn_last_4=(ssn_last_4 : String?)
      if ssn_last_4.nil?
        return @ssn_last_4 = nil
      end
      _ssn_last_4 = ssn_last_4.not_nil!
      @ssn_last_4 = _ssn_last_4
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] verification Object to be assigned
    def verification=(verification : Stripe::PersonVerificationSpecs1?)
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
    def_equals_and_hash(@address, @address_kana, @address_kanji, @dob, @documents, @email, @expand, @first_name, @first_name_kana, @first_name_kanji, @full_name_aliases, @gender, @id_number, @id_number_secondary, @last_name, @last_name_kana, @last_name_kanji, @maiden_name, @metadata, @nationality, @person_token, @phone, @political_exposure, @registered_address, @relationship, @ssn_last_4, @verification)
  end
end
