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
  # Information about the person represented by the account. This field is null unless `business_type` is set to `individual`.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class IndividualSpecs
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "address", type: AddressSpecs?, presence: true, ignore_serialize: address.nil? && !address_present?)]
    property address : AddressSpecs?

    @[JSON::Field(ignore: true)]
    property? address_present : Bool = false

    @[JSON::Field(key: "address_kana", type: JapanAddressKanaSpecs?, presence: true, ignore_serialize: address_kana.nil? && !address_kana_present?)]
    property address_kana : JapanAddressKanaSpecs?

    @[JSON::Field(ignore: true)]
    property? address_kana_present : Bool = false

    @[JSON::Field(key: "address_kanji", type: JapanAddressKanjiSpecs?, presence: true, ignore_serialize: address_kanji.nil? && !address_kanji_present?)]
    property address_kanji : JapanAddressKanjiSpecs?

    @[JSON::Field(ignore: true)]
    property? address_kanji_present : Bool = false

    @[JSON::Field(key: "dob", type: IndividualSpecsDob?, presence: true, ignore_serialize: dob.nil? && !dob_present?)]
    property dob : IndividualSpecsDob?

    @[JSON::Field(ignore: true)]
    property? dob_present : Bool = false

    @[JSON::Field(key: "email", type: String?, presence: true, ignore_serialize: email.nil? && !email_present?)]
    property email : String?

    @[JSON::Field(ignore: true)]
    property? email_present : Bool = false

    @[JSON::Field(key: "first_name", type: String?, presence: true, ignore_serialize: first_name.nil? && !first_name_present?)]
    getter first_name : String?

    @[JSON::Field(ignore: true)]
    property? first_name_present : Bool = false

    @[JSON::Field(key: "first_name_kana", type: String?, presence: true, ignore_serialize: first_name_kana.nil? && !first_name_kana_present?)]
    getter first_name_kana : String?

    @[JSON::Field(ignore: true)]
    property? first_name_kana_present : Bool = false

    @[JSON::Field(key: "first_name_kanji", type: String?, presence: true, ignore_serialize: first_name_kanji.nil? && !first_name_kanji_present?)]
    getter first_name_kanji : String?

    @[JSON::Field(ignore: true)]
    property? first_name_kanji_present : Bool = false

    @[JSON::Field(key: "full_name_aliases", type: IndividualSpecsFullNameAliases?, presence: true, ignore_serialize: full_name_aliases.nil? && !full_name_aliases_present?)]
    property full_name_aliases : IndividualSpecsFullNameAliases?

    @[JSON::Field(ignore: true)]
    property? full_name_aliases_present : Bool = false

    @[JSON::Field(key: "gender", type: String?, presence: true, ignore_serialize: gender.nil? && !gender_present?)]
    property gender : String?

    @[JSON::Field(ignore: true)]
    property? gender_present : Bool = false

    @[JSON::Field(key: "id_number", type: String?, presence: true, ignore_serialize: id_number.nil? && !id_number_present?)]
    getter id_number : String?

    @[JSON::Field(ignore: true)]
    property? id_number_present : Bool = false

    @[JSON::Field(key: "id_number_secondary", type: String?, presence: true, ignore_serialize: id_number_secondary.nil? && !id_number_secondary_present?)]
    getter id_number_secondary : String?

    @[JSON::Field(ignore: true)]
    property? id_number_secondary_present : Bool = false

    @[JSON::Field(key: "last_name", type: String?, presence: true, ignore_serialize: last_name.nil? && !last_name_present?)]
    getter last_name : String?

    @[JSON::Field(ignore: true)]
    property? last_name_present : Bool = false

    @[JSON::Field(key: "last_name_kana", type: String?, presence: true, ignore_serialize: last_name_kana.nil? && !last_name_kana_present?)]
    getter last_name_kana : String?

    @[JSON::Field(ignore: true)]
    property? last_name_kana_present : Bool = false

    @[JSON::Field(key: "last_name_kanji", type: String?, presence: true, ignore_serialize: last_name_kanji.nil? && !last_name_kanji_present?)]
    getter last_name_kanji : String?

    @[JSON::Field(ignore: true)]
    property? last_name_kanji_present : Bool = false

    @[JSON::Field(key: "maiden_name", type: String?, presence: true, ignore_serialize: maiden_name.nil? && !maiden_name_present?)]
    getter maiden_name : String?

    @[JSON::Field(ignore: true)]
    property? maiden_name_present : Bool = false

    @[JSON::Field(key: "metadata", type: IndividualSpecsMetadata?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : IndividualSpecsMetadata?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    @[JSON::Field(key: "phone", type: String?, presence: true, ignore_serialize: phone.nil? && !phone_present?)]
    property phone : String?

    @[JSON::Field(ignore: true)]
    property? phone_present : Bool = false

    @[JSON::Field(key: "political_exposure", type: String?, presence: true, ignore_serialize: political_exposure.nil? && !political_exposure_present?)]
    getter political_exposure : String?

    @[JSON::Field(ignore: true)]
    property? political_exposure_present : Bool = false

    ENUM_VALIDATOR_FOR_POLITICAL_EXPOSURE = EnumValidator.new("political_exposure", "String", ["existing", "none"])

    @[JSON::Field(key: "registered_address", type: AddressSpecs?, presence: true, ignore_serialize: registered_address.nil? && !registered_address_present?)]
    property registered_address : AddressSpecs?

    @[JSON::Field(ignore: true)]
    property? registered_address_present : Bool = false

    @[JSON::Field(key: "ssn_last_4", type: String?, presence: true, ignore_serialize: ssn_last_4.nil? && !ssn_last_4_present?)]
    getter ssn_last_4 : String?

    @[JSON::Field(ignore: true)]
    property? ssn_last_4_present : Bool = false

    @[JSON::Field(key: "verification", type: PersonVerificationSpecs?, presence: true, ignore_serialize: verification.nil? && !verification_present?)]
    property verification : PersonVerificationSpecs?

    @[JSON::Field(ignore: true)]
    property? verification_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @address : AddressSpecs? = nil,
      @address_kana : JapanAddressKanaSpecs? = nil,
      @address_kanji : JapanAddressKanjiSpecs? = nil,
      @dob : IndividualSpecsDob? = nil,
      @email : String? = nil,
      @first_name : String? = nil,
      @first_name_kana : String? = nil,
      @first_name_kanji : String? = nil,
      @full_name_aliases : IndividualSpecsFullNameAliases? = nil,
      @gender : String? = nil,
      @id_number : String? = nil,
      @id_number_secondary : String? = nil,
      @last_name : String? = nil,
      @last_name_kana : String? = nil,
      @last_name_kanji : String? = nil,
      @maiden_name : String? = nil,
      @metadata : IndividualSpecsMetadata? = nil,
      @phone : String? = nil,
      @political_exposure : String? = nil,
      @registered_address : AddressSpecs? = nil,
      @ssn_last_4 : String? = nil,
      @verification : PersonVerificationSpecs? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@first_name.nil? && @first_name.to_s.size > 100
        invalid_properties.push("invalid value for \"first_name\", the character length must be smaller than or equal to 100.")
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

      if !@last_name.nil? && @last_name.to_s.size > 100
        invalid_properties.push("invalid value for \"last_name\", the character length must be smaller than or equal to 100.")
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

      invalid_properties.push(ENUM_VALIDATOR_FOR_POLITICAL_EXPOSURE.error_message) unless ENUM_VALIDATOR_FOR_POLITICAL_EXPOSURE.valid?(@political_exposure)

      if !@ssn_last_4.nil? && @ssn_last_4.to_s.size > 5000
        invalid_properties.push("invalid value for \"ssn_last_4\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@first_name.nil? && @first_name.to_s.size > 100
      return false if !@first_name_kana.nil? && @first_name_kana.to_s.size > 5000
      return false if !@first_name_kanji.nil? && @first_name_kanji.to_s.size > 5000
      return false if !@id_number.nil? && @id_number.to_s.size > 5000
      return false if !@id_number_secondary.nil? && @id_number_secondary.to_s.size > 5000
      return false if !@last_name.nil? && @last_name.to_s.size > 100
      return false if !@last_name_kana.nil? && @last_name_kana.to_s.size > 5000
      return false if !@last_name_kanji.nil? && @last_name_kanji.to_s.size > 5000
      return false if !@maiden_name.nil? && @maiden_name.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_POLITICAL_EXPOSURE.valid?(@political_exposure)
      return false if !@ssn_last_4.nil? && @ssn_last_4.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] first_name Value to be assigned
    def first_name=(first_name : String?)
      if !first_name.nil? && first_name.to_s.size > 100
        raise ArgumentError.new("invalid value for \"first_name\", the character length must be smaller than or equal to 100.")
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
      if !last_name.nil? && last_name.to_s.size > 100
        raise ArgumentError.new("invalid value for \"last_name\", the character length must be smaller than or equal to 100.")
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] political_exposure Object to be assigned
    def political_exposure=(political_exposure : String?)
      ENUM_VALIDATOR_FOR_POLITICAL_EXPOSURE.valid!(political_exposure)
      @political_exposure = political_exposure
    end

    # Custom attribute writer method with validation
    # @param [Object] ssn_last_4 Value to be assigned
    def ssn_last_4=(ssn_last_4 : String?)
      if !ssn_last_4.nil? && ssn_last_4.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"ssn_last_4\", the character length must be smaller than or equal to 5000.")
      end

      @ssn_last_4 = ssn_last_4
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
    def_equals_and_hash(@address, @address_present, @address_kana, @address_kana_present, @address_kanji, @address_kanji_present, @dob, @dob_present, @email, @email_present, @first_name, @first_name_present, @first_name_kana, @first_name_kana_present, @first_name_kanji, @first_name_kanji_present, @full_name_aliases, @full_name_aliases_present, @gender, @gender_present, @id_number, @id_number_present, @id_number_secondary, @id_number_secondary_present, @last_name, @last_name_present, @last_name_kana, @last_name_kana_present, @last_name_kanji, @last_name_kanji_present, @maiden_name, @maiden_name_present, @metadata, @metadata_present, @phone, @phone_present, @political_exposure, @political_exposure_present, @registered_address, @registered_address_present, @ssn_last_4, @ssn_last_4_present, @verification, @verification_present)
  end
end
