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
  # This is an object representing a person associated with a Stripe account.  A platform cannot access a Standard or Express account's persons after the account starts onboarding, such as after generating an account link for the account. See the [Standard onboarding](https://stripe.com/docs/connect/standard-accounts) or [Express onboarding documentation](https://stripe.com/docs/connect/express-accounts) for information about platform pre-filling and account onboarding steps.  Related guide: [Handling Identity Verification with the API](https://stripe.com/docs/connect/identity-verification-api#person-information).
  class Person
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The account the person is associated with.
    @[JSON::Field(key: "account", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter account : String? = nil
    MAX_LENGTH_FOR_ACCOUNT = 5000

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [person]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("person")

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "address", type: Stripe::Address?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address : Stripe::Address? = nil

    @[JSON::Field(key: "address_kana", type: Stripe::PersonAddressKana?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: address_kana.nil? && !address_kana_present?)]
    getter address_kana : Stripe::PersonAddressKana? = nil

    @[JSON::Field(ignore: true)]
    property? address_kana_present : Bool = false

    @[JSON::Field(key: "address_kanji", type: Stripe::PersonAddressKana?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: address_kanji.nil? && !address_kanji_present?)]
    getter address_kanji : Stripe::PersonAddressKana? = nil

    @[JSON::Field(ignore: true)]
    property? address_kanji_present : Bool = false

    @[JSON::Field(key: "dob", type: Stripe::LegalEntityDob?, default: nil, required: false, nullable: false, emit_null: false)]
    getter dob : Stripe::LegalEntityDob? = nil

    # The person's email address.
    @[JSON::Field(key: "email", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: email.nil? && !email_present?)]
    getter email : String? = nil
    MAX_LENGTH_FOR_EMAIL = 5000

    @[JSON::Field(ignore: true)]
    property? email_present : Bool = false

    # The person's first name.
    @[JSON::Field(key: "first_name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: first_name.nil? && !first_name_present?)]
    getter first_name : String? = nil
    MAX_LENGTH_FOR_FIRST_NAME = 5000

    @[JSON::Field(ignore: true)]
    property? first_name_present : Bool = false

    # The Kana variation of the person's first name (Japan only).
    @[JSON::Field(key: "first_name_kana", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: first_name_kana.nil? && !first_name_kana_present?)]
    getter first_name_kana : String? = nil
    MAX_LENGTH_FOR_FIRST_NAME_KANA = 5000

    @[JSON::Field(ignore: true)]
    property? first_name_kana_present : Bool = false

    # The Kanji variation of the person's first name (Japan only).
    @[JSON::Field(key: "first_name_kanji", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: first_name_kanji.nil? && !first_name_kanji_present?)]
    getter first_name_kanji : String? = nil
    MAX_LENGTH_FOR_FIRST_NAME_KANJI = 5000

    @[JSON::Field(ignore: true)]
    property? first_name_kanji_present : Bool = false

    # A list of alternate names or aliases that the person is known by.
    @[JSON::Field(key: "full_name_aliases", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter full_name_aliases : Array(String)? = nil

    @[JSON::Field(key: "future_requirements", type: Stripe::PersonFutureRequirements1?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: future_requirements.nil? && !future_requirements_present?)]
    getter future_requirements : Stripe::PersonFutureRequirements1? = nil

    @[JSON::Field(ignore: true)]
    property? future_requirements_present : Bool = false

    # The person's gender (International regulations require either \"male\" or \"female\").
    @[JSON::Field(key: "gender", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: gender.nil? && !gender_present?)]
    getter gender : String? = nil

    @[JSON::Field(ignore: true)]
    property? gender_present : Bool = false

    # Whether the person's `id_number` was provided.
    @[JSON::Field(key: "id_number_provided", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter id_number_provided : Bool? = nil

    # Whether the person's `id_number_secondary` was provided.
    @[JSON::Field(key: "id_number_secondary_provided", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter id_number_secondary_provided : Bool? = nil

    # The person's last name.
    @[JSON::Field(key: "last_name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: last_name.nil? && !last_name_present?)]
    getter last_name : String? = nil
    MAX_LENGTH_FOR_LAST_NAME = 5000

    @[JSON::Field(ignore: true)]
    property? last_name_present : Bool = false

    # The Kana variation of the person's last name (Japan only).
    @[JSON::Field(key: "last_name_kana", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: last_name_kana.nil? && !last_name_kana_present?)]
    getter last_name_kana : String? = nil
    MAX_LENGTH_FOR_LAST_NAME_KANA = 5000

    @[JSON::Field(ignore: true)]
    property? last_name_kana_present : Bool = false

    # The Kanji variation of the person's last name (Japan only).
    @[JSON::Field(key: "last_name_kanji", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: last_name_kanji.nil? && !last_name_kanji_present?)]
    getter last_name_kanji : String? = nil
    MAX_LENGTH_FOR_LAST_NAME_KANJI = 5000

    @[JSON::Field(ignore: true)]
    property? last_name_kanji_present : Bool = false

    # The person's maiden name.
    @[JSON::Field(key: "maiden_name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: maiden_name.nil? && !maiden_name_present?)]
    getter maiden_name : String? = nil
    MAX_LENGTH_FOR_MAIDEN_NAME = 5000

    @[JSON::Field(ignore: true)]
    property? maiden_name_present : Bool = false

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # The country where the person is a national.
    @[JSON::Field(key: "nationality", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: nationality.nil? && !nationality_present?)]
    getter nationality : String? = nil
    MAX_LENGTH_FOR_NATIONALITY = 5000

    @[JSON::Field(ignore: true)]
    property? nationality_present : Bool = false

    # The person's phone number.
    @[JSON::Field(key: "phone", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: phone.nil? && !phone_present?)]
    getter phone : String? = nil
    MAX_LENGTH_FOR_PHONE = 5000

    @[JSON::Field(ignore: true)]
    property? phone_present : Bool = false

    # Indicates if the person or any of their representatives, family members, or other closely related persons, declares that they hold or have held an important public job or function, in any jurisdiction.
    @[JSON::Field(key: "political_exposure", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter political_exposure : String? = nil
    ERROR_MESSAGE_FOR_POLITICAL_EXPOSURE = "invalid value for \"political_exposure\", must be one of [existing, none]."
    VALID_VALUES_FOR_POLITICAL_EXPOSURE  = String.static_array("existing", "none")

    @[JSON::Field(key: "registered_address", type: Stripe::Address?, default: nil, required: false, nullable: false, emit_null: false)]
    getter registered_address : Stripe::Address? = nil

    @[JSON::Field(key: "relationship", type: Stripe::PersonRelationship?, default: nil, required: false, nullable: false, emit_null: false)]
    getter relationship : Stripe::PersonRelationship? = nil

    @[JSON::Field(key: "requirements", type: Stripe::PersonRequirements1?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: requirements.nil? && !requirements_present?)]
    getter requirements : Stripe::PersonRequirements1? = nil

    @[JSON::Field(ignore: true)]
    property? requirements_present : Bool = false

    # Whether the last four digits of the person's Social Security number have been provided (U.S. only).
    @[JSON::Field(key: "ssn_last_4_provided", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter ssn_last_4_provided : Bool? = nil

    @[JSON::Field(key: "verification", type: Stripe::LegalEntityPersonVerification?, default: nil, required: false, nullable: false, emit_null: false)]
    getter verification : Stripe::LegalEntityPersonVerification? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @account : String? = nil,
      @created : Int64? = nil,
      @id : String? = nil,
      @object : String? = nil,
      # Optional properties
      @address : Stripe::Address? = nil,
      @address_kana : Stripe::PersonAddressKana? = nil,
      @address_kanji : Stripe::PersonAddressKana? = nil,
      @dob : Stripe::LegalEntityDob? = nil,
      @email : String? = nil,
      @first_name : String? = nil,
      @first_name_kana : String? = nil,
      @first_name_kanji : String? = nil,
      @full_name_aliases : Array(String)? = nil,
      @future_requirements : Stripe::PersonFutureRequirements1? = nil,
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
      @registered_address : Stripe::Address? = nil,
      @relationship : Stripe::PersonRelationship? = nil,
      @requirements : Stripe::PersonRequirements1? = nil,
      @ssn_last_4_provided : Bool? = nil,
      @verification : Stripe::LegalEntityPersonVerification? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"account\" is required and cannot be null") if @account.nil?

      unless (_account = @account).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("account", _account.to_s.size, MAX_LENGTH_FOR_ACCOUNT)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      unless (_object = @object).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
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
      unless (_email = @email).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("email", _email.to_s.size, MAX_LENGTH_FOR_EMAIL)
          invalid_properties.push(max_length_error)
        end
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

      unless (_future_requirements = @future_requirements).nil?
        invalid_properties.concat(_future_requirements.list_invalid_properties_for("future_requirements")) if _future_requirements.is_a?(OpenApi::Validatable)
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

      unless (_nationality = @nationality).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("nationality", _nationality.to_s.size, MAX_LENGTH_FOR_NATIONALITY)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_phone = @phone).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("phone", _phone.to_s.size, MAX_LENGTH_FOR_PHONE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_political_exposure = @political_exposure).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_POLITICAL_EXPOSURE) unless OpenApi::EnumValidator.valid?(_political_exposure, VALID_VALUES_FOR_POLITICAL_EXPOSURE)
      end
      unless (_registered_address = @registered_address).nil?
        invalid_properties.concat(_registered_address.list_invalid_properties_for("registered_address")) if _registered_address.is_a?(OpenApi::Validatable)
      end
      unless (_relationship = @relationship).nil?
        invalid_properties.concat(_relationship.list_invalid_properties_for("relationship")) if _relationship.is_a?(OpenApi::Validatable)
      end
      unless (_requirements = @requirements).nil?
        invalid_properties.concat(_requirements.list_invalid_properties_for("requirements")) if _requirements.is_a?(OpenApi::Validatable)
      end

      unless (_verification = @verification).nil?
        invalid_properties.concat(_verification.list_invalid_properties_for("verification")) if _verification.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @account.nil?
      unless (_account = @account).nil?
        return false if _account.to_s.size > MAX_LENGTH_FOR_ACCOUNT
      end

      return false if @created.nil?

      return false if @id.nil?
      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      return false if @object.nil?
      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

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

      unless (_email = @email).nil?
        return false if _email.to_s.size > MAX_LENGTH_FOR_EMAIL
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

      unless (_future_requirements = @future_requirements).nil?
        return false if _future_requirements.is_a?(OpenApi::Validatable) && !_future_requirements.valid?
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

      unless (_nationality = @nationality).nil?
        return false if _nationality.to_s.size > MAX_LENGTH_FOR_NATIONALITY
      end

      unless (_phone = @phone).nil?
        return false if _phone.to_s.size > MAX_LENGTH_FOR_PHONE
      end

      unless (_political_exposure = @political_exposure).nil?
        return false unless OpenApi::EnumValidator.valid?(_political_exposure, VALID_VALUES_FOR_POLITICAL_EXPOSURE)
      end

      unless (_registered_address = @registered_address).nil?
        return false if _registered_address.is_a?(OpenApi::Validatable) && !_registered_address.valid?
      end

      unless (_relationship = @relationship).nil?
        return false if _relationship.is_a?(OpenApi::Validatable) && !_relationship.valid?
      end

      unless (_requirements = @requirements).nil?
        return false if _requirements.is_a?(OpenApi::Validatable) && !_requirements.valid?
      end

      unless (_verification = @verification).nil?
        return false if _verification.is_a?(OpenApi::Validatable) && !_verification.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account Object to be assigned
    def account=(account : String?)
      if account.nil?
        raise ArgumentError.new("\"account\" is required and cannot be null")
      end
      _account = account.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("account", _account.to_s.size, MAX_LENGTH_FOR_ACCOUNT)
      @account = _account
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] created Object to be assigned
    def created=(created : Int64?)
      if created.nil?
        raise ArgumentError.new("\"created\" is required and cannot be null")
      end
      _created = created.not_nil!
      @created = _created
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(id : String?)
      if id.nil?
        raise ArgumentError.new("\"id\" is required and cannot be null")
      end
      _id = id.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
      @id = _id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object : String?)
      if object.nil?
        raise ArgumentError.new("\"object\" is required and cannot be null")
      end
      _object = object.not_nil!
      OpenApi::EnumValidator.validate("object", _object, VALID_VALUES_FOR_OBJECT)
      @object = _object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address Object to be assigned
    def address=(address : Stripe::Address?)
      if address.nil?
        return @address = nil
      end
      _address = address.not_nil!
      _address.validate if _address.is_a?(OpenApi::Validatable)
      @address = _address
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address_kana Object to be assigned
    def address_kana=(address_kana : Stripe::PersonAddressKana?)
      if address_kana.nil?
        return @address_kana = nil
      end
      _address_kana = address_kana.not_nil!
      _address_kana.validate if _address_kana.is_a?(OpenApi::Validatable)
      @address_kana = _address_kana
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address_kanji Object to be assigned
    def address_kanji=(address_kanji : Stripe::PersonAddressKana?)
      if address_kanji.nil?
        return @address_kanji = nil
      end
      _address_kanji = address_kanji.not_nil!
      _address_kanji.validate if _address_kanji.is_a?(OpenApi::Validatable)
      @address_kanji = _address_kanji
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] dob Object to be assigned
    def dob=(dob : Stripe::LegalEntityDob?)
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
      OpenApi::PrimitiveValidator.validate_max_length("email", _email.to_s.size, MAX_LENGTH_FOR_EMAIL)
      @email = _email
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] first_name Object to be assigned
    def first_name=(first_name : String?)
      if first_name.nil?
        return @first_name = nil
      end
      _first_name = first_name.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("first_name", _first_name.to_s.size, MAX_LENGTH_FOR_FIRST_NAME)
      @first_name = _first_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] first_name_kana Object to be assigned
    def first_name_kana=(first_name_kana : String?)
      if first_name_kana.nil?
        return @first_name_kana = nil
      end
      _first_name_kana = first_name_kana.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("first_name_kana", _first_name_kana.to_s.size, MAX_LENGTH_FOR_FIRST_NAME_KANA)
      @first_name_kana = _first_name_kana
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] first_name_kanji Object to be assigned
    def first_name_kanji=(first_name_kanji : String?)
      if first_name_kanji.nil?
        return @first_name_kanji = nil
      end
      _first_name_kanji = first_name_kanji.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("first_name_kanji", _first_name_kanji.to_s.size, MAX_LENGTH_FOR_FIRST_NAME_KANJI)
      @first_name_kanji = _first_name_kanji
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] full_name_aliases Object to be assigned
    def full_name_aliases=(full_name_aliases : Array(String)?)
      if full_name_aliases.nil?
        return @full_name_aliases = nil
      end
      _full_name_aliases = full_name_aliases.not_nil!
      @full_name_aliases = _full_name_aliases
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] future_requirements Object to be assigned
    def future_requirements=(future_requirements : Stripe::PersonFutureRequirements1?)
      if future_requirements.nil?
        return @future_requirements = nil
      end
      _future_requirements = future_requirements.not_nil!
      _future_requirements.validate if _future_requirements.is_a?(OpenApi::Validatable)
      @future_requirements = _future_requirements
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
    # @param [Object] id_number_provided Object to be assigned
    def id_number_provided=(id_number_provided : Bool?)
      if id_number_provided.nil?
        return @id_number_provided = nil
      end
      _id_number_provided = id_number_provided.not_nil!
      @id_number_provided = _id_number_provided
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id_number_secondary_provided Object to be assigned
    def id_number_secondary_provided=(id_number_secondary_provided : Bool?)
      if id_number_secondary_provided.nil?
        return @id_number_secondary_provided = nil
      end
      _id_number_secondary_provided = id_number_secondary_provided.not_nil!
      @id_number_secondary_provided = _id_number_secondary_provided
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last_name Object to be assigned
    def last_name=(last_name : String?)
      if last_name.nil?
        return @last_name = nil
      end
      _last_name = last_name.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("last_name", _last_name.to_s.size, MAX_LENGTH_FOR_LAST_NAME)
      @last_name = _last_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last_name_kana Object to be assigned
    def last_name_kana=(last_name_kana : String?)
      if last_name_kana.nil?
        return @last_name_kana = nil
      end
      _last_name_kana = last_name_kana.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("last_name_kana", _last_name_kana.to_s.size, MAX_LENGTH_FOR_LAST_NAME_KANA)
      @last_name_kana = _last_name_kana
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last_name_kanji Object to be assigned
    def last_name_kanji=(last_name_kanji : String?)
      if last_name_kanji.nil?
        return @last_name_kanji = nil
      end
      _last_name_kanji = last_name_kanji.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("last_name_kanji", _last_name_kanji.to_s.size, MAX_LENGTH_FOR_LAST_NAME_KANJI)
      @last_name_kanji = _last_name_kanji
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] maiden_name Object to be assigned
    def maiden_name=(maiden_name : String?)
      if maiden_name.nil?
        return @maiden_name = nil
      end
      _maiden_name = maiden_name.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("maiden_name", _maiden_name.to_s.size, MAX_LENGTH_FOR_MAIDEN_NAME)
      @maiden_name = _maiden_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Hash(String, String)?)
      if metadata.nil?
        return @metadata = nil
      end
      _metadata = metadata.not_nil!
      @metadata = _metadata
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] nationality Object to be assigned
    def nationality=(nationality : String?)
      if nationality.nil?
        return @nationality = nil
      end
      _nationality = nationality.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("nationality", _nationality.to_s.size, MAX_LENGTH_FOR_NATIONALITY)
      @nationality = _nationality
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] phone Object to be assigned
    def phone=(phone : String?)
      if phone.nil?
        return @phone = nil
      end
      _phone = phone.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("phone", _phone.to_s.size, MAX_LENGTH_FOR_PHONE)
      @phone = _phone
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] political_exposure Object to be assigned
    def political_exposure=(political_exposure : String?)
      if political_exposure.nil?
        return @political_exposure = nil
      end
      _political_exposure = political_exposure.not_nil!
      OpenApi::EnumValidator.validate("political_exposure", _political_exposure, VALID_VALUES_FOR_POLITICAL_EXPOSURE)
      @political_exposure = _political_exposure
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] registered_address Object to be assigned
    def registered_address=(registered_address : Stripe::Address?)
      if registered_address.nil?
        return @registered_address = nil
      end
      _registered_address = registered_address.not_nil!
      _registered_address.validate if _registered_address.is_a?(OpenApi::Validatable)
      @registered_address = _registered_address
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] relationship Object to be assigned
    def relationship=(relationship : Stripe::PersonRelationship?)
      if relationship.nil?
        return @relationship = nil
      end
      _relationship = relationship.not_nil!
      _relationship.validate if _relationship.is_a?(OpenApi::Validatable)
      @relationship = _relationship
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] requirements Object to be assigned
    def requirements=(requirements : Stripe::PersonRequirements1?)
      if requirements.nil?
        return @requirements = nil
      end
      _requirements = requirements.not_nil!
      _requirements.validate if _requirements.is_a?(OpenApi::Validatable)
      @requirements = _requirements
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ssn_last_4_provided Object to be assigned
    def ssn_last_4_provided=(ssn_last_4_provided : Bool?)
      if ssn_last_4_provided.nil?
        return @ssn_last_4_provided = nil
      end
      _ssn_last_4_provided = ssn_last_4_provided.not_nil!
      @ssn_last_4_provided = _ssn_last_4_provided
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] verification Object to be assigned
    def verification=(verification : Stripe::LegalEntityPersonVerification?)
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
    def_equals_and_hash(@account, @created, @id, @object, @address, @address_kana, @address_kana_present, @address_kanji, @address_kanji_present, @dob, @email, @email_present, @first_name, @first_name_present, @first_name_kana, @first_name_kana_present, @first_name_kanji, @first_name_kanji_present, @full_name_aliases, @future_requirements, @future_requirements_present, @gender, @gender_present, @id_number_provided, @id_number_secondary_provided, @last_name, @last_name_present, @last_name_kana, @last_name_kana_present, @last_name_kanji, @last_name_kanji_present, @maiden_name, @maiden_name_present, @metadata, @nationality, @nationality_present, @phone, @phone_present, @political_exposure, @registered_address, @relationship, @requirements, @requirements_present, @ssn_last_4_provided, @verification)
  end
end
