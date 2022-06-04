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
  # The cardholder to whom this authorization belongs.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class IssuingAuthorizationCardholder
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    @[JSON::Field(key: "billing", type: IssuingCardholderAddress?)]
    property billing : IssuingCardholderAddress?

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?)]
    property created : Int64?

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?)]
    getter id : String?

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?)]
    property livemode : Bool?

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?)]
    property metadata : Hash(String, String)?

    # The cardholder's name. This will be printed on cards issued to them.
    @[JSON::Field(key: "name", type: String?)]
    getter name : String?

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?)]
    getter object : String?

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["issuing.cardholder"])

    @[JSON::Field(key: "requirements", type: IssuingCardholderRequirements?)]
    property requirements : IssuingCardholderRequirements?

    # Specifies whether to permit authorizations on this cardholder's cards.
    @[JSON::Field(key: "status", type: String?)]
    getter status : String?

    ENUM_VALIDATOR_FOR_STATUS = EnumValidator.new("status", "String", ["active", "blocked", "inactive"])

    # One of `individual` or `company`.
    @[JSON::Field(key: "type", type: String?)]
    getter _type : String?

    ENUM_VALIDATOR_FOR__TYPE = EnumValidator.new("_type", "String", ["company", "individual"])

    # Optional properties

    @[JSON::Field(key: "company", type: IssuingCardholderCompany1?, presence: true, ignore_serialize: company.nil? && !company_present?)]
    property company : IssuingCardholderCompany1?

    @[JSON::Field(ignore: true)]
    property? company_present : Bool = false

    # The cardholder's email address.
    @[JSON::Field(key: "email", type: String?, presence: true, ignore_serialize: email.nil? && !email_present?)]
    getter email : String?

    @[JSON::Field(ignore: true)]
    property? email_present : Bool = false

    @[JSON::Field(key: "individual", type: IssuingCardholderIndividual1?, presence: true, ignore_serialize: individual.nil? && !individual_present?)]
    property individual : IssuingCardholderIndividual1?

    @[JSON::Field(ignore: true)]
    property? individual_present : Bool = false

    # The cardholder's phone number. This is required for all cardholders who will be creating EU cards. See the [3D Secure documentation](https://stripe.com/docs/issuing/3d-secure#when-is-3d-secure-applied) for more details.
    @[JSON::Field(key: "phone_number", type: String?, presence: true, ignore_serialize: phone_number.nil? && !phone_number_present?)]
    getter phone_number : String?

    @[JSON::Field(ignore: true)]
    property? phone_number_present : Bool = false

    @[JSON::Field(key: "spending_controls", type: IssuingCardholderSpendingControls?, presence: true, ignore_serialize: spending_controls.nil? && !spending_controls_present?)]
    property spending_controls : IssuingCardholderSpendingControls?

    @[JSON::Field(ignore: true)]
    property? spending_controls_present : Bool = false

    # List of class defined in anyOf (OpenAPI v3)
    def self.openapi_any_of
      [
        Stripe::IssuingCardholder,
        String,
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @billing : IssuingCardholderAddress? = nil,
      @created : Int64? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @metadata : Hash(String, String)? = nil,
      @name : String? = nil,
      @object : String? = nil,
      @requirements : IssuingCardholderRequirements? = nil,
      @status : String? = nil,
      @_type : String? = nil,
      # Optional properties
      @company : IssuingCardholderCompany1? = nil,
      @email : String? = nil,
      @individual : IssuingCardholderIndividual1? = nil,
      @phone_number : String? = nil,
      @spending_controls : IssuingCardholderSpendingControls? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @id.to_s.size > 5000
        invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      if @name.to_s.size > 5000
        invalid_properties.push("invalid value for \"name\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)

      invalid_properties.push(ENUM_VALIDATOR_FOR_STATUS.error_message) unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status, false)

      invalid_properties.push(ENUM_VALIDATOR_FOR__TYPE.error_message) unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)

      if !@email.nil? && @email.to_s.size > 5000
        invalid_properties.push("invalid value for \"email\", the character length must be smaller than or equal to 5000.")
      end

      if !@phone_number.nil? && @phone_number.to_s.size > 5000
        invalid_properties.push("invalid value for \"phone_number\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.to_s.size > 5000
      return false if @name.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status, false)
      return false unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)
      return false if !@email.nil? && @email.to_s.size > 5000
      return false if !@phone_number.nil? && @phone_number.to_s.size > 5000

      _any_of_found = false
      json_string : String = self.to_json
      _any_of_found = self.class.openapi_any_of.any? do |_class|
        _any_of = begin
          _class.from_json(json_string)
        rescue
          nil
        end

        !_any_of.nil? && _any_of.not_nil!.valid?
      end
      return false if !_any_of_found

      true
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
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"name\", the character length must be smaller than or equal to 5000.")
      end

      @name = name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      ENUM_VALIDATOR_FOR_OBJECT.valid!(object, false)
      @object = object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      ENUM_VALIDATOR_FOR_STATUS.valid!(status, false)
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type)
      ENUM_VALIDATOR_FOR__TYPE.valid!(_type, false)
      @_type = _type
    end

    # Custom attribute writer method with validation
    # @param [Object] email Value to be assigned
    def email=(email)
      if !email.nil? && email.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"email\", the character length must be smaller than or equal to 5000.")
      end

      @email = email
    end

    # Custom attribute writer method with validation
    # @param [Object] phone_number Value to be assigned
    def phone_number=(phone_number)
      if !phone_number.nil? && phone_number.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"phone_number\", the character length must be smaller than or equal to 5000.")
      end

      @phone_number = phone_number
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
    def_equals_and_hash(@billing, @created, @id, @livemode, @metadata, @name, @object, @requirements, @status, @_type, @company, @email, @individual, @phone_number, @spending_controls)
  end
end