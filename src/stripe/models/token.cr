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
  # Tokenization is the process Stripe uses to collect sensitive card or bank account details, or personally identifiable information (PII), directly from your customers in a secure manner. A token representing this information is returned to your server to use. You should use our [recommended payments integrations](https://stripe.com/docs/payments) to perform this process client-side. This ensures that no sensitive card data touches your server, and allows your integration to operate in a PCI-compliant way.  If you cannot use client-side tokenization, you can also create tokens using the API with either your publishable or secret API key. Keep in mind that if your integration uses this method, you are responsible for any PCI compliance that may be required, and you must keep your secret API key safe. Unlike with client-side tokenization, your customer's information is not sent directly to Stripe, so we cannot determine how it is handled or stored.  Tokens cannot be stored or used more than once. To store card or bank account information for later use, you can create [Customer](https://stripe.com/docs/api#customers) objects or [Custom accounts](https://stripe.com/docs/api#external_accounts). Note that [Radar](https://stripe.com/docs/radar), our integrated solution for automatic fraud protection, performs best with integrations that use client-side tokenization.  Related guide: [Accept a payment](https://stripe.com/docs/payments/accept-a-payment-charges#web-create-token)
  class Token
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [token]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("token")

    # Type of the token: `account`, `bank_account`, `card`, or `pii`.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil
    MAX_LENGTH_FOR__TYPE = 5000

    # Whether this token has already been used (tokens can be used only once).
    @[JSON::Field(key: "used", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter used : Bool? = nil

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "bank_account", type: Stripe::BankAccount?, default: nil, required: false, nullable: false, emit_null: false)]
    getter bank_account : Stripe::BankAccount? = nil

    @[JSON::Field(key: "card", type: Stripe::Card?, default: nil, required: false, nullable: false, emit_null: false)]
    getter card : Stripe::Card? = nil

    # IP address of the client that generated the token.
    @[JSON::Field(key: "client_ip", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: client_ip.nil? && !client_ip_present?)]
    getter client_ip : String? = nil
    MAX_LENGTH_FOR_CLIENT_IP = 5000

    @[JSON::Field(ignore: true)]
    property? client_ip_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @created : Int64? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @object : String? = nil,
      @_type : String? = nil,
      @used : Bool? = nil,
      # Optional properties
      @bank_account : Stripe::BankAccount? = nil,
      @card : Stripe::Card? = nil,
      @client_ip : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      unless (_object = @object).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?

      unless (__type = @_type).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("_type", __type.to_s.size, MAX_LENGTH_FOR__TYPE)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"used\" is required and cannot be null") if @used.nil?

      unless (_bank_account = @bank_account).nil?
        invalid_properties.concat(_bank_account.list_invalid_properties_for("bank_account")) if _bank_account.is_a?(OpenApi::Validatable)
      end
      unless (_card = @card).nil?
        invalid_properties.concat(_card.list_invalid_properties_for("card")) if _card.is_a?(OpenApi::Validatable)
      end
      unless (_client_ip = @client_ip).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("client_ip", _client_ip.to_s.size, MAX_LENGTH_FOR_CLIENT_IP)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @created.nil?

      return false if @id.nil?
      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      return false if @livemode.nil?

      return false if @object.nil?
      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      return false if @_type.nil?
      unless (__type = @_type).nil?
        return false if __type.to_s.size > MAX_LENGTH_FOR__TYPE
      end

      return false if @used.nil?

      unless (_bank_account = @bank_account).nil?
        return false if _bank_account.is_a?(OpenApi::Validatable) && !_bank_account.valid?
      end

      unless (_card = @card).nil?
        return false if _card.is_a?(OpenApi::Validatable) && !_card.valid?
      end

      unless (_client_ip = @client_ip).nil?
        return false if _client_ip.to_s.size > MAX_LENGTH_FOR_CLIENT_IP
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] created Object to be assigned
    def created=(created : Int64?)
      if created.nil?
        raise ArgumentError.new("\"created\" is required and cannot be null")
      end
      _created = created.not_nil!
      @created = _created
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(id : String?)
      if id.nil?
        raise ArgumentError.new("\"id\" is required and cannot be null")
      end
      _id = id.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
      @id = _id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] livemode Object to be assigned
    def livemode=(livemode : Bool?)
      if livemode.nil?
        raise ArgumentError.new("\"livemode\" is required and cannot be null")
      end
      _livemode = livemode.not_nil!
      @livemode = _livemode
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object : String?)
      if object.nil?
        raise ArgumentError.new("\"object\" is required and cannot be null")
      end
      _object = object.not_nil!
      OpenApi::EnumValidator.validate("object", _object, VALID_VALUES_FOR_OBJECT)
      @object = _object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type : String?)
      if _type.nil?
        raise ArgumentError.new("\"_type\" is required and cannot be null")
      end
      __type = _type.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("_type", __type.to_s.size, MAX_LENGTH_FOR__TYPE)
      @_type = __type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] used Object to be assigned
    def used=(used : Bool?)
      if used.nil?
        raise ArgumentError.new("\"used\" is required and cannot be null")
      end
      _used = used.not_nil!
      @used = _used
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bank_account Object to be assigned
    def bank_account=(bank_account : Stripe::BankAccount?)
      if bank_account.nil?
        return @bank_account = nil
      end
      _bank_account = bank_account.not_nil!
      _bank_account.validate if _bank_account.is_a?(OpenApi::Validatable)
      @bank_account = _bank_account
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] card Object to be assigned
    def card=(card : Stripe::Card?)
      if card.nil?
        return @card = nil
      end
      _card = card.not_nil!
      _card.validate if _card.is_a?(OpenApi::Validatable)
      @card = _card
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] client_ip Object to be assigned
    def client_ip=(client_ip : String?)
      if client_ip.nil?
        return @client_ip = nil
      end
      _client_ip = client_ip.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("client_ip", _client_ip.to_s.size, MAX_LENGTH_FOR_CLIENT_IP)
      @client_ip = _client_ip
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@created, @id, @livemode, @object, @_type, @used, @bank_account, @card, @client_ip, @client_ip_present)
  end
end
