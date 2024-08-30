#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./card_account"
require "./card_customer"
require "./token_card_networks"

module Stripe
  # You can store multiple cards on a customer in order to charge the customer later. You can also store multiple debit cards on a recipient in order to transfer to those cards later.  Related guide: [Card payments with Sources](https://stripe.com/docs/sources/cards)
  class Card
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # City/District/Suburb/Town/Village.
    @[JSON::Field(key: "address_city", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter address_city : String? = nil
    MAX_LENGTH_FOR_ADDRESS_CITY = 5000

    # Billing address country, if provided when creating card.
    @[JSON::Field(key: "address_country", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter address_country : String? = nil
    MAX_LENGTH_FOR_ADDRESS_COUNTRY = 5000

    # Address line 1 (Street address/PO Box/Company name).
    @[JSON::Field(key: "address_line1", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter address_line1 : String? = nil
    MAX_LENGTH_FOR_ADDRESS_LINE1 = 5000

    # If `address_line1` was provided, results of the check: `pass`, `fail`, `unavailable`, or `unchecked`.
    @[JSON::Field(key: "address_line1_check", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter address_line1_check : String? = nil
    MAX_LENGTH_FOR_ADDRESS_LINE1_CHECK = 5000

    # Address line 2 (Apartment/Suite/Unit/Building).
    @[JSON::Field(key: "address_line2", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter address_line2 : String? = nil
    MAX_LENGTH_FOR_ADDRESS_LINE2 = 5000

    # State/County/Province/Region.
    @[JSON::Field(key: "address_state", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter address_state : String? = nil
    MAX_LENGTH_FOR_ADDRESS_STATE = 5000

    # ZIP or postal code.
    @[JSON::Field(key: "address_zip", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter address_zip : String? = nil
    MAX_LENGTH_FOR_ADDRESS_ZIP = 5000

    # If `address_zip` was provided, results of the check: `pass`, `fail`, `unavailable`, or `unchecked`.
    @[JSON::Field(key: "address_zip_check", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter address_zip_check : String? = nil
    MAX_LENGTH_FOR_ADDRESS_ZIP_CHECK = 5000

    # Card brand. Can be `American Express`, `Diners Club`, `Discover`, `Eftpos Australia`, `Girocard`, `JCB`, `MasterCard`, `UnionPay`, `Visa`, or `Unknown`.
    @[JSON::Field(key: "brand", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter brand : String? = nil
    MAX_LENGTH_FOR_BRAND = 5000

    # Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
    @[JSON::Field(key: "country", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter country : String? = nil
    MAX_LENGTH_FOR_COUNTRY = 5000

    # If a CVC was provided, results of the check: `pass`, `fail`, `unavailable`, or `unchecked`. A result of unchecked indicates that CVC was provided but hasn't been checked yet. Checks are typically performed when attaching a card to a Customer object, or when creating a charge. For more details, see [Check if a card is valid without a charge](https://support.stripe.com/questions/check-if-a-card-is-valid-without-a-charge).
    @[JSON::Field(key: "cvc_check", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter cvc_check : String? = nil
    MAX_LENGTH_FOR_CVC_CHECK = 5000

    # (For tokenized numbers only.) The last four digits of the device account number.
    @[JSON::Field(key: "dynamic_last4", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter dynamic_last4 : String? = nil
    MAX_LENGTH_FOR_DYNAMIC_LAST4 = 5000

    # Two-digit number representing the card's expiration month.
    @[JSON::Field(key: "exp_month", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter exp_month : Int64? = nil

    # Four-digit number representing the card's expiration year.
    @[JSON::Field(key: "exp_year", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter exp_year : Int64? = nil

    # Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
    @[JSON::Field(key: "funding", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter funding : String? = nil
    MAX_LENGTH_FOR_FUNDING = 5000

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # The last four digits of the card.
    @[JSON::Field(key: "last4", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter last4 : String? = nil
    MAX_LENGTH_FOR_LAST4 = 5000

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: true, nullable: true, emit_null: true)]
    getter metadata : Hash(String, String)? = nil

    # Cardholder name.
    @[JSON::Field(key: "name", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter name : String? = nil
    MAX_LENGTH_FOR_NAME = 5000

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [card]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("card")

    # If the card number is tokenized, this is the method that was used. Can be `android_pay` (includes Google Pay), `apple_pay`, `masterpass`, `visa_checkout`, or null.
    @[JSON::Field(key: "tokenization_method", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter tokenization_method : String? = nil
    MAX_LENGTH_FOR_TOKENIZATION_METHOD = 5000

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "account", type: Stripe::CardAccount?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: account.nil? && !account_present?)]
    getter account : Stripe::CardAccount? = nil

    @[JSON::Field(ignore: true)]
    property? account_present : Bool = false

    # A set of available payout methods for this card. Only values from this set should be passed as the `method` when creating a payout.
    @[JSON::Field(key: "available_payout_methods", type: Array(String)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: available_payout_methods.nil? && !available_payout_methods_present?)]
    getter available_payout_methods : Array(String)? = nil
    ERROR_MESSAGE_FOR_AVAILABLE_PAYOUT_METHODS = "invalid value for \"available_payout_methods\", must be one of [instant, standard]."
    VALID_VALUES_FOR_AVAILABLE_PAYOUT_METHODS  = String.static_array("instant", "standard")

    @[JSON::Field(ignore: true)]
    property? available_payout_methods_present : Bool = false

    # Three-letter [ISO code for currency](https://www.iso.org/iso-4217-currency-codes.html) in lowercase. Must be a [supported currency](https://docs.stripe.com/currencies). Only applicable on accounts (not customers or recipients). The card can be used as a transfer destination for funds in this currency. This property is only available for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
    @[JSON::Field(key: "currency", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: currency.nil? && !currency_present?)]
    getter currency : String? = nil

    @[JSON::Field(ignore: true)]
    property? currency_present : Bool = false

    @[JSON::Field(key: "customer", type: Stripe::CardCustomer?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: customer.nil? && !customer_present?)]
    getter customer : Stripe::CardCustomer? = nil

    @[JSON::Field(ignore: true)]
    property? customer_present : Bool = false

    # Whether this card is the default external account for its currency. This property is only available for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
    @[JSON::Field(key: "default_for_currency", type: Bool?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: default_for_currency.nil? && !default_for_currency_present?)]
    getter default_for_currency : Bool? = nil

    @[JSON::Field(ignore: true)]
    property? default_for_currency_present : Bool = false

    # A high-level description of the type of cards issued in this range. (For internal use only and not typically available in standard API requests.)
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 5000

    # Uniquely identifies this particular card number. You can use this attribute to check whether two customers who’ve signed up with you are using the same card number, for example. For payment methods that tokenize card information (Apple Pay, Google Pay), the tokenized number might be provided instead of the underlying card number.  *As of May 1, 2021, card fingerprint in India for Connect changed to allow two fingerprints for the same card---one for India and one for the rest of the world.*
    @[JSON::Field(key: "fingerprint", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: fingerprint.nil? && !fingerprint_present?)]
    getter fingerprint : String? = nil
    MAX_LENGTH_FOR_FINGERPRINT = 5000

    @[JSON::Field(ignore: true)]
    property? fingerprint_present : Bool = false

    # Issuer identification number of the card. (For internal use only and not typically available in standard API requests.)
    @[JSON::Field(key: "iin", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter iin : String? = nil
    MAX_LENGTH_FOR_IIN = 5000

    # The name of the card's issuing bank. (For internal use only and not typically available in standard API requests.)
    @[JSON::Field(key: "issuer", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter issuer : String? = nil
    MAX_LENGTH_FOR_ISSUER = 5000

    @[JSON::Field(key: "networks", type: Stripe::TokenCardNetworks?, default: nil, required: false, nullable: false, emit_null: false)]
    getter networks : Stripe::TokenCardNetworks? = nil

    # For external accounts that are cards, possible values are `new` and `errored`. If a payout fails, the status is set to `errored` and [scheduled payouts](https://stripe.com/docs/payouts#payout-schedule) are stopped until account details are updated.
    @[JSON::Field(key: "status", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: status.nil? && !status_present?)]
    getter status : String? = nil
    MAX_LENGTH_FOR_STATUS = 5000

    @[JSON::Field(ignore: true)]
    property? status_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @address_city : String? = nil,
      @address_country : String? = nil,
      @address_line1 : String? = nil,
      @address_line1_check : String? = nil,
      @address_line2 : String? = nil,
      @address_state : String? = nil,
      @address_zip : String? = nil,
      @address_zip_check : String? = nil,
      @brand : String? = nil,
      @country : String? = nil,
      @cvc_check : String? = nil,
      @dynamic_last4 : String? = nil,
      @exp_month : Int64? = nil,
      @exp_year : Int64? = nil,
      @funding : String? = nil,
      @id : String? = nil,
      @last4 : String? = nil,
      @metadata : Hash(String, String)? = nil,
      @name : String? = nil,
      @object : String? = nil,
      @tokenization_method : String? = nil,
      # Optional properties
      @account : Stripe::CardAccount? = nil,
      @available_payout_methods : Array(String)? = nil,
      @currency : String? = nil,
      @customer : Stripe::CardCustomer? = nil,
      @default_for_currency : Bool? = nil,
      @description : String? = nil,
      @fingerprint : String? = nil,
      @iin : String? = nil,
      @issuer : String? = nil,
      @networks : Stripe::TokenCardNetworks? = nil,
      @status : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

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
      unless (_address_line1_check = @address_line1_check).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("address_line1_check", _address_line1_check.to_s.size, MAX_LENGTH_FOR_ADDRESS_LINE1_CHECK)
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
      unless (_address_zip_check = @address_zip_check).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("address_zip_check", _address_zip_check.to_s.size, MAX_LENGTH_FOR_ADDRESS_ZIP_CHECK)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"brand\" is required and cannot be null") if @brand.nil?

      unless (_brand = @brand).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("brand", _brand.to_s.size, MAX_LENGTH_FOR_BRAND)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_country = @country).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("country", _country.to_s.size, MAX_LENGTH_FOR_COUNTRY)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_cvc_check = @cvc_check).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("cvc_check", _cvc_check.to_s.size, MAX_LENGTH_FOR_CVC_CHECK)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_dynamic_last4 = @dynamic_last4).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("dynamic_last4", _dynamic_last4.to_s.size, MAX_LENGTH_FOR_DYNAMIC_LAST4)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"exp_month\" is required and cannot be null") if @exp_month.nil?

      invalid_properties.push("\"exp_year\" is required and cannot be null") if @exp_year.nil?

      invalid_properties.push("\"funding\" is required and cannot be null") if @funding.nil?

      unless (_funding = @funding).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("funding", _funding.to_s.size, MAX_LENGTH_FOR_FUNDING)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"last4\" is required and cannot be null") if @last4.nil?

      unless (_last4 = @last4).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("last4", _last4.to_s.size, MAX_LENGTH_FOR_LAST4)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_name = @name).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("name", _name.to_s.size, MAX_LENGTH_FOR_NAME)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      unless (_object = @object).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      unless (_tokenization_method = @tokenization_method).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("tokenization_method", _tokenization_method.to_s.size, MAX_LENGTH_FOR_TOKENIZATION_METHOD)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_account = @account).nil?
        invalid_properties.concat(_account.list_invalid_properties_for("account")) if _account.is_a?(OpenApi::Validatable)
      end
      unless (_available_payout_methods = @available_payout_methods).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_AVAILABLE_PAYOUT_METHODS) unless OpenApi::EnumValidator.valid?(_available_payout_methods, VALID_VALUES_FOR_AVAILABLE_PAYOUT_METHODS)
      end

      unless (_customer = @customer).nil?
        invalid_properties.concat(_customer.list_invalid_properties_for("customer")) if _customer.is_a?(OpenApi::Validatable)
      end

      unless (_description = @description).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_fingerprint = @fingerprint).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("fingerprint", _fingerprint.to_s.size, MAX_LENGTH_FOR_FINGERPRINT)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_iin = @iin).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("iin", _iin.to_s.size, MAX_LENGTH_FOR_IIN)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_issuer = @issuer).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("issuer", _issuer.to_s.size, MAX_LENGTH_FOR_ISSUER)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_networks = @networks).nil?
        invalid_properties.concat(_networks.list_invalid_properties_for("networks")) if _networks.is_a?(OpenApi::Validatable)
      end
      unless (_status = @status).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("status", _status.to_s.size, MAX_LENGTH_FOR_STATUS)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_address_city = @address_city).nil?
        return false if _address_city.to_s.size > MAX_LENGTH_FOR_ADDRESS_CITY
      end

      unless (_address_country = @address_country).nil?
        return false if _address_country.to_s.size > MAX_LENGTH_FOR_ADDRESS_COUNTRY
      end

      unless (_address_line1 = @address_line1).nil?
        return false if _address_line1.to_s.size > MAX_LENGTH_FOR_ADDRESS_LINE1
      end

      unless (_address_line1_check = @address_line1_check).nil?
        return false if _address_line1_check.to_s.size > MAX_LENGTH_FOR_ADDRESS_LINE1_CHECK
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

      unless (_address_zip_check = @address_zip_check).nil?
        return false if _address_zip_check.to_s.size > MAX_LENGTH_FOR_ADDRESS_ZIP_CHECK
      end

      return false if @brand.nil?
      unless (_brand = @brand).nil?
        return false if _brand.to_s.size > MAX_LENGTH_FOR_BRAND
      end

      unless (_country = @country).nil?
        return false if _country.to_s.size > MAX_LENGTH_FOR_COUNTRY
      end

      unless (_cvc_check = @cvc_check).nil?
        return false if _cvc_check.to_s.size > MAX_LENGTH_FOR_CVC_CHECK
      end

      unless (_dynamic_last4 = @dynamic_last4).nil?
        return false if _dynamic_last4.to_s.size > MAX_LENGTH_FOR_DYNAMIC_LAST4
      end

      return false if @exp_month.nil?

      return false if @exp_year.nil?

      return false if @funding.nil?
      unless (_funding = @funding).nil?
        return false if _funding.to_s.size > MAX_LENGTH_FOR_FUNDING
      end

      return false if @id.nil?
      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      return false if @last4.nil?
      unless (_last4 = @last4).nil?
        return false if _last4.to_s.size > MAX_LENGTH_FOR_LAST4
      end

      unless (_name = @name).nil?
        return false if _name.to_s.size > MAX_LENGTH_FOR_NAME
      end

      return false if @object.nil?
      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      unless (_tokenization_method = @tokenization_method).nil?
        return false if _tokenization_method.to_s.size > MAX_LENGTH_FOR_TOKENIZATION_METHOD
      end

      unless (_account = @account).nil?
        return false if _account.is_a?(OpenApi::Validatable) && !_account.valid?
      end

      unless (_available_payout_methods = @available_payout_methods).nil?
        return false unless OpenApi::EnumValidator.valid?(_available_payout_methods, VALID_VALUES_FOR_AVAILABLE_PAYOUT_METHODS)
      end

      unless (_customer = @customer).nil?
        return false if _customer.is_a?(OpenApi::Validatable) && !_customer.valid?
      end

      unless (_description = @description).nil?
        return false if _description.to_s.size > MAX_LENGTH_FOR_DESCRIPTION
      end

      unless (_fingerprint = @fingerprint).nil?
        return false if _fingerprint.to_s.size > MAX_LENGTH_FOR_FINGERPRINT
      end

      unless (_iin = @iin).nil?
        return false if _iin.to_s.size > MAX_LENGTH_FOR_IIN
      end

      unless (_issuer = @issuer).nil?
        return false if _issuer.to_s.size > MAX_LENGTH_FOR_ISSUER
      end

      unless (_networks = @networks).nil?
        return false if _networks.is_a?(OpenApi::Validatable) && !_networks.valid?
      end

      unless (_status = @status).nil?
        return false if _status.to_s.size > MAX_LENGTH_FOR_STATUS
      end

      true
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
    # @param [Object] address_line1_check Object to be assigned
    def address_line1_check=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("address_line1_check", new_value.to_s.size, MAX_LENGTH_FOR_ADDRESS_LINE1_CHECK)
      end

      @address_line1_check = new_value
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
    # @param [Object] address_zip_check Object to be assigned
    def address_zip_check=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("address_zip_check", new_value.to_s.size, MAX_LENGTH_FOR_ADDRESS_ZIP_CHECK)
      end

      @address_zip_check = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] brand Object to be assigned
    def brand=(new_value : String?)
      raise ArgumentError.new("\"brand\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("brand", new_value.to_s.size, MAX_LENGTH_FOR_BRAND)
      end

      @brand = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] country Object to be assigned
    def country=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("country", new_value.to_s.size, MAX_LENGTH_FOR_COUNTRY)
      end

      @country = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cvc_check Object to be assigned
    def cvc_check=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("cvc_check", new_value.to_s.size, MAX_LENGTH_FOR_CVC_CHECK)
      end

      @cvc_check = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] dynamic_last4 Object to be assigned
    def dynamic_last4=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("dynamic_last4", new_value.to_s.size, MAX_LENGTH_FOR_DYNAMIC_LAST4)
      end

      @dynamic_last4 = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] exp_month Object to be assigned
    def exp_month=(new_value : Int64?)
      raise ArgumentError.new("\"exp_month\" is required and cannot be null") if new_value.nil?

      @exp_month = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] exp_year Object to be assigned
    def exp_year=(new_value : Int64?)
      raise ArgumentError.new("\"exp_year\" is required and cannot be null") if new_value.nil?

      @exp_year = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] funding Object to be assigned
    def funding=(new_value : String?)
      raise ArgumentError.new("\"funding\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("funding", new_value.to_s.size, MAX_LENGTH_FOR_FUNDING)
      end

      @funding = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(new_value : String?)
      raise ArgumentError.new("\"id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("id", new_value.to_s.size, MAX_LENGTH_FOR_ID)
      end

      @id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last4 Object to be assigned
    def last4=(new_value : String?)
      raise ArgumentError.new("\"last4\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("last4", new_value.to_s.size, MAX_LENGTH_FOR_LAST4)
      end

      @last4 = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(new_value : Hash(String, String)?)
      @metadata = new_value
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
    # @param [Object] object Object to be assigned
    def object=(new_value : String?)
      raise ArgumentError.new("\"object\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("object", new_value, VALID_VALUES_FOR_OBJECT)
      end

      @object = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tokenization_method Object to be assigned
    def tokenization_method=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("tokenization_method", new_value.to_s.size, MAX_LENGTH_FOR_TOKENIZATION_METHOD)
      end

      @tokenization_method = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account Object to be assigned
    def account=(new_value : Stripe::CardAccount?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @account = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] available_payout_methods Object to be assigned
    def available_payout_methods=(new_value : Array(String)?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("available_payout_methods", new_value, VALID_VALUES_FOR_AVAILABLE_PAYOUT_METHODS)
      end

      @available_payout_methods = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(new_value : String?)
      @currency = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer Object to be assigned
    def customer=(new_value : Stripe::CardCustomer?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @customer = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_for_currency Object to be assigned
    def default_for_currency=(new_value : Bool?)
      @default_for_currency = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] description Object to be assigned
    def description=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("description", new_value.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
      end

      @description = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fingerprint Object to be assigned
    def fingerprint=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("fingerprint", new_value.to_s.size, MAX_LENGTH_FOR_FINGERPRINT)
      end

      @fingerprint = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] iin Object to be assigned
    def iin=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("iin", new_value.to_s.size, MAX_LENGTH_FOR_IIN)
      end

      @iin = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] issuer Object to be assigned
    def issuer=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("issuer", new_value.to_s.size, MAX_LENGTH_FOR_ISSUER)
      end

      @issuer = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] networks Object to be assigned
    def networks=(new_value : Stripe::TokenCardNetworks?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @networks = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("status", new_value.to_s.size, MAX_LENGTH_FOR_STATUS)
      end

      @status = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@address_city, @address_country, @address_line1, @address_line1_check, @address_line2, @address_state, @address_zip, @address_zip_check, @brand, @country, @cvc_check, @dynamic_last4, @exp_month, @exp_year, @funding, @id, @last4, @metadata, @name, @object, @tokenization_method, @account, @account_present, @available_payout_methods, @available_payout_methods_present, @currency, @currency_present, @customer, @customer_present, @default_for_currency, @default_for_currency_present, @description, @fingerprint, @fingerprint_present, @iin, @issuer, @networks, @status, @status_present)
  end
end
