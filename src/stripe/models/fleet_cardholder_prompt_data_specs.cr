#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

module Stripe
  class FleetCardholderPromptDataSpecs
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Driver ID.
    @[JSON::Field(key: "driver_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter driver_id : String? = nil
    MAX_LENGTH_FOR_DRIVER_ID = 5000

    # Odometer reading.
    @[JSON::Field(key: "odometer", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter odometer : Int64? = nil

    # An alphanumeric ID. This field is used when a vehicle ID, driver ID, or generic ID is entered by the cardholder, but the merchant or card network did not specify the prompt type.
    @[JSON::Field(key: "unspecified_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter unspecified_id : String? = nil
    MAX_LENGTH_FOR_UNSPECIFIED_ID = 5000

    # User ID.
    @[JSON::Field(key: "user_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter user_id : String? = nil
    MAX_LENGTH_FOR_USER_ID = 5000

    # Vehicle number.
    @[JSON::Field(key: "vehicle_number", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter vehicle_number : String? = nil
    MAX_LENGTH_FOR_VEHICLE_NUMBER = 5000

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @driver_id : String? = nil,
      @odometer : Int64? = nil,
      @unspecified_id : String? = nil,
      @user_id : String? = nil,
      @vehicle_number : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_driver_id = @driver_id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("driver_id", _driver_id.to_s.size, MAX_LENGTH_FOR_DRIVER_ID)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_unspecified_id = @unspecified_id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("unspecified_id", _unspecified_id.to_s.size, MAX_LENGTH_FOR_UNSPECIFIED_ID)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_user_id = @user_id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("user_id", _user_id.to_s.size, MAX_LENGTH_FOR_USER_ID)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_vehicle_number = @vehicle_number).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("vehicle_number", _vehicle_number.to_s.size, MAX_LENGTH_FOR_VEHICLE_NUMBER)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_driver_id = @driver_id).nil?
        return false if _driver_id.to_s.size > MAX_LENGTH_FOR_DRIVER_ID
      end

      unless (_unspecified_id = @unspecified_id).nil?
        return false if _unspecified_id.to_s.size > MAX_LENGTH_FOR_UNSPECIFIED_ID
      end

      unless (_user_id = @user_id).nil?
        return false if _user_id.to_s.size > MAX_LENGTH_FOR_USER_ID
      end

      unless (_vehicle_number = @vehicle_number).nil?
        return false if _vehicle_number.to_s.size > MAX_LENGTH_FOR_VEHICLE_NUMBER
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] driver_id Object to be assigned
    def driver_id=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("driver_id", new_value.to_s.size, MAX_LENGTH_FOR_DRIVER_ID)
      end

      @driver_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] odometer Object to be assigned
    def odometer=(new_value : Int64?)
      @odometer = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] unspecified_id Object to be assigned
    def unspecified_id=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("unspecified_id", new_value.to_s.size, MAX_LENGTH_FOR_UNSPECIFIED_ID)
      end

      @unspecified_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] user_id Object to be assigned
    def user_id=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("user_id", new_value.to_s.size, MAX_LENGTH_FOR_USER_ID)
      end

      @user_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] vehicle_number Object to be assigned
    def vehicle_number=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("vehicle_number", new_value.to_s.size, MAX_LENGTH_FOR_VEHICLE_NUMBER)
      end

      @vehicle_number = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@driver_id, @odometer, @unspecified_id, @user_id, @vehicle_number)
  end
end
