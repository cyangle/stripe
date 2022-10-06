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
  # Subscription items allow you to create customer subscriptions with more than one plan, making it easy to represent complex billing relationships.
  class SubscriptionItem
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

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [subscription_item]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("subscription_item")

    @[JSON::Field(key: "price", type: Stripe::Price?, default: nil, required: true, nullable: false, emit_null: false)]
    getter price : Stripe::Price? = nil

    # The `subscription` this `subscription_item` belongs to.
    @[JSON::Field(key: "subscription", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter subscription : String? = nil
    MAX_LENGTH_FOR_SUBSCRIPTION = 5000

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "billing_thresholds", type: Stripe::SubscriptionItemBillingThresholds1?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: billing_thresholds.nil? && !billing_thresholds_present?)]
    getter billing_thresholds : Stripe::SubscriptionItemBillingThresholds1? = nil

    @[JSON::Field(ignore: true)]
    property? billing_thresholds_present : Bool = false

    # The [quantity](https://stripe.com/docs/subscriptions/quantities) of the plan to which the customer should be subscribed.
    @[JSON::Field(key: "quantity", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter quantity : Int64? = nil

    # The tax rates which apply to this `subscription_item`. When set, the `default_tax_rates` on the subscription do not apply to this `subscription_item`.
    @[JSON::Field(key: "tax_rates", type: Array(Stripe::TaxRate)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: tax_rates.nil? && !tax_rates_present?)]
    getter tax_rates : Array(Stripe::TaxRate)? = nil

    @[JSON::Field(ignore: true)]
    property? tax_rates_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @created : Int64? = nil,
      @id : String? = nil,
      @metadata : Hash(String, String)? = nil,
      @object : String? = nil,
      @price : Stripe::Price? = nil,
      @subscription : String? = nil,
      # Optional properties
      @billing_thresholds : Stripe::SubscriptionItemBillingThresholds1? = nil,
      @quantity : Int64? = nil,
      @tax_rates : Array(Stripe::TaxRate)? = nil
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
      invalid_properties.push("\"metadata\" is required and cannot be null") if @metadata.nil?

      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      unless (_object = @object).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      invalid_properties.push("\"price\" is required and cannot be null") if @price.nil?

      unless (_price = @price).nil?
        invalid_properties.concat(_price.list_invalid_properties_for("price")) if _price.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"subscription\" is required and cannot be null") if @subscription.nil?

      unless (_subscription = @subscription).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("subscription", _subscription.to_s.size, MAX_LENGTH_FOR_SUBSCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_billing_thresholds = @billing_thresholds).nil?
        invalid_properties.concat(_billing_thresholds.list_invalid_properties_for("billing_thresholds")) if _billing_thresholds.is_a?(OpenApi::Validatable)
      end

      unless (_tax_rates = @tax_rates).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "tax_rates", container: _tax_rates)) if _tax_rates.is_a?(Array)
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

      return false if @metadata.nil?

      return false if @object.nil?
      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      return false if @price.nil?
      unless (_price = @price).nil?
        return false if _price.is_a?(OpenApi::Validatable) && !_price.valid?
      end

      return false if @subscription.nil?
      unless (_subscription = @subscription).nil?
        return false if _subscription.to_s.size > MAX_LENGTH_FOR_SUBSCRIPTION
      end

      unless (_billing_thresholds = @billing_thresholds).nil?
        return false if _billing_thresholds.is_a?(OpenApi::Validatable) && !_billing_thresholds.valid?
      end

      unless (_tax_rates = @tax_rates).nil?
        return false if _tax_rates.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _tax_rates)
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
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Hash(String, String)?)
      if metadata.nil?
        raise ArgumentError.new("\"metadata\" is required and cannot be null")
      end
      _metadata = metadata.not_nil!
      @metadata = _metadata
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
    # @param [Object] price Object to be assigned
    def price=(price : Stripe::Price?)
      if price.nil?
        raise ArgumentError.new("\"price\" is required and cannot be null")
      end
      _price = price.not_nil!
      _price.validate if _price.is_a?(OpenApi::Validatable)
      @price = _price
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subscription Object to be assigned
    def subscription=(subscription : String?)
      if subscription.nil?
        raise ArgumentError.new("\"subscription\" is required and cannot be null")
      end
      _subscription = subscription.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("subscription", _subscription.to_s.size, MAX_LENGTH_FOR_SUBSCRIPTION)
      @subscription = _subscription
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing_thresholds Object to be assigned
    def billing_thresholds=(billing_thresholds : Stripe::SubscriptionItemBillingThresholds1?)
      if billing_thresholds.nil?
        return @billing_thresholds = nil
      end
      _billing_thresholds = billing_thresholds.not_nil!
      _billing_thresholds.validate if _billing_thresholds.is_a?(OpenApi::Validatable)
      @billing_thresholds = _billing_thresholds
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] quantity Object to be assigned
    def quantity=(quantity : Int64?)
      if quantity.nil?
        return @quantity = nil
      end
      _quantity = quantity.not_nil!
      @quantity = _quantity
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_rates Object to be assigned
    def tax_rates=(tax_rates : Array(Stripe::TaxRate)?)
      if tax_rates.nil?
        return @tax_rates = nil
      end
      _tax_rates = tax_rates.not_nil!
      OpenApi::ContainerValidator.validate(container: _tax_rates) if _tax_rates.is_a?(Array)
      @tax_rates = _tax_rates
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@created, @id, @metadata, @object, @price, @subscription, @billing_thresholds, @billing_thresholds_present, @quantity, @tax_rates, @tax_rates_present)
  end
end
