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
  @[JSON::Serializable::Options(emit_nulls: true)]
  class PostCouponsRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped


    # Optional properties

    # A positive integer representing the amount to subtract from an invoice total (required if `percent_off` is not passed).
    @[JSON::Field(key: "amount_off", type: Int64?, presence: true, ignore_serialize: amount_off.nil? && !amount_off_present?)]
    property amount_off : Int64?

    @[JSON::Field(ignore: true)]
    property? amount_off_present : Bool = false

    @[JSON::Field(key: "applies_to", type: AppliesToParams?, presence: true, ignore_serialize: applies_to.nil? && !applies_to_present?)]
    property applies_to : AppliesToParams?

    @[JSON::Field(ignore: true)]
    property? applies_to_present : Bool = false

    # Three-letter [ISO code for the currency](https://stripe.com/docs/currencies) of the `amount_off` parameter (required if `amount_off` is passed).
    @[JSON::Field(key: "currency", type: String?, presence: true, ignore_serialize: currency.nil? && !currency_present?)]
    property currency : String?

    @[JSON::Field(ignore: true)]
    property? currency_present : Bool = false

    # Specifies how long the discount will be in effect if used on a subscription. Can be `forever`, `once`, or `repeating`. Defaults to `once`.
    @[JSON::Field(key: "duration", type: String?, presence: true, ignore_serialize: duration.nil? && !duration_present?)]
    getter duration : String?

    @[JSON::Field(ignore: true)]
    property? duration_present : Bool = false

    ENUM_VALIDATOR_FOR_DURATION = EnumValidator.new("duration", "String", ["forever", "once", "repeating"])

    # Required only if `duration` is `repeating`, in which case it must be a positive integer that specifies the number of months the discount will be in effect.
    @[JSON::Field(key: "duration_in_months", type: Int64?, presence: true, ignore_serialize: duration_in_months.nil? && !duration_in_months_present?)]
    property duration_in_months : Int64?

    @[JSON::Field(ignore: true)]
    property? duration_in_months_present : Bool = false

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, presence: true, ignore_serialize: expand.nil? && !expand_present?)]
    property expand : Array(String)?

    @[JSON::Field(ignore: true)]
    property? expand_present : Bool = false

    # Unique string of your choice that will be used to identify this coupon when applying it to a customer. If you don't want to specify a particular code, you can leave the ID blank and we'll generate a random code for you.
    @[JSON::Field(key: "id", type: String?, presence: true, ignore_serialize: id.nil? && !id_present?)]
    getter id : String?

    @[JSON::Field(ignore: true)]
    property? id_present : Bool = false

    # A positive integer specifying the number of times the coupon can be redeemed before it's no longer valid. For example, you might have a 50% off coupon that the first 20 readers of your blog can use.
    @[JSON::Field(key: "max_redemptions", type: Int64?, presence: true, ignore_serialize: max_redemptions.nil? && !max_redemptions_present?)]
    property max_redemptions : Int64?

    @[JSON::Field(ignore: true)]
    property? max_redemptions_present : Bool = false

    @[JSON::Field(key: "metadata", type: PostAccountRequestMetadata?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : PostAccountRequestMetadata?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    # Name of the coupon displayed to customers on, for instance invoices, or receipts. By default the `id` is shown if `name` is not set.
    @[JSON::Field(key: "name", type: String?, presence: true, ignore_serialize: name.nil? && !name_present?)]
    getter name : String?

    @[JSON::Field(ignore: true)]
    property? name_present : Bool = false

    # A positive float larger than 0, and smaller or equal to 100, that represents the discount the coupon will apply (required if `amount_off` is not passed).
    @[JSON::Field(key: "percent_off", type: Float64?, presence: true, ignore_serialize: percent_off.nil? && !percent_off_present?)]
    property percent_off : Float64?

    @[JSON::Field(ignore: true)]
    property? percent_off_present : Bool = false

    # Unix timestamp specifying the last time at which the coupon can be redeemed. After the redeem_by date, the coupon can no longer be applied to new customers.
    @[JSON::Field(key: "redeem_by", type: Int64?, presence: true, ignore_serialize: redeem_by.nil? && !redeem_by_present?)]
    property redeem_by : Int64?

    @[JSON::Field(ignore: true)]
    property? redeem_by_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Optional properties
      @amount_off : Int64? = nil, 
      @applies_to : AppliesToParams? = nil, 
      @currency : String? = nil, 
      @duration : String? = nil, 
      @duration_in_months : Int64? = nil, 
      @expand : Array(String)? = nil, 
      @id : String? = nil, 
      @max_redemptions : Int64? = nil, 
      @metadata : PostAccountRequestMetadata? = nil, 
      @name : String? = nil, 
      @percent_off : Float64? = nil, 
      @redeem_by : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_DURATION.error_message) unless ENUM_VALIDATOR_FOR_DURATION.valid?(@duration)

      if !@id.nil? && @id.to_s.size > 5000
        invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      if !@name.nil? && @name.to_s.size > 40
        invalid_properties.push("invalid value for \"name\", the character length must be smaller than or equal to 40.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_DURATION.valid?(@duration)
      return false if !@id.nil? && @id.to_s.size > 5000
      return false if !@name.nil? && @name.to_s.size > 40

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] duration Object to be assigned
    def duration=(duration)
      ENUM_VALIDATOR_FOR_DURATION.valid!(duration)
      @duration = duration
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if !id.nil? && id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      @id = id
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if !name.nil? && name.to_s.size > 40
        raise ArgumentError.new("invalid value for \"name\", the character length must be smaller than or equal to 40.")
      end

      @name = name
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
    def_equals_and_hash(@amount_off, @applies_to, @currency, @duration, @duration_in_months, @expand, @id, @max_redemptions, @metadata, @name, @percent_off, @redeem_by)
  end
end
