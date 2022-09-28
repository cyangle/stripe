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
  #
  class PaymentMethodDetailsAcssDebit
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    # Name of the bank associated with the bank account.
    @[JSON::Field(key: "bank_name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: bank_name.nil? && !bank_name_present?)]
    getter bank_name : String? = nil

    @[JSON::Field(ignore: true)]
    property? bank_name_present : Bool = false

    # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
    @[JSON::Field(key: "fingerprint", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: fingerprint.nil? && !fingerprint_present?)]
    getter fingerprint : String? = nil

    @[JSON::Field(ignore: true)]
    property? fingerprint_present : Bool = false

    # Institution number of the bank account
    @[JSON::Field(key: "institution_number", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: institution_number.nil? && !institution_number_present?)]
    getter institution_number : String? = nil

    @[JSON::Field(ignore: true)]
    property? institution_number_present : Bool = false

    # Last four digits of the bank account number.
    @[JSON::Field(key: "last4", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: last4.nil? && !last4_present?)]
    getter last4 : String? = nil

    @[JSON::Field(ignore: true)]
    property? last4_present : Bool = false

    # ID of the mandate used to make this payment.
    @[JSON::Field(key: "mandate", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter mandate : String? = nil

    # Transit number of the bank account.
    @[JSON::Field(key: "transit_number", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: transit_number.nil? && !transit_number_present?)]
    getter transit_number : String? = nil

    @[JSON::Field(ignore: true)]
    property? transit_number_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @bank_name : String? = nil,
      @fingerprint : String? = nil,
      @institution_number : String? = nil,
      @last4 : String? = nil,
      @mandate : String? = nil,
      @transit_number : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      if _bank_name = @bank_name
        if _bank_name.to_s.size > 5000
          invalid_properties.push("invalid value for \"bank_name\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _fingerprint = @fingerprint
        if _fingerprint.to_s.size > 5000
          invalid_properties.push("invalid value for \"fingerprint\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _institution_number = @institution_number
        if _institution_number.to_s.size > 5000
          invalid_properties.push("invalid value for \"institution_number\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _last4 = @last4
        if _last4.to_s.size > 5000
          invalid_properties.push("invalid value for \"last4\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _mandate = @mandate
        if _mandate.to_s.size > 5000
          invalid_properties.push("invalid value for \"mandate\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _transit_number = @transit_number
        if _transit_number.to_s.size > 5000
          invalid_properties.push("invalid value for \"transit_number\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _bank_name = @bank_name
        return false if _bank_name.to_s.size > 5000
      end
      if _fingerprint = @fingerprint
        return false if _fingerprint.to_s.size > 5000
      end
      if _institution_number = @institution_number
        return false if _institution_number.to_s.size > 5000
      end
      if _last4 = @last4
        return false if _last4.to_s.size > 5000
      end
      if _mandate = @mandate
        return false if _mandate.to_s.size > 5000
      end
      if _transit_number = @transit_number
        return false if _transit_number.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bank_name Object to be assigned
    def bank_name=(bank_name : String?)
      if bank_name.nil?
        return @bank_name = nil
      end
      _bank_name = bank_name.not_nil!
      if _bank_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"bank_name\", the character length must be smaller than or equal to 5000.")
      end

      @bank_name = _bank_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fingerprint Object to be assigned
    def fingerprint=(fingerprint : String?)
      if fingerprint.nil?
        return @fingerprint = nil
      end
      _fingerprint = fingerprint.not_nil!
      if _fingerprint.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"fingerprint\", the character length must be smaller than or equal to 5000.")
      end

      @fingerprint = _fingerprint
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] institution_number Object to be assigned
    def institution_number=(institution_number : String?)
      if institution_number.nil?
        return @institution_number = nil
      end
      _institution_number = institution_number.not_nil!
      if _institution_number.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"institution_number\", the character length must be smaller than or equal to 5000.")
      end

      @institution_number = _institution_number
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last4 Object to be assigned
    def last4=(last4 : String?)
      if last4.nil?
        return @last4 = nil
      end
      _last4 = last4.not_nil!
      if _last4.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"last4\", the character length must be smaller than or equal to 5000.")
      end

      @last4 = _last4
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mandate Object to be assigned
    def mandate=(mandate : String?)
      if mandate.nil?
        return @mandate = nil
      end
      _mandate = mandate.not_nil!
      if _mandate.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"mandate\", the character length must be smaller than or equal to 5000.")
      end

      @mandate = _mandate
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transit_number Object to be assigned
    def transit_number=(transit_number : String?)
      if transit_number.nil?
        return @transit_number = nil
      end
      _transit_number = transit_number.not_nil!
      if _transit_number.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"transit_number\", the character length must be smaller than or equal to 5000.")
      end

      @transit_number = _transit_number
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@bank_name, @bank_name_present, @fingerprint, @fingerprint_present, @institution_number, @institution_number_present, @last4, @last4_present, @mandate, @transit_number, @transit_number_present)
  end
end
