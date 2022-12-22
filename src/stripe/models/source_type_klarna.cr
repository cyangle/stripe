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
  class SourceTypeKlarna
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "background_image_url", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter background_image_url : String? = nil

    @[JSON::Field(key: "client_token", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: client_token.nil? && !client_token_present?)]
    getter client_token : String? = nil

    @[JSON::Field(ignore: true)]
    property? client_token_present : Bool = false

    @[JSON::Field(key: "first_name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter first_name : String? = nil

    @[JSON::Field(key: "last_name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter last_name : String? = nil

    @[JSON::Field(key: "locale", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter locale : String? = nil

    @[JSON::Field(key: "logo_url", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter logo_url : String? = nil

    @[JSON::Field(key: "page_title", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter page_title : String? = nil

    @[JSON::Field(key: "pay_later_asset_urls_descriptive", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter pay_later_asset_urls_descriptive : String? = nil

    @[JSON::Field(key: "pay_later_asset_urls_standard", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter pay_later_asset_urls_standard : String? = nil

    @[JSON::Field(key: "pay_later_name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter pay_later_name : String? = nil

    @[JSON::Field(key: "pay_later_redirect_url", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter pay_later_redirect_url : String? = nil

    @[JSON::Field(key: "pay_now_asset_urls_descriptive", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter pay_now_asset_urls_descriptive : String? = nil

    @[JSON::Field(key: "pay_now_asset_urls_standard", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter pay_now_asset_urls_standard : String? = nil

    @[JSON::Field(key: "pay_now_name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter pay_now_name : String? = nil

    @[JSON::Field(key: "pay_now_redirect_url", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter pay_now_redirect_url : String? = nil

    @[JSON::Field(key: "pay_over_time_asset_urls_descriptive", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter pay_over_time_asset_urls_descriptive : String? = nil

    @[JSON::Field(key: "pay_over_time_asset_urls_standard", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter pay_over_time_asset_urls_standard : String? = nil

    @[JSON::Field(key: "pay_over_time_name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter pay_over_time_name : String? = nil

    @[JSON::Field(key: "pay_over_time_redirect_url", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter pay_over_time_redirect_url : String? = nil

    @[JSON::Field(key: "payment_method_categories", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_method_categories : String? = nil

    @[JSON::Field(key: "purchase_country", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter purchase_country : String? = nil

    @[JSON::Field(key: "purchase_type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter purchase_type : String? = nil

    @[JSON::Field(key: "redirect_url", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter redirect_url : String? = nil

    @[JSON::Field(key: "shipping_delay", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter shipping_delay : Int64? = nil

    @[JSON::Field(key: "shipping_first_name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter shipping_first_name : String? = nil

    @[JSON::Field(key: "shipping_last_name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter shipping_last_name : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @background_image_url : String? = nil,
      @client_token : String? = nil,
      @first_name : String? = nil,
      @last_name : String? = nil,
      @locale : String? = nil,
      @logo_url : String? = nil,
      @page_title : String? = nil,
      @pay_later_asset_urls_descriptive : String? = nil,
      @pay_later_asset_urls_standard : String? = nil,
      @pay_later_name : String? = nil,
      @pay_later_redirect_url : String? = nil,
      @pay_now_asset_urls_descriptive : String? = nil,
      @pay_now_asset_urls_standard : String? = nil,
      @pay_now_name : String? = nil,
      @pay_now_redirect_url : String? = nil,
      @pay_over_time_asset_urls_descriptive : String? = nil,
      @pay_over_time_asset_urls_standard : String? = nil,
      @pay_over_time_name : String? = nil,
      @pay_over_time_redirect_url : String? = nil,
      @payment_method_categories : String? = nil,
      @purchase_country : String? = nil,
      @purchase_type : String? = nil,
      @redirect_url : String? = nil,
      @shipping_delay : Int64? = nil,
      @shipping_first_name : String? = nil,
      @shipping_last_name : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] background_image_url Object to be assigned
    def background_image_url=(background_image_url : String?)
      if background_image_url.nil?
        return @background_image_url = nil
      end
      _background_image_url = background_image_url.not_nil!
      @background_image_url = _background_image_url
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] client_token Object to be assigned
    def client_token=(client_token : String?)
      if client_token.nil?
        return @client_token = nil
      end
      _client_token = client_token.not_nil!
      @client_token = _client_token
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] first_name Object to be assigned
    def first_name=(first_name : String?)
      if first_name.nil?
        return @first_name = nil
      end
      _first_name = first_name.not_nil!
      @first_name = _first_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last_name Object to be assigned
    def last_name=(last_name : String?)
      if last_name.nil?
        return @last_name = nil
      end
      _last_name = last_name.not_nil!
      @last_name = _last_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] locale Object to be assigned
    def locale=(locale : String?)
      if locale.nil?
        return @locale = nil
      end
      _locale = locale.not_nil!
      @locale = _locale
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] logo_url Object to be assigned
    def logo_url=(logo_url : String?)
      if logo_url.nil?
        return @logo_url = nil
      end
      _logo_url = logo_url.not_nil!
      @logo_url = _logo_url
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] page_title Object to be assigned
    def page_title=(page_title : String?)
      if page_title.nil?
        return @page_title = nil
      end
      _page_title = page_title.not_nil!
      @page_title = _page_title
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pay_later_asset_urls_descriptive Object to be assigned
    def pay_later_asset_urls_descriptive=(pay_later_asset_urls_descriptive : String?)
      if pay_later_asset_urls_descriptive.nil?
        return @pay_later_asset_urls_descriptive = nil
      end
      _pay_later_asset_urls_descriptive = pay_later_asset_urls_descriptive.not_nil!
      @pay_later_asset_urls_descriptive = _pay_later_asset_urls_descriptive
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pay_later_asset_urls_standard Object to be assigned
    def pay_later_asset_urls_standard=(pay_later_asset_urls_standard : String?)
      if pay_later_asset_urls_standard.nil?
        return @pay_later_asset_urls_standard = nil
      end
      _pay_later_asset_urls_standard = pay_later_asset_urls_standard.not_nil!
      @pay_later_asset_urls_standard = _pay_later_asset_urls_standard
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pay_later_name Object to be assigned
    def pay_later_name=(pay_later_name : String?)
      if pay_later_name.nil?
        return @pay_later_name = nil
      end
      _pay_later_name = pay_later_name.not_nil!
      @pay_later_name = _pay_later_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pay_later_redirect_url Object to be assigned
    def pay_later_redirect_url=(pay_later_redirect_url : String?)
      if pay_later_redirect_url.nil?
        return @pay_later_redirect_url = nil
      end
      _pay_later_redirect_url = pay_later_redirect_url.not_nil!
      @pay_later_redirect_url = _pay_later_redirect_url
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pay_now_asset_urls_descriptive Object to be assigned
    def pay_now_asset_urls_descriptive=(pay_now_asset_urls_descriptive : String?)
      if pay_now_asset_urls_descriptive.nil?
        return @pay_now_asset_urls_descriptive = nil
      end
      _pay_now_asset_urls_descriptive = pay_now_asset_urls_descriptive.not_nil!
      @pay_now_asset_urls_descriptive = _pay_now_asset_urls_descriptive
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pay_now_asset_urls_standard Object to be assigned
    def pay_now_asset_urls_standard=(pay_now_asset_urls_standard : String?)
      if pay_now_asset_urls_standard.nil?
        return @pay_now_asset_urls_standard = nil
      end
      _pay_now_asset_urls_standard = pay_now_asset_urls_standard.not_nil!
      @pay_now_asset_urls_standard = _pay_now_asset_urls_standard
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pay_now_name Object to be assigned
    def pay_now_name=(pay_now_name : String?)
      if pay_now_name.nil?
        return @pay_now_name = nil
      end
      _pay_now_name = pay_now_name.not_nil!
      @pay_now_name = _pay_now_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pay_now_redirect_url Object to be assigned
    def pay_now_redirect_url=(pay_now_redirect_url : String?)
      if pay_now_redirect_url.nil?
        return @pay_now_redirect_url = nil
      end
      _pay_now_redirect_url = pay_now_redirect_url.not_nil!
      @pay_now_redirect_url = _pay_now_redirect_url
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pay_over_time_asset_urls_descriptive Object to be assigned
    def pay_over_time_asset_urls_descriptive=(pay_over_time_asset_urls_descriptive : String?)
      if pay_over_time_asset_urls_descriptive.nil?
        return @pay_over_time_asset_urls_descriptive = nil
      end
      _pay_over_time_asset_urls_descriptive = pay_over_time_asset_urls_descriptive.not_nil!
      @pay_over_time_asset_urls_descriptive = _pay_over_time_asset_urls_descriptive
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pay_over_time_asset_urls_standard Object to be assigned
    def pay_over_time_asset_urls_standard=(pay_over_time_asset_urls_standard : String?)
      if pay_over_time_asset_urls_standard.nil?
        return @pay_over_time_asset_urls_standard = nil
      end
      _pay_over_time_asset_urls_standard = pay_over_time_asset_urls_standard.not_nil!
      @pay_over_time_asset_urls_standard = _pay_over_time_asset_urls_standard
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pay_over_time_name Object to be assigned
    def pay_over_time_name=(pay_over_time_name : String?)
      if pay_over_time_name.nil?
        return @pay_over_time_name = nil
      end
      _pay_over_time_name = pay_over_time_name.not_nil!
      @pay_over_time_name = _pay_over_time_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pay_over_time_redirect_url Object to be assigned
    def pay_over_time_redirect_url=(pay_over_time_redirect_url : String?)
      if pay_over_time_redirect_url.nil?
        return @pay_over_time_redirect_url = nil
      end
      _pay_over_time_redirect_url = pay_over_time_redirect_url.not_nil!
      @pay_over_time_redirect_url = _pay_over_time_redirect_url
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method_categories Object to be assigned
    def payment_method_categories=(payment_method_categories : String?)
      if payment_method_categories.nil?
        return @payment_method_categories = nil
      end
      _payment_method_categories = payment_method_categories.not_nil!
      @payment_method_categories = _payment_method_categories
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] purchase_country Object to be assigned
    def purchase_country=(purchase_country : String?)
      if purchase_country.nil?
        return @purchase_country = nil
      end
      _purchase_country = purchase_country.not_nil!
      @purchase_country = _purchase_country
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] purchase_type Object to be assigned
    def purchase_type=(purchase_type : String?)
      if purchase_type.nil?
        return @purchase_type = nil
      end
      _purchase_type = purchase_type.not_nil!
      @purchase_type = _purchase_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] redirect_url Object to be assigned
    def redirect_url=(redirect_url : String?)
      if redirect_url.nil?
        return @redirect_url = nil
      end
      _redirect_url = redirect_url.not_nil!
      @redirect_url = _redirect_url
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping_delay Object to be assigned
    def shipping_delay=(shipping_delay : Int64?)
      if shipping_delay.nil?
        return @shipping_delay = nil
      end
      _shipping_delay = shipping_delay.not_nil!
      @shipping_delay = _shipping_delay
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping_first_name Object to be assigned
    def shipping_first_name=(shipping_first_name : String?)
      if shipping_first_name.nil?
        return @shipping_first_name = nil
      end
      _shipping_first_name = shipping_first_name.not_nil!
      @shipping_first_name = _shipping_first_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping_last_name Object to be assigned
    def shipping_last_name=(shipping_last_name : String?)
      if shipping_last_name.nil?
        return @shipping_last_name = nil
      end
      _shipping_last_name = shipping_last_name.not_nil!
      @shipping_last_name = _shipping_last_name
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@background_image_url, @client_token, @client_token_present, @first_name, @last_name, @locale, @logo_url, @page_title, @pay_later_asset_urls_descriptive, @pay_later_asset_urls_standard, @pay_later_name, @pay_later_redirect_url, @pay_now_asset_urls_descriptive, @pay_now_asset_urls_standard, @pay_now_name, @pay_now_redirect_url, @pay_over_time_asset_urls_descriptive, @pay_over_time_asset_urls_standard, @pay_over_time_name, @pay_over_time_redirect_url, @payment_method_categories, @purchase_country, @purchase_type, @redirect_url, @shipping_delay, @shipping_first_name, @shipping_last_name)
  end
end
