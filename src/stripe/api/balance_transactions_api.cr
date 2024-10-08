#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "../models/balance_transaction"
require "../models/balance_transactions_list"
require "../models/error"
require "../models/get_accounts_created_parameter"

module Stripe
  class BalanceTransactionsApi
    property api_client : ApiClient

    delegate client_side_validation?, debugging?, to: @api_client.config

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # <p>Returns a list of transactions that have contributed to the Stripe account balance (e.g., charges, transfers, and so forth). The transactions are returned in sorted order, with the most recent transactions appearing first.</p>  <p>Note that this endpoint was previously called “Balance history” and used the path <code>/v1/balance/history</code>.</p>
    # @optional @param ending_before [String?] A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
    # @optional @param starting_after [String?] A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
    # @optional @param limit [Int32?] A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    # @optional @param payout [String?] For automatic Stripe payouts only, only returns transactions that were paid out on the specified payout ID.
    # @optional @param currency [String?] Only return transactions in a certain currency. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    # @optional @param created [Stripe::GetAccountsCreatedParameter?] Only return transactions that were created during the given date interval.
    # @optional @param source [String?] Only returns the original transaction.
    # @optional @param _type [String?] Only returns transactions of the given type. One of: `adjustment`, `advance`, `advance_funding`, `anticipation_repayment`, `application_fee`, `application_fee_refund`, `charge`, `climate_order_purchase`, `climate_order_refund`, `connect_collection_transfer`, `contribution`, `issuing_authorization_hold`, `issuing_authorization_release`, `issuing_dispute`, `issuing_transaction`, `obligation_outbound`, `obligation_reversal_inbound`, `payment`, `payment_failure_refund`, `payment_network_reserve_hold`, `payment_network_reserve_release`, `payment_refund`, `payment_reversal`, `payment_unreconciled`, `payout`, `payout_cancel`, `payout_failure`, `refund`, `refund_failure`, `reserve_transaction`, `reserved_funds`, `stripe_fee`, `stripe_fx_fee`, `tax_fee`, `topup`, `topup_reversal`, `transfer`, `transfer_cancel`, `transfer_failure`, or `transfer_refund`.
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Stripe::BalanceTransactionsList]
    def get_balance_transactions(
      *,
      ending_before : String? = nil,
      starting_after : String? = nil,
      limit : Int64? = nil,
      payout : String? = nil,
      currency : String? = nil,
      created : Stripe::GetAccountsCreatedParameter? = nil,
      source : String? = nil,
      _type : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Stripe::BalanceTransactionsList
      data, _status_code, _headers = get_balance_transactions_with_http_info(ending_before: ending_before, starting_after: starting_after, limit: limit, payout: payout, currency: currency, created: created, source: source, _type: _type, expand: expand)
      data
    end

    # &lt;p&gt;Returns a list of transactions that have contributed to the Stripe account balance (e.g., charges, transfers, and so forth). The transactions are returned in sorted order, with the most recent transactions appearing first.&lt;/p&gt;  &lt;p&gt;Note that this endpoint was previously called “Balance history” and used the path &lt;code&gt;/v1/balance/history&lt;/code&gt;.&lt;/p&gt;
    # @optional @param ending_before [String?] A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
    # @optional @param starting_after [String?] A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
    # @optional @param limit [Int32?] A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    # @optional @param payout [String?] For automatic Stripe payouts only, only returns transactions that were paid out on the specified payout ID.
    # @optional @param currency [String?] Only return transactions in a certain currency. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    # @optional @param created [Stripe::GetAccountsCreatedParameter?] Only return transactions that were created during the given date interval.
    # @optional @param source [String?] Only returns the original transaction.
    # @optional @param _type [String?] Only returns transactions of the given type. One of: `adjustment`, `advance`, `advance_funding`, `anticipation_repayment`, `application_fee`, `application_fee_refund`, `charge`, `climate_order_purchase`, `climate_order_refund`, `connect_collection_transfer`, `contribution`, `issuing_authorization_hold`, `issuing_authorization_release`, `issuing_dispute`, `issuing_transaction`, `obligation_outbound`, `obligation_reversal_inbound`, `payment`, `payment_failure_refund`, `payment_network_reserve_hold`, `payment_network_reserve_release`, `payment_refund`, `payment_reversal`, `payment_unreconciled`, `payout`, `payout_cancel`, `payout_failure`, `refund`, `refund_failure`, `reserve_transaction`, `reserved_funds`, `stripe_fee`, `stripe_fx_fee`, `tax_fee`, `topup`, `topup_reversal`, `transfer`, `transfer_cancel`, `transfer_failure`, or `transfer_refund`.
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Tuple(Stripe::BalanceTransactionsList, Integer, Hash)] Stripe::BalanceTransactionsList, response status code and response headers
    def get_balance_transactions_with_http_info(
      *,
      ending_before : String? = nil,
      starting_after : String? = nil,
      limit : Int64? = nil,
      payout : String? = nil,
      currency : String? = nil,
      created : Stripe::GetAccountsCreatedParameter? = nil,
      source : String? = nil,
      _type : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Tuple(Stripe::BalanceTransactionsList, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_get_balance_transactions(ending_before: ending_before, starting_after: starting_after, limit: limit, payout: payout, currency: currency, created: created, source: source, _type: _type, expand: expand)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging?
        Log.debug { "API called: BalanceTransactionsApi#get_balance_transactions\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::BalanceTransactionsList.from_json(body), status_code, headers)
    end

    # &lt;p&gt;Returns a list of transactions that have contributed to the Stripe account balance (e.g., charges, transfers, and so forth). The transactions are returned in sorted order, with the most recent transactions appearing first.&lt;/p&gt;  &lt;p&gt;Note that this endpoint was previously called “Balance history” and used the path &lt;code&gt;/v1/balance/history&lt;/code&gt;.&lt;/p&gt;
    # @optional @param ending_before [String?] A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
    # @optional @param starting_after [String?] A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
    # @optional @param limit [Int32?] A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    # @optional @param payout [String?] For automatic Stripe payouts only, only returns transactions that were paid out on the specified payout ID.
    # @optional @param currency [String?] Only return transactions in a certain currency. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    # @optional @param created [Stripe::GetAccountsCreatedParameter?] Only return transactions that were created during the given date interval.
    # @optional @param source [String?] Only returns the original transaction.
    # @optional @param _type [String?] Only returns transactions of the given type. One of: `adjustment`, `advance`, `advance_funding`, `anticipation_repayment`, `application_fee`, `application_fee_refund`, `charge`, `climate_order_purchase`, `climate_order_refund`, `connect_collection_transfer`, `contribution`, `issuing_authorization_hold`, `issuing_authorization_release`, `issuing_dispute`, `issuing_transaction`, `obligation_outbound`, `obligation_reversal_inbound`, `payment`, `payment_failure_refund`, `payment_network_reserve_hold`, `payment_network_reserve_release`, `payment_refund`, `payment_reversal`, `payment_unreconciled`, `payout`, `payout_cancel`, `payout_failure`, `refund`, `refund_failure`, `reserve_transaction`, `reserved_funds`, `stripe_fee`, `stripe_fx_fee`, `tax_fee`, `topup`, `topup_reversal`, `transfer`, `transfer_cancel`, `transfer_failure`, or `transfer_refund`.
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return nil
    def get_balance_transactions(
      *,
      ending_before : String? = nil,
      starting_after : String? = nil,
      limit : Int64? = nil,
      payout : String? = nil,
      currency : String? = nil,
      created : Stripe::GetAccountsCreatedParameter? = nil,
      source : String? = nil,
      _type : String? = nil,
      expand : Array(Array(String))? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_get_balance_transactions(ending_before: ending_before, starting_after: starting_after, limit: limit, payout: payout, currency: currency, created: created, source: source, _type: _type, expand: expand).execute(&block)
    end

    GET_BALANCE_TRANSACTIONS_MAX_LENGTH_FOR_ENDING_BEFORE  = 5000
    GET_BALANCE_TRANSACTIONS_MAX_LENGTH_FOR_STARTING_AFTER = 5000
    GET_BALANCE_TRANSACTIONS_MAX_LENGTH_FOR_PAYOUT         = 5000
    GET_BALANCE_TRANSACTIONS_MAX_LENGTH_FOR_SOURCE         = 5000
    GET_BALANCE_TRANSACTIONS_MAX_LENGTH_FOR__TYPE          = 5000

    # @return Crest::Request
    def build_api_request_for_get_balance_transactions(
      *,
      ending_before : String? = nil,
      starting_after : String? = nil,
      limit : Int64? = nil,
      payout : String? = nil,
      currency : String? = nil,
      created : Stripe::GetAccountsCreatedParameter? = nil,
      source : String? = nil,
      _type : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Crest::Request
      if debugging?
        Log.debug { "Calling API: BalanceTransactionsApi.get_balance_transactions ..." }
      end

      if client_side_validation?
        unless (_ending_before = ending_before).nil?
          OpenApi::PrimitiveValidator.validate_max_length("ending_before", ending_before.to_s.size, GET_BALANCE_TRANSACTIONS_MAX_LENGTH_FOR_ENDING_BEFORE)
        end
        unless (_starting_after = starting_after).nil?
          OpenApi::PrimitiveValidator.validate_max_length("starting_after", starting_after.to_s.size, GET_BALANCE_TRANSACTIONS_MAX_LENGTH_FOR_STARTING_AFTER)
        end

        unless (_payout = payout).nil?
          OpenApi::PrimitiveValidator.validate_max_length("payout", payout.to_s.size, GET_BALANCE_TRANSACTIONS_MAX_LENGTH_FOR_PAYOUT)
        end

        unless (_created = created).nil?
          _created.validate if _created.is_a?(OpenApi::Validatable)
        end
        unless (_source = source).nil?
          OpenApi::PrimitiveValidator.validate_max_length("source", source.to_s.size, GET_BALANCE_TRANSACTIONS_MAX_LENGTH_FOR_SOURCE)
        end
        unless (__type = _type).nil?
          OpenApi::PrimitiveValidator.validate_max_length("_type", _type.to_s.size, GET_BALANCE_TRANSACTIONS_MAX_LENGTH_FOR__TYPE)
        end
      end

      # resource path
      local_var_path = "/v1/balance_transactions"

      # header parameters
      header_params : Hash(String, String) = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # cookie parameters
      cookie_params : Hash(String, String) = Hash(String, String).new

      # query parameters
      query_params : Hash(String, (String | Array(String) | JSON::Any)) = Hash(String, (String | Array(String) | JSON::Any)).new
      query_params["ending_before"] = ending_before.to_s if !ending_before.nil?
      query_params["starting_after"] = starting_after.to_s if !starting_after.nil?
      query_params["limit"] = limit.to_s if !limit.nil?
      query_params["payout"] = payout.to_s if !payout.nil?
      query_params["currency"] = currency.to_s if !currency.nil?
      query_params["created"] = created.to_s if !created.nil?
      query_params["source"] = source.to_s if !source.nil?
      query_params["type"] = _type.to_s if !_type.nil?
      query_params["expand"] = @api_client.build_collection_param(expand, "csv") if !expand.nil? && !expand.empty?

      # form parameters
      form_params : Array(Tuple(String, Crest::ParamsValue)) | Nil = nil

      # http body (model)
      post_body : IO | String | Nil = nil

      # auth_names
      auth_names = ["basicAuth", "bearerAuth"]

      @api_client.build_api_request(
        http_method: :"GET",
        path: local_var_path,
        operation: "BalanceTransactionsApi.get_balance_transactions",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # <p>Retrieves the balance transaction with the given ID.</p>  <p>Note that this endpoint previously used the path <code>/v1/balance/history/:id</code>.</p>
    # @required @param id [String?]
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Stripe::BalanceTransaction]
    def get_balance_transactions_id(
      *,
      id : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Stripe::BalanceTransaction
      data, _status_code, _headers = get_balance_transactions_id_with_http_info(id: id, expand: expand)
      data
    end

    # &lt;p&gt;Retrieves the balance transaction with the given ID.&lt;/p&gt;  &lt;p&gt;Note that this endpoint previously used the path &lt;code&gt;/v1/balance/history/:id&lt;/code&gt;.&lt;/p&gt;
    # @required @param id [String?]
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Tuple(Stripe::BalanceTransaction, Integer, Hash)] Stripe::BalanceTransaction, response status code and response headers
    def get_balance_transactions_id_with_http_info(
      *,
      id : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Tuple(Stripe::BalanceTransaction, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_get_balance_transactions_id(id: id, expand: expand)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging?
        Log.debug { "API called: BalanceTransactionsApi#get_balance_transactions_id\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::BalanceTransaction.from_json(body), status_code, headers)
    end

    # &lt;p&gt;Retrieves the balance transaction with the given ID.&lt;/p&gt;  &lt;p&gt;Note that this endpoint previously used the path &lt;code&gt;/v1/balance/history/:id&lt;/code&gt;.&lt;/p&gt;
    # @required @param id [String?]
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return nil
    def get_balance_transactions_id(
      *,
      id : String? = nil,
      expand : Array(Array(String))? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_get_balance_transactions_id(id: id, expand: expand).execute(&block)
    end

    GET_BALANCE_TRANSACTIONS_ID_MAX_LENGTH_FOR_ID = 5000

    # @return Crest::Request
    def build_api_request_for_get_balance_transactions_id(
      *,
      id : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Crest::Request
      if debugging?
        Log.debug { "Calling API: BalanceTransactionsApi.get_balance_transactions_id ..." }
      end

      if client_side_validation?
        raise ArgumentError.new("\"id\" is required and cannot be null") if id.nil?
        unless (_id = id).nil?
          OpenApi::PrimitiveValidator.validate_max_length("id", id.to_s.size, GET_BALANCE_TRANSACTIONS_ID_MAX_LENGTH_FOR_ID)
        end
      end

      # resource path
      local_var_path = "/v1/balance_transactions/{id}".sub("{" + "id" + "}", URI.encode_path(id.to_s))

      # header parameters
      header_params : Hash(String, String) = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # cookie parameters
      cookie_params : Hash(String, String) = Hash(String, String).new

      # query parameters
      query_params : Hash(String, (String | Array(String) | JSON::Any)) = Hash(String, (String | Array(String) | JSON::Any)).new
      query_params["expand"] = @api_client.build_collection_param(expand, "csv") if !expand.nil? && !expand.empty?

      # form parameters
      form_params : Array(Tuple(String, Crest::ParamsValue)) | Nil = nil

      # http body (model)
      post_body : IO | String | Nil = nil

      # auth_names
      auth_names = ["basicAuth", "bearerAuth"]

      @api_client.build_api_request(
        http_method: :"GET",
        path: local_var_path,
        operation: "BalanceTransactionsApi.get_balance_transactions_id",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end
  end
end
