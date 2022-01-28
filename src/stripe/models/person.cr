#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "nason"
require "time"
require "log"

module Stripe
  # This is an object representing a person associated with a Stripe account.  A platform cannot access a Standard or Express account's persons after the account starts onboarding, such as after generating an account link for the account. See the [Standard onboarding](https://stripe.com/docs/connect/standard-accounts) or [Express onboarding documentation](https://stripe.com/docs/connect/express-accounts) for information about platform pre-filling and account onboarding steps.  Related guide: [Handling Identity Verification with the API](https://stripe.com/docs/connect/identity-verification-api#person-information).
  class Person
    include NASON::Serializable

    # Required properties
    # The account the person is associated with.
    @[NASON::Field(key: "account", type: String)]
    property account : String

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[NASON::Field(key: "created", type: Int64)]
    property created : Int64

    # Unique identifier for the object.
    @[NASON::Field(key: "id", type: String)]
    property id : String

    # String representing the object's type. Objects of the same type share the same value.
    @[NASON::Field(key: "object", type: String)]
    property object : String

    # Optional properties
    @[NASON::Field(key: "address", type: Address?, nillable: true)]
    property address : Address?

    @[NASON::Field(key: "address_kana", type: LegalEntityJapanAddress? | Null, nillable: true)]
    property address_kana : LegalEntityJapanAddress? | Null

    @[NASON::Field(key: "address_kanji", type: LegalEntityJapanAddress? | Null, nillable: true)]
    property address_kanji : LegalEntityJapanAddress? | Null

    @[NASON::Field(key: "dob", type: LegalEntityDob?, nillable: true)]
    property dob : LegalEntityDob?

    # The person's email address.
    @[NASON::Field(key: "email", type: String? | Null, nillable: true)]
    property email : String? | Null

    # The person's first name.
    @[NASON::Field(key: "first_name", type: String? | Null, nillable: true)]
    property first_name : String? | Null

    # The Kana variation of the person's first name (Japan only).
    @[NASON::Field(key: "first_name_kana", type: String? | Null, nillable: true)]
    property first_name_kana : String? | Null

    # The Kanji variation of the person's first name (Japan only).
    @[NASON::Field(key: "first_name_kanji", type: String? | Null, nillable: true)]
    property first_name_kanji : String? | Null

    # A list of alternate names or aliases that the person is known by.
    @[NASON::Field(key: "full_name_aliases", type: Array(String)?, nillable: true)]
    property full_name_aliases : Array(String)?

    @[NASON::Field(key: "future_requirements", type: PersonFutureRequirements? | Null, nillable: true)]
    property future_requirements : PersonFutureRequirements? | Null

    # The person's gender (International regulations require either \"male\" or \"female\").
    @[NASON::Field(key: "gender", type: String? | Null, nillable: true)]
    property gender : String? | Null

    # Whether the person's `id_number` was provided.
    @[NASON::Field(key: "id_number_provided", type: Bool?, nillable: true)]
    property id_number_provided : Bool?

    # The person's last name.
    @[NASON::Field(key: "last_name", type: String? | Null, nillable: true)]
    property last_name : String? | Null

    # The Kana variation of the person's last name (Japan only).
    @[NASON::Field(key: "last_name_kana", type: String? | Null, nillable: true)]
    property last_name_kana : String? | Null

    # The Kanji variation of the person's last name (Japan only).
    @[NASON::Field(key: "last_name_kanji", type: String? | Null, nillable: true)]
    property last_name_kanji : String? | Null

    # The person's maiden name.
    @[NASON::Field(key: "maiden_name", type: String? | Null, nillable: true)]
    property maiden_name : String? | Null

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[NASON::Field(key: "metadata", type: Hash(String, String)?, nillable: true)]
    property metadata : Hash(String, String)?

    # The country where the person is a national.
    @[NASON::Field(key: "nationality", type: String? | Null, nillable: true)]
    property nationality : String? | Null

    # The person's phone number.
    @[NASON::Field(key: "phone", type: String? | Null, nillable: true)]
    property phone : String? | Null

    # Indicates if the person or any of their representatives, family members, or other closely related persons, declares that they hold or have held an important public job or function, in any jurisdiction.
    @[NASON::Field(key: "political_exposure", type: String?, nillable: true)]
    property political_exposure : String?

    @[NASON::Field(key: "relationship", type: PersonRelationship?, nillable: true)]
    property relationship : PersonRelationship?

    @[NASON::Field(key: "requirements", type: PersonRequirements? | Null, nillable: true)]
    property requirements : PersonRequirements? | Null

    # Whether the last four digits of the person's Social Security number have been provided (U.S. only).
    @[NASON::Field(key: "ssn_last_4_provided", type: Bool?, nillable: true)]
    property ssn_last_4_provided : Bool?

    @[NASON::Field(key: "verification", type: LegalEntityPersonVerification?, nillable: true)]
    property verification : LegalEntityPersonVerification?

    class EnumAttributeValidator
      getter datatype : String
      getter allowable_values : Array(String | Int64 | Float64)

      def initialize(datatype, allowable_values)
        @datatype = datatype
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        value.nil? || value.null? || allowable_values.includes?(value)
      end
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @account : String, @created : Int64, @id : String, @object : String, @address : Address? = nil, @address_kana : LegalEntityJapanAddress? | Null = nil, @address_kanji : LegalEntityJapanAddress? | Null = nil, @dob : LegalEntityDob? = nil, @email : String? | Null = nil, @first_name : String? | Null = nil, @first_name_kana : String? | Null = nil, @first_name_kanji : String? | Null = nil, @full_name_aliases : Array(String)? = nil, @future_requirements : PersonFutureRequirements? | Null = nil, @gender : String? | Null = nil, @id_number_provided : Bool? = nil, @last_name : String? | Null = nil, @last_name_kana : String? | Null = nil, @last_name_kanji : String? | Null = nil, @maiden_name : String? | Null = nil, @metadata : Hash(String, String)? = nil, @nationality : String? | Null = nil, @phone : String? | Null = nil, @political_exposure : String? = nil, @relationship : PersonRelationship? = nil, @requirements : PersonRequirements? | Null = nil, @ssn_last_4_provided : Bool? = nil, @verification : LegalEntityPersonVerification? = nil)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      if @account.to_s.size > 5000
        invalid_properties.push("invalid value for \"account\", the character length must be smaller than or equal to 5000.")
      end

      if !@email.nil? && !@email.null? && @email.to_s.size > 5000
        invalid_properties.push("invalid value for \"email\", the character length must be smaller than or equal to 5000.")
      end

      if !@first_name.nil? && !@first_name.null? && @first_name.to_s.size > 5000
        invalid_properties.push("invalid value for \"first_name\", the character length must be smaller than or equal to 5000.")
      end

      if !@first_name_kana.nil? && !@first_name_kana.null? && @first_name_kana.to_s.size > 5000
        invalid_properties.push("invalid value for \"first_name_kana\", the character length must be smaller than or equal to 5000.")
      end

      if !@first_name_kanji.nil? && !@first_name_kanji.null? && @first_name_kanji.to_s.size > 5000
        invalid_properties.push("invalid value for \"first_name_kanji\", the character length must be smaller than or equal to 5000.")
      end

      if @id.to_s.size > 5000
        invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      if !@last_name.nil? && !@last_name.null? && @last_name.to_s.size > 5000
        invalid_properties.push("invalid value for \"last_name\", the character length must be smaller than or equal to 5000.")
      end

      if !@last_name_kana.nil? && !@last_name_kana.null? && @last_name_kana.to_s.size > 5000
        invalid_properties.push("invalid value for \"last_name_kana\", the character length must be smaller than or equal to 5000.")
      end

      if !@last_name_kanji.nil? && !@last_name_kanji.null? && @last_name_kanji.to_s.size > 5000
        invalid_properties.push("invalid value for \"last_name_kanji\", the character length must be smaller than or equal to 5000.")
      end

      if !@maiden_name.nil? && !@maiden_name.null? && @maiden_name.to_s.size > 5000
        invalid_properties.push("invalid value for \"maiden_name\", the character length must be smaller than or equal to 5000.")
      end

      if !@nationality.nil? && !@nationality.null? && @nationality.to_s.size > 5000
        invalid_properties.push("invalid value for \"nationality\", the character length must be smaller than or equal to 5000.")
      end

      if !@phone.nil? && !@phone.null? && @phone.to_s.size > 5000
        invalid_properties.push("invalid value for \"phone\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @account.to_s.size > 5000
      return false if !@email.nil? && !@email.null? && @email.to_s.size > 5000
      return false if !@first_name.nil? && !@first_name.null? && @first_name.to_s.size > 5000
      return false if !@first_name_kana.nil? && !@first_name_kana.null? && @first_name_kana.to_s.size > 5000
      return false if !@first_name_kanji.nil? && !@first_name_kanji.null? && @first_name_kanji.to_s.size > 5000
      return false if @id.to_s.size > 5000
      return false if !@last_name.nil? && !@last_name.null? && @last_name.to_s.size > 5000
      return false if !@last_name_kana.nil? && !@last_name_kana.null? && @last_name_kana.to_s.size > 5000
      return false if !@last_name_kanji.nil? && !@last_name_kanji.null? && @last_name_kanji.to_s.size > 5000
      return false if !@maiden_name.nil? && !@maiden_name.null? && @maiden_name.to_s.size > 5000
      return false if !@nationality.nil? && !@nationality.null? && @nationality.to_s.size > 5000
      object_validator = EnumAttributeValidator.new("String", ["person"])
      return false unless object_validator.valid?(@object)
      return false if !@phone.nil? && !@phone.null? && @phone.to_s.size > 5000
      political_exposure_validator = EnumAttributeValidator.new("String", ["existing", "none"])
      return false unless political_exposure_validator.valid?(@political_exposure)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] account Value to be assigned
    def account=(account)
      if account.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"account\", the character length must be smaller than or equal to 5000.")
      end

      @account = account
    end

    # Custom attribute writer method with validation
    # @param [Object] email Value to be assigned
    def email=(email)
      if !email.nil? && !@email.null? && email.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"email\", the character length must be smaller than or equal to 5000.")
      end

      @email = email
    end

    # Custom attribute writer method with validation
    # @param [Object] first_name Value to be assigned
    def first_name=(first_name)
      if !first_name.nil? && !@first_name.null? && first_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"first_name\", the character length must be smaller than or equal to 5000.")
      end

      @first_name = first_name
    end

    # Custom attribute writer method with validation
    # @param [Object] first_name_kana Value to be assigned
    def first_name_kana=(first_name_kana)
      if !first_name_kana.nil? && !@first_name_kana.null? && first_name_kana.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"first_name_kana\", the character length must be smaller than or equal to 5000.")
      end

      @first_name_kana = first_name_kana
    end

    # Custom attribute writer method with validation
    # @param [Object] first_name_kanji Value to be assigned
    def first_name_kanji=(first_name_kanji)
      if !first_name_kanji.nil? && !@first_name_kanji.null? && first_name_kanji.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"first_name_kanji\", the character length must be smaller than or equal to 5000.")
      end

      @first_name_kanji = first_name_kanji
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      @id = id
    end

    # Custom attribute writer method with validation
    # @param [Object] last_name Value to be assigned
    def last_name=(last_name)
      if !last_name.nil? && !@last_name.null? && last_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"last_name\", the character length must be smaller than or equal to 5000.")
      end

      @last_name = last_name
    end

    # Custom attribute writer method with validation
    # @param [Object] last_name_kana Value to be assigned
    def last_name_kana=(last_name_kana)
      if !last_name_kana.nil? && !@last_name_kana.null? && last_name_kana.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"last_name_kana\", the character length must be smaller than or equal to 5000.")
      end

      @last_name_kana = last_name_kana
    end

    # Custom attribute writer method with validation
    # @param [Object] last_name_kanji Value to be assigned
    def last_name_kanji=(last_name_kanji)
      if !last_name_kanji.nil? && !@last_name_kanji.null? && last_name_kanji.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"last_name_kanji\", the character length must be smaller than or equal to 5000.")
      end

      @last_name_kanji = last_name_kanji
    end

    # Custom attribute writer method with validation
    # @param [Object] maiden_name Value to be assigned
    def maiden_name=(maiden_name)
      if !maiden_name.nil? && !@maiden_name.null? && maiden_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"maiden_name\", the character length must be smaller than or equal to 5000.")
      end

      @maiden_name = maiden_name
    end

    # Custom attribute writer method with validation
    # @param [Object] nationality Value to be assigned
    def nationality=(nationality)
      if !nationality.nil? && !@nationality.null? && nationality.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"nationality\", the character length must be smaller than or equal to 5000.")
      end

      @nationality = nationality
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      validator = EnumAttributeValidator.new("String", ["person"])
      unless validator.valid?(object)
        raise ArgumentError.new("invalid value for \"object\", must be one of #{validator.allowable_values}.")
      end
      @object = object
    end

    # Custom attribute writer method with validation
    # @param [Object] phone Value to be assigned
    def phone=(phone)
      if !phone.nil? && !@phone.null? && phone.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"phone\", the character length must be smaller than or equal to 5000.")
      end

      @phone = phone
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] political_exposure Object to be assigned
    def political_exposure=(political_exposure)
      validator = EnumAttributeValidator.new("String", ["existing", "none"])
      unless validator.valid?(political_exposure)
        raise ArgumentError.new("invalid value for \"political_exposure\", must be one of #{validator.allowable_values}.")
      end
      @political_exposure = political_exposure
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.same?(o)
      self.class == o.class &&
        account == o.account &&
        address == o.address &&
        address_kana == o.address_kana &&
        address_kanji == o.address_kanji &&
        created == o.created &&
        dob == o.dob &&
        email == o.email &&
        first_name == o.first_name &&
        first_name_kana == o.first_name_kana &&
        first_name_kanji == o.first_name_kanji &&
        full_name_aliases == o.full_name_aliases &&
        future_requirements == o.future_requirements &&
        gender == o.gender &&
        id == o.id &&
        id_number_provided == o.id_number_provided &&
        last_name == o.last_name &&
        last_name_kana == o.last_name_kana &&
        last_name_kanji == o.last_name_kanji &&
        maiden_name == o.maiden_name &&
        metadata == o.metadata &&
        nationality == o.nationality &&
        object == o.object &&
        phone == o.phone &&
        political_exposure == o.political_exposure &&
        relationship == o.relationship &&
        requirements == o.requirements &&
        ssn_last_4_provided == o.ssn_last_4_provided &&
        verification == o.verification
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account, address, address_kana, address_kanji, created, dob, email, first_name, first_name_kana, first_name_kanji, full_name_aliases, future_requirements, gender, id, id_number_provided, last_name, last_name_kana, last_name_kanji, maiden_name, metadata, nationality, object, phone, political_exposure, relationship, requirements, ssn_last_4_provided, verification].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if !attributes[self.class.attribute_map[key]]? && self.class.openapi_nullable.includes?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        ({} of String => String).tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = Stripe.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {} of String => String
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.includes?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        ({} of String => String).tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
