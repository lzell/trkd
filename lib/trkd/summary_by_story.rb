module TRKD
  class SummaryByStory < Service
    @@method_path = '/OnlineReportsService.svc/GetSummaryByStories'

    def response
      super['OnlineReportsResponseOfGetSummaryByStories_Response_1']['ResponseData']["GetSummaryByStories_Response_1"]['StoryMLResponse']
    end
    
    def initialize(story_id)
      @story_id = story_id
      super(@@method_path, request_xml)
    end
    
    def self.find(story_id)
      new(story_id)
    end

    private
    def request_xml
      XMLTemplates::SUMMARY_BY_STORY % [token, @story_id]
    end
  end
end

