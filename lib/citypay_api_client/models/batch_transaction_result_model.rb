=begin
#CityPay Payment API

# This CityPay API is a HTTP RESTful payment API used for direct server to server transactional processing. It provides a number of payment mechanisms including: Internet, MOTO, Continuous Authority transaction processing, 3-D Secure decision handling using RFA Secure, Authorisation, Refunding, Pre-Authorisation, Cancellation/Voids and Completion processing. The API is also capable of tokinsed payments using Card Holder Accounts.  ## Compliance and Security Your application will need to adhere to PCI-DSS standards to operate safely and to meet requirements set out by  Visa and MasterCard and the PCI Security Standards Council. These include  * Data must be collected using TLS version 1.2 using [strong cryptography](#enabled-tls-ciphers). We will not accept calls to our API at   lower grade encryption levels. We regularly scan our TLS endpoints for vulnerabilities and perform TLS assessments   as part of our compliance program. * The application must not store sensitive card holder data (CHD) such as the card security code (CSC) or   primary access number (PAN) * The application must not display the full card number on receipts, it is recommended to mask the PAN   and show the last 4 digits. The API will return this for you for ease of receipt creation * If you are developing a website, you will be required to perform regular scans on the network where you host the   application to meet your compliance obligations * You will be required to be PCI Compliant and the application must adhere to the security standard. Further information   is available from [https://www.pcisecuritystandards.org/](https://www.pcisecuritystandards.org/) * The API verifies that the request is for a valid account and originates from a trusted source using the remote IP   address. Our application firewalls analyse data that may be an attempt to break a large number of security common   security vulnerabilities. 

Contact: support@citypay.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0-SNAPSHOT

=end

require 'date'
require 'time'

