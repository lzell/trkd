module TRKD
  class SummaryByTopic < Service
    @@method_path = '/OnlineReportsService.svc/GetSummaryByTopic'

    def response
      super['OnlineReportsResponseOfGetSummaryByTopic_Response_1']['ResponseData']['GetSummaryByTopic_Response_1']['StoryMLResponse']
    end

    def initialize(topic_code, number_of_headlines)
      @topic_code = topic_code
      @number_of_headlines = number_of_headlines
      super(@@method_path, request_xml)
    end
    
    class << self
      def find_all(topic_code, number_of_headlines = 10)
        new(topic_code, number_of_headlines)
      end
    end

    private
    def request_xml
      XMLTemplates::SUMMARY_BY_TOPIC % [token, @topic_code, @number_of_headlines]
    end
  end
end

