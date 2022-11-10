=begin
#CityPay Payment API

# This CityPay API is a HTTP RESTful payment API used for direct server to server transactional processing. It provides a number of payment mechanisms including: Internet, MOTO, Continuous Authority transaction processing, 3-D Secure decision handling using RFA Secure, Authorisation, Refunding, Pre-Authorisation, Cancellation/Voids and Completion processing. The API is also capable of tokinsed payments using Card Holder Accounts.  ## Compliance and Security Your application will need to adhere to PCI-DSS standards to operate safely and to meet requirements set out by  Visa and MasterCard and the PCI Security Standards Council. These include  * Data must be collected using TLS version 1.2 using [strong cryptography](#enabled-tls-ciphers). We will not accept calls to our API at   lower grade encryption levels. We regularly scan our TLS endpoints for vulnerabilities and perform TLS assessments   as part of our compliance program. * The application must not store sensitive card holder data (CHD) such as the card security code (CSC) or   primary access number (PAN) * The application must not display the full card number on receipts, it is recommended to mask the PAN   and show the last 4 digits. The API will return this for you for ease of receipt creation * If you are developing a website, you will be required to perform regular scans on the network where you host the   application to meet your compliance obligations * You will be required to be PCI Compliant and the application must adhere to the security standard. Further information   is available from [https://www.pcisecuritystandards.org/](https://www.pcisecuritystandards.org/) * The API verifies that the request is for a valid account and originates from a trusted source using the remote IP   address. Our application firewalls analyse data that may be an attempt to break a large number of security common   security vulnerabilities. 

Contact: support@citypay.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for CityPayApiClient::OperationalFunctionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'OperationalFunctionsApi' do
  before do
    # run before each test
    @api_instance = CityPayApiClient::OperationalFunctionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OperationalFunctionsApi' do
    it 'should create an instance of OperationalFunctionsApi' do
      expect(@api_instance).to be_instance_of(CityPayApiClient::OperationalFunctionsApi)
    end
  end

  # unit tests for acl_check_request
  # ACL Check Request
  # Allows the checking of IP addresses against configured ACLs. Requests can perform a lookup of addresses in subnets and services such as AWS or Azure to check that those addresses are listed in the ACLs. 
  # @param acl_check_request 
  # @param [Hash] opts the optional parameters
  # @return [AclCheckResponseModel]
  describe 'acl_check_request test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for domain_key_check_request
  # Domain Key Check Request
  # Checks the contents of a &#x60;domain key&#x60;. Can be used for operational processes to ensure that the properties of a  domain key meet their expectations. 
  # @param domain_key_check_request 
  # @param [Hash] opts the optional parameters
  # @return [DomainKeyResponse]
  describe 'domain_key_check_request test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for domain_key_gen_request
  # Domain Key Generation Request
  # Generates a domain key based on the permissions of the calling &#x60;api-key&#x60;. Domain keys can be used in _Direct Post_ and &#x60;XHR&#x60; calls to the API services. 
  # @param domain_key_request 
  # @param [Hash] opts the optional parameters
  # @return [DomainKeyResponse]
  describe 'domain_key_gen_request test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_merchants_request
  # List Merchants Request
  # An operational request to list current merchants for a client.  ### Sorting  Sorting can be performed by include a query parameter i.e. &#x60;/merchants/?sort&#x3D;merchantid&#x60;  Fields that can be sorted are &#x60;merchantid&#x60; or &#x60;name&#x60;. 
  # @param clientid The client id to return merchants for, specifying \&quot;default\&quot; will use the value in your api key.
  # @param [Hash] opts the optional parameters
  # @return [ListMerchantsResponse]
  describe 'list_merchants_request test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for ping_request
  # Ping Request
  # A ping request which performs a connection and authentication test to the CityPay API server. The request will return a standard Acknowledgement with a response code &#x60;044&#x60; to signify a successful ping.  The ping call is useful to confirm that you will be able to access  the API from behind any firewalls and that the permission model is granting access from your source. 
  # @param ping 
  # @param [Hash] opts the optional parameters
  # @return [Acknowledgement]
  describe 'ping_request test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
