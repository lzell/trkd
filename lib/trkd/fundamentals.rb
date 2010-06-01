module TRKD
  class Fundamentals < Service
    @@method_path = '/FundamentalsService.svc/GetSnapshotReports'
 
    def response
      super['FundamentalsResponseOfGetSnapshotReports_Response_1']['ResponseData']['GetSnapshotReports_Response_1']['FundamentalReports']['ReportSnapshot']
    end

    def initialize(ticker)
      @ticker = ticker
      super(@@method_path, request_xml)
    end

    def self.for(ticker)
      new(ticker)
    end
   
    def name
      response['CoIDs']['CoID'][1]
    end

    private
    def request_xml
      XMLTemplates::FUNDAMENTALS % [token, @ticker]
    end
  end
end
