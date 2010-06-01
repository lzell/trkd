module TRKD
  class Service
    attr_reader :response, :raw_response, :nokogiri_doc

    include HTTParty
    base_uri 'prod.mobileapp.thomsononeqa.com/Services'
    headers 'Content-type' => 'application/xml'

    def inspect
      response.inspect
    end

    def initialize(path, request_body)
      res = self.class.post(path, :body => request_body)
      @raw_response = res.body
      @response = res
      @nokogiri_doc = Nokogiri::XML(res.body)
    end

    def pretty_print
      puts nokogiri_doc
    end

    def token
      TokenHandler.token
    end
  end
end