module CityPayApiClient
  class BatchTransactionResultModel
    # The card holder account id used for the transaction.
    attr_accessor :account_id

    # The amount of the transaction processed.
    attr_accessor :amount

    # The authorisation code of a successful transaction.
    attr_accessor :authcode

    # The datetime that the transaction was processed.
    attr_accessor :datetime

    # The identifier of the transaction.
    attr_accessor :identifier

    # A masked value of the card number used for processing displaying limited values that can be used on a receipt. 
    attr_accessor :maskedpan

    # The merchant id of the transaction.
    attr_accessor :merchantid

    # A response message pertaining to the transaction.
    attr_accessor :message

    # An integer result that indicates the outcome of the transaction. The Code value below maps to the result value  <table> <tr> <th>Code</th> <th>Abbrev</th> <th>Description</th> </tr> <tr><td>0</td><td>Declined</td><td>Declined</td></tr> <tr><td>1</td><td>Accepted</td><td>Accepted</td></tr> <tr><td>2</td><td>Rejected</td><td>Rejected</td></tr> <tr><td>3</td><td>Not Attempted</td><td>Not Attempted</td></tr> <tr><td>4</td><td>Referred</td><td>Referred</td></tr> <tr><td>5</td><td>PinRetry</td><td>Perform PIN Retry</td></tr> <tr><td>6</td><td>ForSigVer</td><td>Force Signature Verification</td></tr> <tr><td>7</td><td>Hold</td><td>Hold</td></tr> <tr><td>8</td><td>SecErr</td><td>Security Error</td></tr> <tr><td>9</td><td>CallAcq</td><td>Call Acquirer</td></tr> <tr><td>10</td><td>DNH</td><td>Do Not Honour</td></tr> <tr><td>11</td><td>RtnCrd</td><td>Retain Card</td></tr> <tr><td>12</td><td>ExprdCrd</td><td>Expired Card</td></tr> <tr><td>13</td><td>InvldCrd</td><td>Invalid Card No</td></tr> <tr><td>14</td><td>PinExcd</td><td>Pin Tries Exceeded</td></tr> <tr><td>15</td><td>PinInvld</td><td>Pin Invalid</td></tr> <tr><td>16</td><td>AuthReq</td><td>Authentication Required</td></tr> <tr><td>17</td><td>AuthenFail</td><td>Authentication Failed</td></tr> <tr><td>18</td><td>Verified</td><td>Card Verified</td></tr> <tr><td>19</td><td>Cancelled</td><td>Cancelled</td></tr> <tr><td>20</td><td>Un</td><td>Unknown</td></tr> <tr><td>21</td><td>Challenged</td><td>Challenged</td></tr> <tr><td>22</td><td>Decoupled</td><td>Decoupled</td></tr> <tr><td>23</td><td>Denied</td><td>Permission Denied</td></tr> </table> 
    attr_accessor :result

    # A result code of the transaction identifying the result of the transaction for success, rejection or decline.
    attr_accessor :result_code

    # A name of the card scheme of the transaction that processed the transaction such as Visa or MasterCard. 
    attr_accessor :scheme

    # The resulting transaction number, ordered incrementally from 1 for every merchant_id. The value will default to less than 1 for transactions that do not have a transaction number issued. 
    attr_accessor :transno

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account_id' => :'account_id',
        :'amount' => :'amount',
        :'authcode' => :'authcode',
        :'datetime' => :'datetime',
        :'identifier' => :'identifier',
        :'maskedpan' => :'maskedpan',
        :'merchantid' => :'merchantid',
        :'message' => :'message',
        :'result' => :'result',
        :'result_code' => :'result_code',
        :'scheme' => :'scheme',
        :'transno' => :'transno'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'account_id' => :'String',
        :'amount' => :'Integer',
        :'authcode' => :'String',
        :'datetime' => :'Time',
        :'identifier' => :'String',
        :'maskedpan' => :'String',
        :'merchantid' => :'Integer',
        :'message' => :'String',
        :'result' => :'Integer',
        :'result_code' => :'String',
        :'scheme' => :'String',
        :'transno' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `CityPayApiClient::BatchTransactionResultModel` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CityPayApiClient::BatchTransactionResultModel`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account_id')
        self.account_id = attributes[:'account_id']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'authcode')
        self.authcode = attributes[:'authcode']
      end

      if attributes.key?(:'datetime')
        self.datetime = attributes[:'datetime']
      end

      if attributes.key?(:'identifier')
        self.identifier = attributes[:'identifier']
      end

      if attributes.key?(:'maskedpan')
        self.maskedpan = attributes[:'maskedpan']
      end

      if attributes.key?(:'merchantid')
        self.merchantid = attributes[:'merchantid']
      end

      if attributes.key?(:'message')
        self.message = attributes[:'message']
      end

      if attributes.key?(:'result')
        self.result = attributes[:'result']
      end

      if attributes.key?(:'result_code')
        self.result_code = attributes[:'result_code']
      end

      if attributes.key?(:'scheme')
        self.scheme = attributes[:'scheme']
      end

      if attributes.key?(:'transno')
        self.transno = attributes[:'transno']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @account_id.nil?
        invalid_properties.push('invalid value for "account_id", account_id cannot be nil.')
      end

      if @account_id.to_s.length > 50
        invalid_properties.push('invalid value for "account_id", the character length must be smaller than or equal to 50.')
      end

      if @account_id.to_s.length < 5
        invalid_properties.push('invalid value for "account_id", the character length must be great than or equal to 5.')
      end

      if @identifier.nil?
        invalid_properties.push('invalid value for "identifier", identifier cannot be nil.')
      end

      if @identifier.to_s.length > 50
        invalid_properties.push('invalid value for "identifier", the character length must be smaller than or equal to 50.')
      end

      if @identifier.to_s.length < 4
        invalid_properties.push('invalid value for "identifier", the character length must be great than or equal to 4.')
      end

      if @merchantid.nil?
        invalid_properties.push('invalid value for "merchantid", merchantid cannot be nil.')
      end

      if @message.nil?
        invalid_properties.push('invalid value for "message", message cannot be nil.')
      end

      if @result.nil?
        invalid_properties.push('invalid value for "result", result cannot be nil.')
      end

      if @result_code.nil?
        invalid_properties.push('invalid value for "result_code", result_code cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @account_id.nil?
      return false if @account_id.to_s.length > 50
      return false if @account_id.to_s.length < 5
      return false if @identifier.nil?
      return false if @identifier.to_s.length > 50
      return false if @identifier.to_s.length < 4
      return false if @merchantid.nil?
      return false if @message.nil?
      return false if @result.nil?
      return false if @result_code.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] account_id Value to be assigned
    def account_id=(account_id)
      if account_id.nil?
        fail ArgumentError, 'account_id cannot be nil'
      end

      if account_id.to_s.length > 50
        fail ArgumentError, 'invalid value for "account_id", the character length must be smaller than or equal to 50.'
      end

      if account_id.to_s.length < 5
        fail ArgumentError, 'invalid value for "account_id", the character length must be great than or equal to 5.'
      end

      @account_id = account_id
    end

    # Custom attribute writer method with validation
    # @param [Object] amount Value to be assigned
    def amount=(amount)
      @amount = amount
    end

    # Custom attribute writer method with validation
    # @param [Object] identifier Value to be assigned
    def identifier=(identifier)
      if identifier.nil?
        fail ArgumentError, 'identifier cannot be nil'
      end

      if identifier.to_s.length > 50
        fail ArgumentError, 'invalid value for "identifier", the character length must be smaller than or equal to 50.'
      end

      if identifier.to_s.length < 4
        fail ArgumentError, 'invalid value for "identifier", the character length must be great than or equal to 4.'
      end

      @identifier = identifier
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_id == o.account_id &&
          amount == o.amount &&
          authcode == o.authcode &&
          datetime == o.datetime &&
          identifier == o.identifier &&
          maskedpan == o.maskedpan &&
          merchantid == o.merchantid &&
          message == o.message &&
          result == o.result &&
          result_code == o.result_code &&
          scheme == o.scheme &&
          transno == o.transno
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_id, amount, authcode, datetime, identifier, maskedpan, merchantid, message, result, result_code, scheme, transno].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = CityPayApiClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
