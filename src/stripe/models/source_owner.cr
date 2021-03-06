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
  #
  @[JSON::Serializable::Options(emit_nulls: true)]
  class SourceOwner
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "address", type: SourceOwnerAddress?, presence: true, ignore_serialize: address.nil? && !address_present?)]
    property address : SourceOwnerAddress?

    @[JSON::Field(ignore: true)]
    property? address_present : Bool = false

    # Owner's email address.
    @[JSON::Field(key: "email", type: String?, presence: true, ignore_serialize: email.nil? && !email_present?)]
    getter email : String?

    @[JSON::Field(ignore: true)]
    property? email_present : Bool = false

    # Owner's full name.
    @[JSON::Field(key: "name", type: String?, presence: true, ignore_serialize: name.nil? && !name_present?)]
    getter name : String?

    @[JSON::Field(ignore: true)]
    property? name_present : Bool = false

    # Owner's phone number (including extension).
    @[JSON::Field(key: "phone", type: String?, presence: true, ignore_serialize: phone.nil? && !phone_present?)]
    getter phone : String?

    @[JSON::Field(ignore: true)]
    property? phone_present : Bool = false

    @[JSON::Field(key: "verified_address", type: SourceOwnerVerifiedAddress?, presence: true, ignore_serialize: verified_address.nil? && !verified_address_present?)]
    property verified_address : SourceOwnerVerifiedAddress?

    @[JSON::Field(ignore: true)]
    property? verified_address_present : Bool = false

    # Verified owner's email address. Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
    @[JSON::Field(key: "verified_email", type: String?, presence: true, ignore_serialize: verified_email.nil? && !verified_email_present?)]
    getter verified_email : String?

    @[JSON::Field(ignore: true)]
    property? verified_email_present : Bool = false

    # Verified owner's full name. Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
    @[JSON::Field(key: "verified_name", type: String?, presence: true, ignore_serialize: verified_name.nil? && !verified_name_present?)]
    getter verified_name : String?

    @[JSON::Field(ignore: true)]
    property? verified_name_present : Bool = false

    # Verified owner's phone number (including extension). Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
    @[JSON::Field(key: "verified_phone", type: String?, presence: true, ignore_serialize: verified_phone.nil? && !verified_phone_present?)]
    getter verified_phone : String?

    @[JSON::Field(ignore: true)]
    property? verified_phone_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @address : SourceOwnerAddress? = nil,
      @email : String? = nil,
      @name : String? = nil,
      @phone : String? = nil,
      @verified_address : SourceOwnerVerifiedAddress? = nil,
      @verified_email : String? = nil,
      @verified_name : String? = nil,
      @verified_phone : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@email.nil? && @email.to_s.size > 5000
        invalid_properties.push("invalid value for \"email\", the character length must be smaller than or equal to 5000.")
      end

      if !@name.nil? && @name.to_s.size > 5000
        invalid_properties.push("invalid value for \"name\", the character length must be smaller than or equal to 5000.")
      end

      if !@phone.nil? && @phone.to_s.size > 5000
        invalid_properties.push("invalid value for \"phone\", the character length must be smaller than or equal to 5000.")
      end

      if !@verified_email.nil? && @verified_email.to_s.size > 5000
        invalid_properties.push("invalid value for \"verified_email\", the character length must be smaller than or equal to 5000.")
      end

      if !@verified_name.nil? && @verified_name.to_s.size > 5000
        invalid_properties.push("invalid value for \"verified_name\", the character length must be smaller than or equal to 5000.")
      end

      if !@verified_phone.nil? && @verified_phone.to_s.size > 5000
        invalid_properties.push("invalid value for \"verified_phone\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@email.nil? && @email.to_s.size > 5000
      return false if !@name.nil? && @name.to_s.size > 5000
      return false if !@phone.nil? && @phone.to_s.size > 5000
      return false if !@verified_email.nil? && @verified_email.to_s.size > 5000
      return false if !@verified_name.nil? && @verified_name.to_s.size > 5000
      return false if !@verified_phone.nil? && @verified_phone.to_s.size > 5000

      true
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
    # @param [Object] name Value to be assigned
    def name=(name : String?)
      if !name.nil? && name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"name\", the character length must be smaller than or equal to 5000.")
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] phone Value to be assigned
    def phone=(phone : String?)
      if !phone.nil? && phone.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"phone\", the character length must be smaller than or equal to 5000.")
      end

      @phone = phone
    end

    # Custom attribute writer method with validation
    # @param [Object] verified_email Value to be assigned
    def verified_email=(verified_email : String?)
      if !verified_email.nil? && verified_email.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"verified_email\", the character length must be smaller than or equal to 5000.")
      end

      @verified_email = verified_email
    end

    # Custom attribute writer method with validation
    # @param [Object] verified_name Value to be assigned
    def verified_name=(verified_name : String?)
      if !verified_name.nil? && verified_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"verified_name\", the character length must be smaller than or equal to 5000.")
      end

      @verified_name = verified_name
    end

    # Custom attribute writer method with validation
    # @param [Object] verified_phone Value to be assigned
    def verified_phone=(verified_phone : String?)
      if !verified_phone.nil? && verified_phone.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"verified_phone\", the character length must be smaller than or equal to 5000.")
      end

      @verified_phone = verified_phone
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
    def_equals_and_hash(@address, @address_present, @email, @email_present, @name, @name_present, @phone, @phone_present, @verified_address, @verified_address_present, @verified_email, @verified_email_present, @verified_name, @verified_name_present, @verified_phone, @verified_phone_present)
  end
end
