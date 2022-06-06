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
  # This is an object representing a person associated with a Stripe account.  A platform cannot access a Standard or Express account's persons after the account starts onboarding, such as after generating an account link for the account. See the [Standard onboarding](https://stripe.com/docs/connect/standard-accounts) or [Express onboarding documentation](https://stripe.com/docs/connect/express-accounts) for information about platform pre-filling and account onboarding steps.  Related guide: [Handling Identity Verification with the API](https://stripe.com/docs/connect/identity-verification-api#person-information).
  @[JSON::Serializable::Options(emit_nulls: true)]
  class Person
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # The account the person is associated with.
    @[JSON::Field(key: "account", type: String)]
    getter account : String

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64)]
    property created : Int64

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String)]
    getter id : String

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String)]
    getter object : String

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["person"])

    # Optional properties

    @[JSON::Field(key: "address", type: Address?, presence: true, ignore_serialize: address.nil? && !address_present?)]
    property address : Address?

    @[JSON::Field(ignore: true)]
    property? address_present : Bool = false

    @[JSON::Field(key: "address_kana", type: PersonAddressKana?, presence: true, ignore_serialize: address_kana.nil? && !address_kana_present?)]
    property address_kana : PersonAddressKana?

    @[JSON::Field(ignore: true)]
    property? address_kana_present : Bool = false

    @[JSON::Field(key: "address_kanji", type: PersonAddressKana?, presence: true, ignore_serialize: address_kanji.nil? && !address_kanji_present?)]
    property address_kanji : PersonAddressKana?

    @[JSON::Field(ignore: true)]
    property? address_kanji_present : Bool = false

    @[JSON::Field(key: "dob", type: LegalEntityDob?, presence: true, ignore_serialize: dob.nil? && !dob_present?)]
    property dob : LegalEntityDob?

    @[JSON::Field(ignore: true)]
    property? dob_present : Bool = false

    # The person's email address.
    @[JSON::Field(key: "email", type: String?, presence: true, ignore_serialize: email.nil? && !email_present?)]
    getter email : String?

    @[JSON::Field(ignore: true)]
    property? email_present : Bool = false

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

    # A list of alternate names or aliases that the person is known by.
    @[JSON::Field(key: "full_name_aliases", type: Array(String)?, presence: true, ignore_serialize: full_name_aliases.nil? && !full_name_aliases_present?)]
    property full_name_aliases : Array(String)?

    @[JSON::Field(ignore: true)]
    property? full_name_aliases_present : Bool = false

    @[JSON::Field(key: "future_requirements", type: PersonFutureRequirements1?, presence: true, ignore_serialize: future_requirements.nil? && !future_requirements_present?)]
    property future_requirements : PersonFutureRequirements1?

    @[JSON::Field(ignore: true)]
    property? future_requirements_present : Bool = false

    # The person's gender (International regulations require either \"male\" or \"female\").
    @[JSON::Field(key: "gender", type: String?, presence: true, ignore_serialize: gender.nil? && !gender_present?)]
    property gender : String?

    @[JSON::Field(ignore: true)]
    property? gender_present : Bool = false

    # Whether the person's `id_number` was provided.
    @[JSON::Field(key: "id_number_provided", type: Bool?, presence: true, ignore_serialize: id_number_provided.nil? && !id_number_provided_present?)]
    property id_number_provided : Bool?

    @[JSON::Field(ignore: true)]
    property? id_number_provided_present : Bool = false

    # Whether the person's `id_number_secondary` was provided.
    @[JSON::Field(key: "id_number_secondary_provided", type: Bool?, presence: true, ignore_serialize: id_number_secondary_provided.nil? && !id_number_secondary_provided_present?)]
    property id_number_secondary_provided : Bool?

    @[JSON::Field(ignore: true)]
    property? id_number_secondary_provided_present : Bool = false

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

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    # The country where the person is a national.
    @[JSON::Field(key: "nationality", type: String?, presence: true, ignore_serialize: nationality.nil? && !nationality_present?)]
    getter nationality : String?

    @[JSON::Field(ignore: true)]
    property? nationality_present : Bool = false

    # The person's phone number.
    @[JSON::Field(key: "phone", type: String?, presence: true, ignore_serialize: phone.nil? && !phone_present?)]
    getter phone : String?

    @[JSON::Field(ignore: true)]
    property? phone_present : Bool = false

    # Indicates if the person or any of their representatives, family members, or other closely related persons, declares that they hold or have held an important public job or function, in any jurisdiction.
    @[JSON::Field(key: "political_exposure", type: String?, presence: true, ignore_serialize: political_exposure.nil? && !political_exposure_present?)]
    getter political_exposure : String?

    @[JSON::Field(ignore: true)]
    property? political_exposure_present : Bool = false

    ENUM_VALIDATOR_FOR_POLITICAL_EXPOSURE = EnumValidator.new("political_exposure", "String", ["existing", "none"])

    @[JSON::Field(key: "registered_address", type: Address?, presence: true, ignore_serialize: registered_address.nil? && !registered_address_present?)]
    property registered_address : Address?

    @[JSON::Field(ignore: true)]
    property? registered_address_present : Bool = false

    @[JSON::Field(key: "relationship", type: PersonRelationship?, presence: true, ignore_serialize: relationship.nil? && !relationship_present?)]
    property relationship : PersonRelationship?

    @[JSON::Field(ignore: true)]
    property? relationship_present : Bool = false

    @[JSON::Field(key: "requirements", type: PersonRequirements1?, presence: true, ignore_serialize: requirements.nil? && !requirements_present?)]
    property requirements : PersonRequirements1?

    @[JSON::Field(ignore: true)]
    property? requirements_present : Bool = false

    # Whether the last four digits of the person's Social Security number have been provided (U.S. only).
    @[JSON::Field(key: "ssn_last_4_provided", type: Bool?, presence: true, ignore_serialize: ssn_last_4_provided.nil? && !ssn_last_4_provided_present?)]
    property ssn_last_4_provided : Bool?

    @[JSON::Field(ignore: true)]
    property? ssn_last_4_provided_present : Bool = false

    @[JSON::Field(key: "verification", type: LegalEntityPersonVerification?, presence: true, ignore_serialize: verification.nil? && !verification_present?)]
    property verification : LegalEntityPersonVerification?

    @[JSON::Field(ignore: true)]
    property? verification_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @account : String,
      @created : Int64,
      @id : String,
      @object : String,
      # Optional properties
      @address : Address? = nil,
      @address_kana : PersonAddressKana? = nil,
      @address_kanji : PersonAddressKana? = nil,
      @dob : LegalEntityDob? = nil,
      @email : String? = nil,
      @first_name : String? = nil,
      @first_name_kana : String? = nil,
      @first_name_kanji : String? = nil,
      @full_name_aliases : Array(String)? = nil,
      @future_requirements : PersonFutureRequirements1? = nil,
      @gender : String? = nil,
      @id_number_provided : Bool? = nil,
      @id_number_secondary_provided : Bool? = nil,
      @last_name : String? = nil,
      @last_name_kana : String? = nil,
      @last_name_kanji : String? = nil,
      @maiden_name : String? = nil,
      @metadata : Hash(String, String)? = nil,
      @nationality : String? = nil,
      @phone : String? = nil,
      @political_exposure : String? = nil,
      @registered_address : Address? = nil,
      @relationship : PersonRelationship? = nil,
      @requirements : PersonRequirements1? = nil,
      @ssn_last_4_provided : Bool? = nil,
      @verification : LegalEntityPersonVerification? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @account.to_s.size > 5000
        invalid_properties.push("invalid value for \"account\", the character length must be smaller than or equal to 5000.")
      end

      if @id.to_s.size > 5000
        invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)

      if !@email.nil? && @email.to_s.size > 5000
        invalid_properties.push("invalid value for \"email\", the character length must be smaller than or equal to 5000.")
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

      if !@phone.nil? && @phone.to_s.size > 5000
        invalid_properties.push("invalid value for \"phone\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_POLITICAL_EXPOSURE.error_message) unless ENUM_VALIDATOR_FOR_POLITICAL_EXPOSURE.valid?(@political_exposure)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @account.to_s.size > 5000
      return false if @id.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false if !@email.nil? && @email.to_s.size > 5000
      return false if !@first_name.nil? && @first_name.to_s.size > 5000
      return false if !@first_name_kana.nil? && @first_name_kana.to_s.size > 5000
      return false if !@first_name_kanji.nil? && @first_name_kanji.to_s.size > 5000
      return false if !@last_name.nil? && @last_name.to_s.size > 5000
      return false if !@last_name_kana.nil? && @last_name_kana.to_s.size > 5000
      return false if !@last_name_kanji.nil? && @last_name_kanji.to_s.size > 5000
      return false if !@maiden_name.nil? && @maiden_name.to_s.size > 5000
      return false if !@nationality.nil? && @nationality.to_s.size > 5000
      return false if !@phone.nil? && @phone.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_POLITICAL_EXPOSURE.valid?(@political_exposure)

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] account Value to be assigned
    def account=(account : String)
      if account.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"account\", the character length must be smaller than or equal to 5000.")
      end

      @account = account
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id : String)
      if id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      @id = id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object : String)
      ENUM_VALIDATOR_FOR_OBJECT.valid!(object, false)
      @object = object
    end

    # Custom attribute writer method with validation
    # @param [Object] email Value to be assigned
    def email=(email : String?)
      if !email.nil? && email.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"email\", the character length must be smaller than or equal to 5000.")
      end

      @email = email
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
    # @param [Object] phone Value to be assigned
    def phone=(phone : String?)
      if !phone.nil? && phone.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"phone\", the character length must be smaller than or equal to 5000.")
      end

      @phone = phone
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] political_exposure Object to be assigned
    def political_exposure=(political_exposure : String?)
      ENUM_VALIDATOR_FOR_POLITICAL_EXPOSURE.valid!(political_exposure)
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
    def_equals_and_hash(@account, @created, @id, @object, @address, @address_present, @address_kana, @address_kana_present, @address_kanji, @address_kanji_present, @dob, @dob_present, @email, @email_present, @first_name, @first_name_present, @first_name_kana, @first_name_kana_present, @first_name_kanji, @first_name_kanji_present, @full_name_aliases, @full_name_aliases_present, @future_requirements, @future_requirements_present, @gender, @gender_present, @id_number_provided, @id_number_provided_present, @id_number_secondary_provided, @id_number_secondary_provided_present, @last_name, @last_name_present, @last_name_kana, @last_name_kana_present, @last_name_kanji, @last_name_kanji_present, @maiden_name, @maiden_name_present, @metadata, @metadata_present, @nationality, @nationality_present, @phone, @phone_present, @political_exposure, @political_exposure_present, @registered_address, @registered_address_present, @relationship, @relationship_present, @requirements, @requirements_present, @ssn_last_4_provided, @ssn_last_4_provided_present, @verification, @verification_present)
  end
end
