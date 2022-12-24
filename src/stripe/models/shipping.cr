#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
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
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "address", type: Stripe::Address?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address : Stripe::Address? = nil

    # The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
    @[JSON::Field(key: "carrier", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: carrier.nil? && !carrier_present?)]
    getter carrier : String? = nil
    MAX_LENGTH_FOR_CARRIER = 5000

    @[JSON::Field(ignore: true)]
    property? carrier_present : Bool = false

    # Recipient name.
    @[JSON::Field(key: "name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter name : String? = nil
    MAX_LENGTH_FOR_NAME = 5000

    # Recipient phone (including extension).
    @[JSON::Field(key: "phone", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: phone.nil? && !phone_present?)]
    getter phone : String? = nil
    MAX_LENGTH_FOR_PHONE = 5000

    @[JSON::Field(ignore: true)]
    property? phone_present : Bool = false

    # The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
    @[JSON::Field(key: "tracking_number", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: tracking_number.nil? && !tracking_number_present?)]
    getter tracking_number : String? = nil
    MAX_LENGTH_FOR_TRACKING_NUMBER = 5000

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
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_address = @address).nil?
        invalid_properties.concat(_address.list_invalid_properties_for("address")) if _address.is_a?(OpenApi::Validatable)
      end
      unless (_carrier = @carrier).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("carrier", _carrier.to_s.size, MAX_LENGTH_FOR_CARRIER)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_name = @name).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("name", _name.to_s.size, MAX_LENGTH_FOR_NAME)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_phone = @phone).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("phone", _phone.to_s.size, MAX_LENGTH_FOR_PHONE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_tracking_number = @tracking_number).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("tracking_number", _tracking_number.to_s.size, MAX_LENGTH_FOR_TRACKING_NUMBER)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_address = @address).nil?
        return false if _address.is_a?(OpenApi::Validatable) && !_address.valid?
      end

      unless (_carrier = @carrier).nil?
        return false if _carrier.to_s.size > MAX_LENGTH_FOR_CARRIER
      end

      unless (_name = @name).nil?
        return false if _name.to_s.size > MAX_LENGTH_FOR_NAME
      end

      unless (_phone = @phone).nil?
        return false if _phone.to_s.size > MAX_LENGTH_FOR_PHONE
      end

      unless (_tracking_number = @tracking_number).nil?
        return false if _tracking_number.to_s.size > MAX_LENGTH_FOR_TRACKING_NUMBER
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address Object to be assigned
    def address=(new_value : Stripe::Address?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @address = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] carrier Object to be assigned
    def carrier=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("carrier", new_value.to_s.size, MAX_LENGTH_FOR_CARRIER)
      end

      @carrier = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name Object to be assigned
    def name=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("name", new_value.to_s.size, MAX_LENGTH_FOR_NAME)
      end

      @name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] phone Object to be assigned
    def phone=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("phone", new_value.to_s.size, MAX_LENGTH_FOR_PHONE)
      end

      @phone = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tracking_number Object to be assigned
    def tracking_number=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("tracking_number", new_value.to_s.size, MAX_LENGTH_FOR_TRACKING_NUMBER)
      end

      @tracking_number = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@address, @carrier, @carrier_present, @name, @phone, @phone_present, @tracking_number, @tracking_number_present)
  end
end
