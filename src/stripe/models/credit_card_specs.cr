#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./networks_param_specs"

module Stripe
  class CreditCardSpecs
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Two-digit number representing the card's expiration month.
    @[JSON::Field(key: "exp_month", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter exp_month : String? = nil
    MAX_LENGTH_FOR_EXP_MONTH = 5000

    # Two- or four-digit number representing the card's expiration year.
    @[JSON::Field(key: "exp_year", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter exp_year : String? = nil
    MAX_LENGTH_FOR_EXP_YEAR = 5000

    # The card number, as a string without any separators.
    @[JSON::Field(key: "number", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter number : String? = nil
    MAX_LENGTH_FOR_NUMBER = 5000

    # End of Required Properties

    # Optional Properties

    # City / District / Suburb / Town / Village.
    @[JSON::Field(key: "address_city", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address_city : String? = nil
    MAX_LENGTH_FOR_ADDRESS_CITY = 5000

    # Billing address country, if provided.
    @[JSON::Field(key: "address_country", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address_country : String? = nil
    MAX_LENGTH_FOR_ADDRESS_COUNTRY = 5000

    # Address line 1 (Street address / PO Box / Company name).
    @[JSON::Field(key: "address_line1", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address_line1 : String? = nil
    MAX_LENGTH_FOR_ADDRESS_LINE1 = 5000

    # Address line 2 (Apartment / Suite / Unit / Building).
    @[JSON::Field(key: "address_line2", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address_line2 : String? = nil
    MAX_LENGTH_FOR_ADDRESS_LINE2 = 5000

    # State / County / Province / Region.
    @[JSON::Field(key: "address_state", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address_state : String? = nil
    MAX_LENGTH_FOR_ADDRESS_STATE = 5000

    # ZIP or postal code.
    @[JSON::Field(key: "address_zip", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address_zip : String? = nil
    MAX_LENGTH_FOR_ADDRESS_ZIP = 5000

    # Required in order to add the card to an account; in all other cases, this parameter is not used. When added to an account, the card (which must be a debit card) can be used as a transfer destination for funds in this currency.
    @[JSON::Field(key: "currency", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter currency : String? = nil
    MAX_LENGTH_FOR_CURRENCY = 5000

    # Card security code. Highly recommended to always include this value.
    @[JSON::Field(key: "cvc", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter cvc : String? = nil
    MAX_LENGTH_FOR_CVC = 5000

    # Cardholder's full name.
    @[JSON::Field(key: "name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter name : String? = nil
    MAX_LENGTH_FOR_NAME = 5000

    @[JSON::Field(key: "networks", type: Stripe::NetworksParamSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter networks : Stripe::NetworksParamSpecs? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @exp_month : String? = nil,
      @exp_year : String? = nil,
      @number : String? = nil,
      # Optional properties
      @address_city : String? = nil,
      @address_country : String? = nil,
      @address_line1 : String? = nil,
      @address_line2 : String? = nil,
      @address_state : String? = nil,
      @address_zip : String? = nil,
      @currency : String? = nil,
      @cvc : String? = nil,
      @name : String? = nil,
      @networks : Stripe::NetworksParamSpecs? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"exp_month\" is required and cannot be null") if @exp_month.nil?

      unless (_exp_month = @exp_month).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("exp_month", _exp_month.to_s.size, MAX_LENGTH_FOR_EXP_MONTH)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"exp_year\" is required and cannot be null") if @exp_year.nil?

      unless (_exp_year = @exp_year).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("exp_year", _exp_year.to_s.size, MAX_LENGTH_FOR_EXP_YEAR)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"number\" is required and cannot be null") if @number.nil?

      unless (_number = @number).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("number", _number.to_s.size, MAX_LENGTH_FOR_NUMBER)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_address_city = @address_city).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("address_city", _address_city.to_s.size, MAX_LENGTH_FOR_ADDRESS_CITY)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_address_country = @address_country).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("address_country", _address_country.to_s.size, MAX_LENGTH_FOR_ADDRESS_COUNTRY)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_address_line1 = @address_line1).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("address_line1", _address_line1.to_s.size, MAX_LENGTH_FOR_ADDRESS_LINE1)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_address_line2 = @address_line2).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("address_line2", _address_line2.to_s.size, MAX_LENGTH_FOR_ADDRESS_LINE2)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_address_state = @address_state).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("address_state", _address_state.to_s.size, MAX_LENGTH_FOR_ADDRESS_STATE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_address_zip = @address_zip).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("address_zip", _address_zip.to_s.size, MAX_LENGTH_FOR_ADDRESS_ZIP)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_currency = @currency).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("currency", _currency.to_s.size, MAX_LENGTH_FOR_CURRENCY)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_cvc = @cvc).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("cvc", _cvc.to_s.size, MAX_LENGTH_FOR_CVC)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_name = @name).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("name", _name.to_s.size, MAX_LENGTH_FOR_NAME)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_networks = @networks).nil?
        invalid_properties.concat(_networks.list_invalid_properties_for("networks")) if _networks.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @exp_month.nil?
      unless (_exp_month = @exp_month).nil?
        return false if _exp_month.to_s.size > MAX_LENGTH_FOR_EXP_MONTH
      end

      return false if @exp_year.nil?
      unless (_exp_year = @exp_year).nil?
        return false if _exp_year.to_s.size > MAX_LENGTH_FOR_EXP_YEAR
      end

      return false if @number.nil?
      unless (_number = @number).nil?
        return false if _number.to_s.size > MAX_LENGTH_FOR_NUMBER
      end

      unless (_address_city = @address_city).nil?
        return false if _address_city.to_s.size > MAX_LENGTH_FOR_ADDRESS_CITY
      end

      unless (_address_country = @address_country).nil?
        return false if _address_country.to_s.size > MAX_LENGTH_FOR_ADDRESS_COUNTRY
      end

      unless (_address_line1 = @address_line1).nil?
        return false if _address_line1.to_s.size > MAX_LENGTH_FOR_ADDRESS_LINE1
      end

      unless (_address_line2 = @address_line2).nil?
        return false if _address_line2.to_s.size > MAX_LENGTH_FOR_ADDRESS_LINE2
      end

      unless (_address_state = @address_state).nil?
        return false if _address_state.to_s.size > MAX_LENGTH_FOR_ADDRESS_STATE
      end

      unless (_address_zip = @address_zip).nil?
        return false if _address_zip.to_s.size > MAX_LENGTH_FOR_ADDRESS_ZIP
      end

      unless (_currency = @currency).nil?
        return false if _currency.to_s.size > MAX_LENGTH_FOR_CURRENCY
      end

      unless (_cvc = @cvc).nil?
        return false if _cvc.to_s.size > MAX_LENGTH_FOR_CVC
      end

      unless (_name = @name).nil?
        return false if _name.to_s.size > MAX_LENGTH_FOR_NAME
      end

      unless (_networks = @networks).nil?
        return false if _networks.is_a?(OpenApi::Validatable) && !_networks.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] exp_month Object to be assigned
    def exp_month=(new_value : String?)
      raise ArgumentError.new("\"exp_month\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("exp_month", new_value.to_s.size, MAX_LENGTH_FOR_EXP_MONTH)
      end

      @exp_month = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] exp_year Object to be assigned
    def exp_year=(new_value : String?)
      raise ArgumentError.new("\"exp_year\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("exp_year", new_value.to_s.size, MAX_LENGTH_FOR_EXP_YEAR)
      end

      @exp_year = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] number Object to be assigned
    def number=(new_value : String?)
      raise ArgumentError.new("\"number\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("number", new_value.to_s.size, MAX_LENGTH_FOR_NUMBER)
      end

      @number = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address_city Object to be assigned
    def address_city=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("address_city", new_value.to_s.size, MAX_LENGTH_FOR_ADDRESS_CITY)
      end

      @address_city = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address_country Object to be assigned
    def address_country=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("address_country", new_value.to_s.size, MAX_LENGTH_FOR_ADDRESS_COUNTRY)
      end

      @address_country = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address_line1 Object to be assigned
    def address_line1=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("address_line1", new_value.to_s.size, MAX_LENGTH_FOR_ADDRESS_LINE1)
      end

      @address_line1 = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address_line2 Object to be assigned
    def address_line2=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("address_line2", new_value.to_s.size, MAX_LENGTH_FOR_ADDRESS_LINE2)
      end

      @address_line2 = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address_state Object to be assigned
    def address_state=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("address_state", new_value.to_s.size, MAX_LENGTH_FOR_ADDRESS_STATE)
      end

      @address_state = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address_zip Object to be assigned
    def address_zip=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("address_zip", new_value.to_s.size, MAX_LENGTH_FOR_ADDRESS_ZIP)
      end

      @address_zip = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("currency", new_value.to_s.size, MAX_LENGTH_FOR_CURRENCY)
      end

      @currency = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cvc Object to be assigned
    def cvc=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("cvc", new_value.to_s.size, MAX_LENGTH_FOR_CVC)
      end

      @cvc = new_value
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
    # @param [Object] networks Object to be assigned
    def networks=(new_value : Stripe::NetworksParamSpecs?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @networks = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@exp_month, @exp_year, @number, @address_city, @address_country, @address_line1, @address_line2, @address_state, @address_zip, @currency, @cvc, @name, @networks)
  end
end
