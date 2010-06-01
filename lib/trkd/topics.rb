module TRKD
  class Topics < Service
    @@method_path = '/OnlineReportsService.svc/GetTopics'
    
    def response
      super["OnlineReportsResponseOfGetTopics_Response_1"]["ResponseData"]["GetTopics_Response_1"]["channels"]["channel"]
    end
    
    def initialize
      super(@@method_path, request_xml)
    end
    
    def self.list
      new
    end

    private
    def request_xml
      XMLTemplates::TOPICS % token
    end
  end
end


