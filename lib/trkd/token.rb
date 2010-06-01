module TRKD
  class Token
    attr_reader :value, :expiration

    include HTTParty
    base_uri 'prod.mobileapp.thomsononeqa.com'
    basic_auth API_USER, API_PASS 

    def initialize
      res = self.class.get('/TokenManagement/TokenManagement.svc/GetSessionID/streetapps')
      @value = res['CreateToken_Response']['Token']
      @expiration = Time.parse(res['CreateToken_Response']['Expiration']) - 60 # one minute buffer
    end

    def expired?
      Time.now >= @expiration
    end
  end
end

