module TRKD
  class Estimates < Service
    @@method_path = '/EstimatesService.svc/GetConsensus'

    # Cleans the response up a bit, jumping ahead of all the keys that have no data in them
    def response
      super['EstimatesResponseOfGetConsensus_Response_1']['ResponseData']['GetConsensus_Response_1']['EstimatesConsensusInformation']['ConsEstimates']
    end

    def initialize(ticker)
      @ticker = ticker
      super(@@method_path, request_xml)
    end

    def self.for(ticker)
      new(ticker)
    end

    private
    def request_xml
      XMLTemplates::ESTIMATES % [token, @ticker]
    end
  end
end

