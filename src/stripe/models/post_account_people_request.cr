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
  @[JSON::Serializable::Options(emit_nulls: true)]
  class PostAccountPeopleRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "account", type: String?, presence: true, ignore_serialize: account.nil? && !account_present?)]
    getter account : String?

    @[JSON::Field(ignore: true)]
    property? account_present : Bool = false

    @[JSON::Field(key: "address", type: AddressSpecs1?, presence: true, ignore_serialize: address.nil? && !address_present?)]
    property address : AddressSpecs1?

    @[JSON::Field(ignore: true)]
    property? address_present : Bool = false

    @[JSON::Field(key: "address_kana", type: JapanAddressKanaSpecs1?, presence: true, ignore_serialize: address_kana.nil? && !address_kana_present?)]
    property address_kana : JapanAddressKanaSpecs1?

    @[JSON::Field(ignore: true)]
    property? address_kana_present : Bool = false

    @[JSON::Field(key: "address_kanji", type: JapanAddressKanjiSpecs1?, presence: true, ignore_serialize: address_kanji.nil? && !address_kanji_present?)]
    property address_kanji : JapanAddressKanjiSpecs1?

    @[JSON::Field(ignore: true)]
    property? address_kanji_present : Bool = false

    @[JSON::Field(key: "dob", type: PostAccountPeopleRequestDob?, presence: true, ignore_serialize: dob.nil? && !dob_present?)]
    property dob : PostAccountPeopleRequestDob?

    @[JSON::Field(ignore: true)]
    property? dob_present : Bool = false

    @[JSON::Field(key: "documents", type: PersonDocumentsSpecs?, presence: true, ignore_serialize: documents.nil? && !documents_present?)]
    property documents : PersonDocumentsSpecs?

    @[JSON::Field(ignore: true)]
    property? documents_present : Bool = false

    # The person's email address.
    @[JSON::Field(key: "email", type: String?, presence: true, ignore_serialize: email.nil? && !email_present?)]
    property email : String?

    @[JSON::Field(ignore: true)]
    property? email_present : Bool = false

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, presence: true, ignore_serialize: expand.nil? && !expand_present?)]
    property expand : Array(String)?

    @[JSON::Field(ignore: true)]
    property? expand_present : Bool = false

    # The person's first name.
    @[JSON::Field(key: "first_name", type: String?, presence: true, ignore_serialize: first_name.nil? && !first_name_present?)]
    getter first_name : String?

    @[JSON::Field(ignore: true)]
    property? first_name_present : Bool = false

    # The Kana variation of the person's first name (Japan only).
    @[JSON::Field(key: "first_name_kana", type: String?, presence: true, ignore_serialize: first_name_kana.nil? && !first_name_kana_present?)]
    getter first_name_kana : String?

    @[JSON::Field(ignore: true)]
    property? first_name_kana_present : Bool = false

    # The Kanji variation of the person's first name (Japan only).
    @[JSON::Field(key: "first_name_kanji", type: String?, presence: true, ignore_serialize: first_name_kanji.nil? && !first_name_kanji_present?)]
    getter first_name_kanji : String?

    @[JSON::Field(ignore: true)]
    property? first_name_kanji_present : Bool = false

    @[JSON::Field(key: "full_name_aliases", type: PostAccountPeopleRequestFullNameAliases?, presence: true, ignore_serialize: full_name_aliases.nil? && !full_name_aliases_present?)]
    property full_name_aliases : PostAccountPeopleRequestFullNameAliases?

    @[JSON::Field(ignore: true)]
    property? full_name_aliases_present : Bool = false

    # The person's gender (International regulations require either \"male\" or \"female\").
    @[JSON::Field(key: "gender", type: String?, presence: true, ignore_serialize: gender.nil? && !gender_present?)]
    property gender : String?

    @[JSON::Field(ignore: true)]
    property? gender_present : Bool = false

    # The person's ID number, as appropriate for their country. For example, a social security number in the U.S., social insurance number in Canada, etc. Instead of the number itself, you can also provide a [PII token provided by Stripe.js](https://stripe.com/docs/js/tokens_sources/create_token?type=pii).
    @[JSON::Field(key: "id_number", type: String?, presence: true, ignore_serialize: id_number.nil? && !id_number_present?)]
    getter id_number : String?

    @[JSON::Field(ignore: true)]
    property? id_number_present : Bool = false

    # The person's secondary ID number, as appropriate for their country, will be used for enhanced verification checks. In Thailand, this would be the laser code found on the back of an ID card. Instead of the number itself, you can also provide a [PII token provided by Stripe.js](https://stripe.com/docs/js/tokens_sources/create_token?type=pii).
    @[JSON::Field(key: "id_number_secondary", type: String?, presence: true, ignore_serialize: id_number_secondary.nil? && !id_number_secondary_present?)]
    getter id_number_secondary : String?

    @[JSON::Field(ignore: true)]
    property? id_number_secondary_present : Bool = false

    # The person's last name.
    @[JSON::Field(key: "last_name", type: String?, presence: true, ignore_serialize: last_name.nil? && !last_name_present?)]
    getter last_name : String?

    @[JSON::Field(ignore: true)]
    property? last_name_present : Bool = false

    # The Kana variation of the person's last name (Japan only).
    @[JSON::Field(key: "last_name_kana", type: String?, presence: true, ignore_serialize: last_name_kana.nil? && !last_name_kana_present?)]
    getter last_name_kana : String?

    @[JSON::Field(ignore: true)]
    property? last_name_kana_present : Bool = false

    # The Kanji variation of the person's last name (Japan only).
    @[JSON::Field(key: "last_name_kanji", type: String?, presence: true, ignore_serialize: last_name_kanji.nil? && !last_name_kanji_present?)]
    getter last_name_kanji : String?

    @[JSON::Field(ignore: true)]
    property? last_name_kanji_present : Bool = false

    # The person's maiden name.
    @[JSON::Field(key: "maiden_name", type: String?, presence: true, ignore_serialize: maiden_name.nil? && !maiden_name_present?)]
    getter maiden_name : String?

    @[JSON::Field(ignore: true)]
    property? maiden_name_present : Bool = false

    @[JSON::Field(key: "metadata", type: PostAccountRequestMetadata?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : PostAccountRequestMetadata?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    # The country where the person is a national. Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)), or \"XX\" if unavailable.
    @[JSON::Field(key: "nationality", type: String?, presence: true, ignore_serialize: nationality.nil? && !nationality_present?)]
    getter nationality : String?

    @[JSON::Field(ignore: true)]
    property? nationality_present : Bool = false

    # A [person token](https://stripe.com/docs/connect/account-tokens), used to securely provide details to the person.
    @[JSON::Field(key: "person_token", type: String?, presence: true, ignore_serialize: person_token.nil? && !person_token_present?)]
    getter person_token : String?

    @[JSON::Field(ignore: true)]
    property? person_token_present : Bool = false

    # The person's phone number.
    @[JSON::Field(key: "phone", type: String?, presence: true, ignore_serialize: phone.nil? && !phone_present?)]
    property phone : String?

    @[JSON::Field(ignore: true)]
    property? phone_present : Bool = false

    # Indicates if the person or any of their representatives, family members, or other closely related persons, declares that they hold or have held an important public job or function, in any jurisdiction.
    @[JSON::Field(key: "political_exposure", type: String?, presence: true, ignore_serialize: political_exposure.nil? && !political_exposure_present?)]
    getter political_exposure : String?

    @[JSON::Field(ignore: true)]
    property? political_exposure_present : Bool = false

    @[JSON::Field(key: "registered_address", type: AddressSpecs2?, presence: true, ignore_serialize: registered_address.nil? && !registered_address_present?)]
    property registered_address : AddressSpecs2?

    @[JSON::Field(ignore: true)]
    property? registered_address_present : Bool = false

    @[JSON::Field(key: "relationship", type: RelationshipSpecs?, presence: true, ignore_serialize: relationship.nil? && !relationship_present?)]
    property relationship : RelationshipSpecs?

    @[JSON::Field(ignore: true)]
    property? relationship_present : Bool = false

    # The last four digits of the person's Social Security number (U.S. only).
    @[JSON::Field(key: "ssn_last_4", type: String?, presence: true, ignore_serialize: ssn_last_4.nil? && !ssn_last_4_present?)]
    property ssn_last_4 : String?

    @[JSON::Field(ignore: true)]
    property? ssn_last_4_present : Bool = false

    @[JSON::Field(key: "verification", type: PersonVerificationSpecs1?, presence: true, ignore_serialize: verification.nil? && !verification_present?)]
    property verification : PersonVerificationSpecs1?

    @[JSON::Field(ignore: true)]
    property? verification_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @account : String? = nil,
      @address : AddressSpecs1? = nil,
      @address_kana : JapanAddressKanaSpecs1? = nil,
      @address_kanji : JapanAddressKanjiSpecs1? = nil,
      @dob : PostAccountPeopleRequestDob? = nil,
      @documents : PersonDocumentsSpecs? = nil,
      @email : String? = nil,
      @expand : Array(String)? = nil,
      @first_name : String? = nil,
      @first_name_kana : String? = nil,
      @first_name_kanji : String? = nil,
      @full_name_aliases : PostAccountPeopleRequestFullNameAliases? = nil,
      @gender : String? = nil,
      @id_number : String? = nil,
      @id_number_secondary : String? = nil,
      @last_name : String? = nil,
      @last_name_kana : String? = nil,
      @last_name_kanji : String? = nil,
      @maiden_name : String? = nil,
      @metadata : PostAccountRequestMetadata? = nil,
      @nationality : String? = nil,
      @person_token : String? = nil,
      @phone : String? = nil,
      @political_exposure : String? = nil,
      @registered_address : AddressSpecs2? = nil,
      @relationship : RelationshipSpecs? = nil,
      @ssn_last_4 : String? = nil,
      @verification : PersonVerificationSpecs1? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@account.nil? && @account.to_s.size > 5000
        invalid_properties.push("invalid value for \"account\", the character length must be smaller than or equal to 5000.")
      end

      if !@first_name.nil? && @first_name.to_s.size > 5000
        invalid_properties.push("invalid value for \"first_name\", the character length must be smaller than or equal to 5000.")
      end

      if !@first_name_kana.nil? && @first_name_kana.to_s.size > 5000
        invalid_properties.push("invalid value for \"first_name_kana\", the character length must be smaller than or equal to 5000.")
      end

      if !@first_name_kanji.nil? && @first_name_kanji.to_s.size > 5000
        invalid_properties.push("invalid value for \"first_name_kanji\", the character length must be smaller than or equal to 5000.")
      end

      if !@id_number.nil? && @id_number.to_s.size > 5000
        invalid_properties.push("invalid value for \"id_number\", the character length must be smaller than or equal to 5000.")
      end

      if !@id_number_secondary.nil? && @id_number_secondary.to_s.size > 5000
        invalid_properties.push("invalid value for \"id_number_secondary\", the character length must be smaller than or equal to 5000.")
      end

      if !@last_name.nil? && @last_name.to_s.size > 5000
        invalid_properties.push("invalid value for \"last_name\", the character length must be smaller than or equal to 5000.")
      end

      if !@last_name_kana.nil? && @last_name_kana.to_s.size > 5000
        invalid_properties.push("invalid value for \"last_name_kana\", the character length must be smaller than or equal to 5000.")
      end

      if !@last_name_kanji.nil? && @last_name_kanji.to_s.size > 5000
        invalid_properties.push("invalid value for \"last_name_kanji\", the character length must be smaller than or equal to 5000.")
      end

      if !@maiden_name.nil? && @maiden_name.to_s.size > 5000
        invalid_properties.push("invalid value for \"maiden_name\", the character length must be smaller than or equal to 5000.")
      end

      if !@nationality.nil? && @nationality.to_s.size > 5000
        invalid_properties.push("invalid value for \"nationality\", the character length must be smaller than or equal to 5000.")
      end

      if !@person_token.nil? && @person_token.to_s.size > 5000
        invalid_properties.push("invalid value for \"person_token\", the character length must be smaller than or equal to 5000.")
      end

      if !@political_exposure.nil? && @political_exposure.to_s.size > 5000
        invalid_properties.push("invalid value for \"political_exposure\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@account.nil? && @account.to_s.size > 5000
      return false if !@first_name.nil? && @first_name.to_s.size > 5000
      return false if !@first_name_kana.nil? && @first_name_kana.to_s.size > 5000
      return false if !@first_name_kanji.nil? && @first_name_kanji.to_s.size > 5000
      return false if !@id_number.nil? && @id_number.to_s.size > 5000
      return false if !@id_number_secondary.nil? && @id_number_secondary.to_s.size > 5000
      return false if !@last_name.nil? && @last_name.to_s.size > 5000
      return false if !@last_name_kana.nil? && @last_name_kana.to_s.size > 5000
      return false if !@last_name_kanji.nil? && @last_name_kanji.to_s.size > 5000
      return false if !@maiden_name.nil? && @maiden_name.to_s.size > 5000
      return false if !@nationality.nil? && @nationality.to_s.size > 5000
      return false if !@person_token.nil? && @person_token.to_s.size > 5000
      return false if !@political_exposure.nil? && @political_exposure.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] account Value to be assigned
    def account=(account : String?)
      if !account.nil? && account.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"account\", the character length must be smaller than or equal to 5000.")
      end

      @account = account
    end

    # Custom attribute writer method with validation
    # @param [Object] first_name Value to be assigned
    def first_name=(first_name : String?)
      if !first_name.nil? && first_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"first_name\", the character length must be smaller than or equal to 5000.")
      end

      @first_name = first_name
    end

    # Custom attribute writer method with validation
    # @param [Object] first_name_kana Value to be assigned
    def first_name_kana=(first_name_kana : String?)
      if !first_name_kana.nil? && first_name_kana.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"first_name_kana\", the character length must be smaller than or equal to 5000.")
      end

      @first_name_kana = first_name_kana
    end

    # Custom attribute writer method with validation
    # @param [Object] first_name_kanji Value to be assigned
    def first_name_kanji=(first_name_kanji : String?)
      if !first_name_kanji.nil? && first_name_kanji.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"first_name_kanji\", the character length must be smaller than or equal to 5000.")
      end

      @first_name_kanji = first_name_kanji
    end

    # Custom attribute writer method with validation
    # @param [Object] id_number Value to be assigned
    def id_number=(id_number : String?)
      if !id_number.nil? && id_number.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"id_number\", the character length must be smaller than or equal to 5000.")
      end

      @id_number = id_number
    end

    # Custom attribute writer method with validation
    # @param [Object] id_number_secondary Value to be assigned
    def id_number_secondary=(id_number_secondary : String?)
      if !id_number_secondary.nil? && id_number_secondary.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"id_number_secondary\", the character length must be smaller than or equal to 5000.")
      end

      @id_number_secondary = id_number_secondary
    end

    # Custom attribute writer method with validation
    # @param [Object] last_name Value to be assigned
    def last_name=(last_name : String?)
      if !last_name.nil? && last_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"last_name\", the character length must be smaller than or equal to 5000.")
      end

      @last_name = last_name
    end

    # Custom attribute writer method with validation
    # @param [Object] last_name_kana Value to be assigned
    def last_name_kana=(last_name_kana : String?)
      if !last_name_kana.nil? && last_name_kana.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"last_name_kana\", the character length must be smaller than or equal to 5000.")
      end

      @last_name_kana = last_name_kana
    end

    # Custom attribute writer method with validation
    # @param [Object] last_name_kanji Value to be assigned
    def last_name_kanji=(last_name_kanji : String?)
      if !last_name_kanji.nil? && last_name_kanji.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"last_name_kanji\", the character length must be smaller than or equal to 5000.")
      end

      @last_name_kanji = last_name_kanji
    end

    # Custom attribute writer method with validation
    # @param [Object] maiden_name Value to be assigned
    def maiden_name=(maiden_name : String?)
      if !maiden_name.nil? && maiden_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"maiden_name\", the character length must be smaller than or equal to 5000.")
      end

      @maiden_name = maiden_name
    end

    # Custom attribute writer method with validation
    # @param [Object] nationality Value to be assigned
    def nationality=(nationality : String?)
      if !nationality.nil? && nationality.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"nationality\", the character length must be smaller than or equal to 5000.")
      end

      @nationality = nationality
    end

    # Custom attribute writer method with validation
    # @param [Object] person_token Value to be assigned
    def person_token=(person_token : String?)
      if !person_token.nil? && person_token.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"person_token\", the character length must be smaller than or equal to 5000.")
      end

      @person_token = person_token
    end

    # Custom attribute writer method with validation
    # @param [Object] political_exposure Value to be assigned
    def political_exposure=(political_exposure : String?)
      if !political_exposure.nil? && political_exposure.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"political_exposure\", the character length must be smaller than or equal to 5000.")
      end

      @political_exposure = political_exposure
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
    def_equals_and_hash(@account, @account_present, @address, @address_present, @address_kana, @address_kana_present, @address_kanji, @address_kanji_present, @dob, @dob_present, @documents, @documents_present, @email, @email_present, @expand, @expand_present, @first_name, @first_name_present, @first_name_kana, @first_name_kana_present, @first_name_kanji, @first_name_kanji_present, @full_name_aliases, @full_name_aliases_present, @gender, @gender_present, @id_number, @id_number_present, @id_number_secondary, @id_number_secondary_present, @last_name, @last_name_present, @last_name_kana, @last_name_kana_present, @last_name_kanji, @last_name_kanji_present, @maiden_name, @maiden_name_present, @metadata, @metadata_present, @nationality, @nationality_present, @person_token, @person_token_present, @phone, @phone_present, @political_exposure, @political_exposure_present, @registered_address, @registered_address_present, @relationship, @relationship_present, @ssn_last_4, @ssn_last_4_present, @verification, @verification_present)
  end
end
