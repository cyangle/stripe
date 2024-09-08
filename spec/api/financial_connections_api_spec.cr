#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"
require "../../src/stripe/api/financial_connections_api"

# Unit tests for Stripe::FinancialConnectionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "FinancialConnectionsApi" do
  describe "test an instance of FinancialConnectionsApi" do
    it "should create an instance of FinancialConnectionsApi" do
      api_instance = Stripe::FinancialConnectionsApi.new
      api_instance.should be_a(Stripe::FinancialConnectionsApi)
    end
  end

  # unit tests for get_financial_connections_accounts
  # &lt;p&gt;Returns a list of Financial Connections &lt;code&gt;Account&lt;/code&gt; objects.&lt;/p&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ending_before A cursor for use in pagination. &#x60;ending_before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with &#x60;obj_bar&#x60;, your subsequent call can include &#x60;ending_before&#x3D;obj_bar&#x60; in order to fetch the previous page of the list.
  # @option opts [String] :starting_after A cursor for use in pagination. &#x60;starting_after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with &#x60;obj_foo&#x60;, your subsequent call can include &#x60;starting_after&#x3D;obj_foo&#x60; in order to fetch the next page of the list.
  # @option opts [Int32] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  # @option opts [AccountholderParams] :account_holder If present, only return accounts that belong to the specified account holder. &#x60;account_holder[customer]&#x60; and &#x60;account_holder[account]&#x60; are mutually exclusive.
  # @option opts [String] :session If present, only return accounts that were collected as part of the given session.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [BankConnectionsResourceLinkedAccountList]
  describe "get_financial_connections_accounts test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_financial_connections_accounts_account
  # &lt;p&gt;Retrieves the details of an Financial Connections &lt;code&gt;Account&lt;/code&gt;.&lt;/p&gt;
  # @param account
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [FinancialConnectionsAccount]
  describe "get_financial_connections_accounts_account test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_financial_connections_sessions_session
  # &lt;p&gt;Retrieves the details of a Financial Connections &lt;code&gt;Session&lt;/code&gt;&lt;/p&gt;
  # @param session
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [FinancialConnectionsSession]
  describe "get_financial_connections_sessions_session test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_financial_connections_transactions
  # &lt;p&gt;Returns a list of Financial Connections &lt;code&gt;Transaction&lt;/code&gt; objects.&lt;/p&gt;
  # @param account The ID of the Stripe account whose transactions will be retrieved.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ending_before A cursor for use in pagination. &#x60;ending_before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with &#x60;obj_bar&#x60;, your subsequent call can include &#x60;ending_before&#x3D;obj_bar&#x60; in order to fetch the previous page of the list.
  # @option opts [String] :starting_after A cursor for use in pagination. &#x60;starting_after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with &#x60;obj_foo&#x60;, your subsequent call can include &#x60;starting_after&#x3D;obj_foo&#x60; in order to fetch the next page of the list.
  # @option opts [GetAccountsCreatedParameter] :transacted_at A filter on the list based on the object &#x60;transacted_at&#x60; field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with the following options:
  # @option opts [TransactionRefreshParams] :transaction_refresh A filter on the list based on the object &#x60;transaction_refresh&#x60; field. The value can be a dictionary with the following options:
  # @option opts [Int32] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [BankConnectionsResourceTransactionList]
  describe "get_financial_connections_transactions test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_financial_connections_transactions_transaction
  # &lt;p&gt;Retrieves the details of a Financial Connections &lt;code&gt;Transaction&lt;/code&gt;&lt;/p&gt;
  # @param transaction
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [FinancialConnectionsTransaction]
  describe "get_financial_connections_transactions_transaction test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_financial_connections_accounts_account_disconnect
  # &lt;p&gt;Disables your access to a Financial Connections &lt;code&gt;Account&lt;/code&gt;. You will no longer be able to access data associated with the account (e.g. balances, transactions).&lt;/p&gt;
  # @param account
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [FinancialConnectionsAccount]
  describe "post_financial_connections_accounts_account_disconnect test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_financial_connections_accounts_account_refresh
  # &lt;p&gt;Refreshes the data associated with a Financial Connections &lt;code&gt;Account&lt;/code&gt;.&lt;/p&gt;
  # @param account
  # @param features The list of account features that you would like to refresh.
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [FinancialConnectionsAccount]
  describe "post_financial_connections_accounts_account_refresh test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_financial_connections_accounts_account_subscribe
  # &lt;p&gt;Subscribes to periodic refreshes of data associated with a Financial Connections &lt;code&gt;Account&lt;/code&gt;.&lt;/p&gt;
  # @param account
  # @param features The list of account features to which you would like to subscribe.
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [FinancialConnectionsAccount]
  describe "post_financial_connections_accounts_account_subscribe test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_financial_connections_accounts_account_unsubscribe
  # &lt;p&gt;Unsubscribes from periodic refreshes of data associated with a Financial Connections &lt;code&gt;Account&lt;/code&gt;.&lt;/p&gt;
  # @param account
  # @param features The list of account features from which you would like to unsubscribe.
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [FinancialConnectionsAccount]
  describe "post_financial_connections_accounts_account_unsubscribe test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_financial_connections_sessions
  # &lt;p&gt;To launch the Financial Connections authorization flow, create a &lt;code&gt;Session&lt;/code&gt;. The session’s &lt;code&gt;client_secret&lt;/code&gt; can be used to launch the flow using Stripe.js.&lt;/p&gt;
  # @param account_holder
  # @param permissions List of data features that you would like to request access to.  Possible values are &#x60;balances&#x60;, &#x60;transactions&#x60;, &#x60;ownership&#x60;, and &#x60;payment_method&#x60;.
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [FiltersParams] :filters
  # @option opts [Array(String)] :prefetch List of data features that you would like to retrieve upon account creation.
  # @option opts [String] :return_url For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
  # @return [FinancialConnectionsSession]
  describe "post_financial_connections_sessions test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
