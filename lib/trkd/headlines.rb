module TRKD
  class Headlines < Service
    @@method_path = '/OnlineReportsService.svc/GetHeadlines'

    def response
      super['OnlineReportsResponseOfGetHeadlines_Response_1']['ResponseData']['GetHeadlines_Response_1']['HeadlineMLResponse']
    end

    def initialize(topic_code, number_of_headlines)
      @topic_code = topic_code
      @number_of_headlines = number_of_headlines
      super(@@method_path, request_xml)
    end

    def self.for_topic_code(topic_code, number_of_headlines = 10)
      new(topic_code, number_of_headlines)
    end

    private
    def request_xml
      XMLTemplates::HEADLINES % [token, @topic_code, @number_of_headlines]
    end
  end
end


