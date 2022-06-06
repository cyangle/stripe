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
  class PostTokensRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "account", type: ConnectJsAccountTokenSpecs?, presence: true, ignore_serialize: account.nil? && !account_present?)]
    property account : ConnectJsAccountTokenSpecs?

    @[JSON::Field(ignore: true)]
    property? account_present : Bool = false

    @[JSON::Field(key: "bank_account", type: TokenCreateBankAccount?, presence: true, ignore_serialize: bank_account.nil? && !bank_account_present?)]
    property bank_account : TokenCreateBankAccount?

    @[JSON::Field(ignore: true)]
    property? bank_account_present : Bool = false

    @[JSON::Field(key: "card", type: PostTokensRequestCard?, presence: true, ignore_serialize: card.nil? && !card_present?)]
    property card : PostTokensRequestCard?

    @[JSON::Field(ignore: true)]
    property? card_present : Bool = false

    # The customer (owned by the application's account) for which to create a token. This can be used only with an [OAuth access token](https://stripe.com/docs/connect/standard-accounts) or [Stripe-Account header](https://stripe.com/docs/connect/authentication). For more details, see [Cloning Saved Payment Methods](https://stripe.com/docs/connect/cloning-saved-payment-methods).
    @[JSON::Field(key: "customer", type: String?, presence: true, ignore_serialize: customer.nil? && !customer_present?)]
    getter customer : String?

    @[JSON::Field(ignore: true)]
    property? customer_present : Bool = false

    @[JSON::Field(key: "cvc_update", type: CvcParams?, presence: true, ignore_serialize: cvc_update.nil? && !cvc_update_present?)]
    property cvc_update : CvcParams?

    @[JSON::Field(ignore: true)]
    property? cvc_update_present : Bool = false

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, presence: true, ignore_serialize: expand.nil? && !expand_present?)]
    property expand : Array(String)?

    @[JSON::Field(ignore: true)]
    property? expand_present : Bool = false

    @[JSON::Field(key: "person", type: PersonTokenSpecs?, presence: true, ignore_serialize: person.nil? && !person_present?)]
    property person : PersonTokenSpecs?

    @[JSON::Field(ignore: true)]
    property? person_present : Bool = false

    @[JSON::Field(key: "pii", type: PiiTokenSpecs?, presence: true, ignore_serialize: pii.nil? && !pii_present?)]
    property pii : PiiTokenSpecs?

    @[JSON::Field(ignore: true)]
    property? pii_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @account : ConnectJsAccountTokenSpecs? = nil,
      @bank_account : TokenCreateBankAccount? = nil,
      @card : PostTokensRequestCard? = nil,
      @customer : String? = nil,
      @cvc_update : CvcParams? = nil,
      @expand : Array(String)? = nil,
      @person : PersonTokenSpecs? = nil,
      @pii : PiiTokenSpecs? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@customer.nil? && @customer.to_s.size > 5000
        invalid_properties.push("invalid value for \"customer\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@customer.nil? && @customer.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] customer Value to be assigned
    def customer=(customer : String?)
      if !customer.nil? && customer.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"customer\", the character length must be smaller than or equal to 5000.")
      end

      @customer = customer
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
    def_equals_and_hash(@account, @account_present, @bank_account, @bank_account_present, @card, @card_present2, @customer, @customer_present, @cvc_update, @cvc_update_present, @expand, @expand_present, @person, @person_present, @pii, @pii_present)
  end
end
