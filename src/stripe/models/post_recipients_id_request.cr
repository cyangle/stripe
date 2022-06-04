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
  class PostRecipientsIdRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped


    # Optional properties

    # A bank account to attach to the recipient. You can provide either a token, like the ones returned by [Stripe.js](https://stripe.com/docs/js), or a dictionary containing a user's bank account details, with the options described below.
    @[JSON::Field(key: "bank_account", type: String?, presence: true, ignore_serialize: bank_account.nil? && !bank_account_present?)]
    getter bank_account : String?

    @[JSON::Field(ignore: true)]
    property? bank_account_present : Bool = false

    # A U.S. Visa or MasterCard debit card (not prepaid) to attach to the recipient. You can provide either a token, like the ones returned by [Stripe.js](https://stripe.com/docs/js), or a dictionary containing a user's debit card details, with the options described below. Passing `card` will create a new card, make it the new recipient default card, and delete the old recipient default (if one exists). If you want to add additional debit cards instead of replacing the existing default, use the [card creation API](https://stripe.com/docs/api#create_card). Whenever you attach a card to a recipient, Stripe will automatically validate the debit card.
    @[JSON::Field(key: "card", type: String?, presence: true, ignore_serialize: card.nil? && !card_present?)]
    getter card : String?

    @[JSON::Field(ignore: true)]
    property? card_present : Bool = false

    # ID of the card to set as the recipient's new default for payouts.
    @[JSON::Field(key: "default_card", type: String?, presence: true, ignore_serialize: default_card.nil? && !default_card_present?)]
    getter default_card : String?

    @[JSON::Field(ignore: true)]
    property? default_card_present : Bool = false

    # An arbitrary string which you can attach to a `Recipient` object. It is displayed alongside the recipient in the web interface.
    @[JSON::Field(key: "description", type: String?, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String?

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    # The recipient's email address. It is displayed alongside the recipient in the web interface, and can be useful for searching and tracking.
    @[JSON::Field(key: "email", type: String?, presence: true, ignore_serialize: email.nil? && !email_present?)]
    getter email : String?

    @[JSON::Field(ignore: true)]
    property? email_present : Bool = false

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, presence: true, ignore_serialize: expand.nil? && !expand_present?)]
    property expand : Array(String)?

    @[JSON::Field(ignore: true)]
    property? expand_present : Bool = false

    @[JSON::Field(key: "metadata", type: PostAccountRequestMetadata?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : PostAccountRequestMetadata?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    # The recipient's full, legal name. For type `individual`, should be in the format `First Last`, `First Middle Last`, or `First M Last` (no prefixes or suffixes). For `corporation`, the full, incorporated name.
    @[JSON::Field(key: "name", type: String?, presence: true, ignore_serialize: name.nil? && !name_present?)]
    getter name : String?

    @[JSON::Field(ignore: true)]
    property? name_present : Bool = false

    # The recipient's tax ID, as a string. For type `individual`, the full SSN; for type `corporation`, the full EIN.
    @[JSON::Field(key: "tax_id", type: String?, presence: true, ignore_serialize: tax_id.nil? && !tax_id_present?)]
    getter tax_id : String?

    @[JSON::Field(ignore: true)]
    property? tax_id_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Optional properties
      @bank_account : String? = nil, 
      @card : String? = nil, 
      @default_card : String? = nil, 
      @description : String? = nil, 
      @email : String? = nil, 
      @expand : Array(String)? = nil, 
      @metadata : PostAccountRequestMetadata? = nil, 
      @name : String? = nil, 
      @tax_id : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@bank_account.nil? && @bank_account.to_s.size > 5000
        invalid_properties.push("invalid value for \"bank_account\", the character length must be smaller than or equal to 5000.")
      end

      if !@card.nil? && @card.to_s.size > 5000
        invalid_properties.push("invalid value for \"card\", the character length must be smaller than or equal to 5000.")
      end

      if !@default_card.nil? && @default_card.to_s.size > 5000
        invalid_properties.push("invalid value for \"default_card\", the character length must be smaller than or equal to 5000.")
      end

      if !@description.nil? && @description.to_s.size > 5000
        invalid_properties.push("invalid value for \"description\", the character length must be smaller than or equal to 5000.")
      end

      if !@email.nil? && @email.to_s.size > 5000
        invalid_properties.push("invalid value for \"email\", the character length must be smaller than or equal to 5000.")
      end

      if !@name.nil? && @name.to_s.size > 5000
        invalid_properties.push("invalid value for \"name\", the character length must be smaller than or equal to 5000.")
      end

      if !@tax_id.nil? && @tax_id.to_s.size > 5000
        invalid_properties.push("invalid value for \"tax_id\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@bank_account.nil? && @bank_account.to_s.size > 5000
      return false if !@card.nil? && @card.to_s.size > 5000
      return false if !@default_card.nil? && @default_card.to_s.size > 5000
      return false if !@description.nil? && @description.to_s.size > 5000
      return false if !@email.nil? && @email.to_s.size > 5000
      return false if !@name.nil? && @name.to_s.size > 5000
      return false if !@tax_id.nil? && @tax_id.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] bank_account Value to be assigned
    def bank_account=(bank_account)
      if !bank_account.nil? && bank_account.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"bank_account\", the character length must be smaller than or equal to 5000.")
      end

      @bank_account = bank_account
    end

    # Custom attribute writer method with validation
    # @param [Object] card Value to be assigned
    def card=(card)
      if !card.nil? && card.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"card\", the character length must be smaller than or equal to 5000.")
      end

      @card = card
    end

    # Custom attribute writer method with validation
    # @param [Object] default_card Value to be assigned
    def default_card=(default_card)
      if !default_card.nil? && default_card.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"default_card\", the character length must be smaller than or equal to 5000.")
      end

      @default_card = default_card
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"description\", the character length must be smaller than or equal to 5000.")
      end

      @description = description
    end

    # Custom attribute writer method with validation
    # @param [Object] email Value to be assigned
    def email=(email)
      if !email.nil? && email.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"email\", the character length must be smaller than or equal to 5000.")
      end

      @email = email
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if !name.nil? && name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"name\", the character length must be smaller than or equal to 5000.")
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] tax_id Value to be assigned
    def tax_id=(tax_id)
      if !tax_id.nil? && tax_id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"tax_id\", the character length must be smaller than or equal to 5000.")
      end

      @tax_id = tax_id
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
    def_equals_and_hash(@bank_account, @card, @default_card, @description, @email, @expand, @metadata, @name, @tax_id)
  end
end
