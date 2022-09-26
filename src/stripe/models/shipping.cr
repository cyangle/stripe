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
  class Shipping
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "address", type: Stripe::Address?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address : Stripe::Address? = nil

    # The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
    @[JSON::Field(key: "carrier", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: carrier.nil? && !carrier_present?)]
    getter carrier : String? = nil

    @[JSON::Field(ignore: true)]
    property? carrier_present : Bool = false

    # Recipient name.
    @[JSON::Field(key: "name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter name : String? = nil

    # Recipient phone (including extension).
    @[JSON::Field(key: "phone", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: phone.nil? && !phone_present?)]
    getter phone : String? = nil

    @[JSON::Field(ignore: true)]
    property? phone_present : Bool = false

    # The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
    @[JSON::Field(key: "tracking_number", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: tracking_number.nil? && !tracking_number_present?)]
    getter tracking_number : String? = nil

    @[JSON::Field(ignore: true)]
    property? tracking_number_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @address : Stripe::Address? = nil,
      @carrier : String? = nil,
      @name : String? = nil,
      @phone : String? = nil,
      @tracking_number : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      # This is a model address : Stripe::Address?
      if _carrier = @carrier
        if _carrier.to_s.size > 5000
          invalid_properties.push("invalid value for \"carrier\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _name = @name
        if _name.to_s.size > 5000
          invalid_properties.push("invalid value for \"name\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _phone = @phone
        if _phone.to_s.size > 5000
          invalid_properties.push("invalid value for \"phone\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _tracking_number = @tracking_number
        if _tracking_number.to_s.size > 5000
          invalid_properties.push("invalid value for \"tracking_number\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      if _carrier = @carrier
        return false if _carrier.to_s.size > 5000
      end
      if _name = @name
        return false if _name.to_s.size > 5000
      end
      if _phone = @phone
        return false if _phone.to_s.size > 5000
      end
      if _tracking_number = @tracking_number
        return false if _tracking_number.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address Object to be assigned
    def address=(address : Stripe::Address?)
      if address.nil?
        return @address = nil
      end
      @address = address
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] carrier Object to be assigned
    def carrier=(carrier : String?)
      if carrier.nil?
        return @carrier = nil
      end
      _carrier = carrier.not_nil!
      if _carrier.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"carrier\", the character length must be smaller than or equal to 5000.")
      end

      @carrier = carrier
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name Object to be assigned
    def name=(name : String?)
      if name.nil?
        return @name = nil
      end
      _name = name.not_nil!
      if _name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"name\", the character length must be smaller than or equal to 5000.")
      end

      @name = name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] phone Object to be assigned
    def phone=(phone : String?)
      if phone.nil?
        return @phone = nil
      end
      _phone = phone.not_nil!
      if _phone.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"phone\", the character length must be smaller than or equal to 5000.")
      end

      @phone = phone
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tracking_number Object to be assigned
    def tracking_number=(tracking_number : String?)
      if tracking_number.nil?
        return @tracking_number = nil
      end
      _tracking_number = tracking_number.not_nil!
      if _tracking_number.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"tracking_number\", the character length must be smaller than or equal to 5000.")
      end

      @tracking_number = tracking_number
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
    def_equals_and_hash(@address, @carrier, @carrier_present, @name, @phone, @phone_present, @tracking_number, @tracking_number_present)
  end
end
