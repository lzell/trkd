module TRKD::XMLTemplates

ESTIMATES =<<EOS
<?xml version="1.0" encoding="utf-8" ?>
<EstimatesRequestOfGetConsensus_Request_1
 xmlns:c="http://www.reuters.com/ns/2009/04/07/webservices/rkdrest/Common"
 xmlns="http://www.reuters.com/ns/2008/01/12/webservices/rkd/Estimates_1">
  <c:Application>streetapps</c:Application>
  <c:AuthorizationToken>%s</c:AuthorizationToken>
  <RequestData>
    <GetConsensus_Request_1 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                            companyId="%s"
                            companyIdType="RIC"
                            EstimateType="TARGETPRICE,EPS,REVENUE"
                            Category="Default" xmlns="http://www.reuters.com/ns/2008/01/12/webservices/rkd/Estimates_1" />
  </RequestData>
</EstimatesRequestOfGetConsensus_Request_1>
EOS


FUNDAMENTALS =<<EOS
<?xml version="1.0" encoding="utf-8"?>
<FundamentalsRequestOfGetSnapshotReports_Request_1
  xmlns:c="http://www.reuters.com/ns/2009/04/07/webservices/rkdrest/Common" 
  xmlns="http://www.reuters.com/ns/2009/01/26/webservices/rkd/Fundamentals_1">
  <c:Application>streetapps</c:Application>
  <c:AuthorizationToken>%s</c:AuthorizationToken>
  <RequestData>
    <GetSnapshotReports_Request_1 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" companyId="%s" companyIdType="Ticker" xmlns="http://www.reuters.com/ns/2009/01/26/webservices/rkd/Fundamentals_1"/>
  </RequestData>
</FundamentalsRequestOfGetSnapshotReports_Request_1>
EOS


HEADLINES =<<EOS
<?xml version="1.0" encoding="utf-8"?>
<OnlineReportsRequestOfGetHeadlines_Request_1
  xmlns:c="http://www.reuters.com/ns/2009/04/07/webservices/rkdrest/Common"
  xmlns="http://www.reuters.com/ns/2006/05/01/webservices/rkd/OnlineReports_1">
  <c:Application>streetapps</c:Application>
  <c:AuthorizationToken>%s</c:AuthorizationToken>
  <RequestData>
    <GetHeadlines_Request_1 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xmlns:xsd="http://www.w3.org/2001/XMLSchema"
      xmlns="http://www.reuters.com/ns/2006/05/01/webservices/rkd/OnlineReports_1">
      <Topic>%s</Topic>
      <MaxCount>%s</MaxCount>
    </GetHeadlines_Request_1>
  </RequestData>
</OnlineReportsRequestOfGetHeadlines_Request_1>
EOS

SUMMARY_BY_STORY =<<EOS
<?xml version="1.0" encoding="utf-8"?>
<OnlineReportsRequestOfGetSummaryByStories_Request_1
  xmlns:c="http://www.reuters.com/ns/2009/04/07/webservices/rkdrest/Common"
  xmlns="http://www.reuters.com/ns/2006/05/01/webservices/rkd/OnlineReports_1">
  <c:Application>streetapps</c:Application>
  <c:AuthorizationToken>%s</c:AuthorizationToken>
  <RequestData>
    <GetSummaryByStories_Request_1
      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema"
      xmlns="http://www.reuters.com/ns/2006/05/01/webservices/rkd/OnlineReports_1">
      <StoryId>%s</StoryId>
    </GetSummaryByStories_Request_1>
  </RequestData>
</OnlineReportsRequestOfGetSummaryByStories_Request_1>
EOS

SUMMARY_BY_TOPIC =<<EOS
<?xml version="1.0" encoding="utf-8"?>
<OnlineReportsRequestOfGetSummaryByTopic_Request_1
  xmlns:c="http://www.reuters.com/ns/2009/04/07/webservices/rkdrest/Common"
  xmlns="http://www.reuters.com/ns/2006/05/01/webservices/rkd/OnlineReports_1">
  <c:Application>streetapps</c:Application>
  <c:AuthorizationToken>%s</c:AuthorizationToken>
  <RequestData>
    <GetSummaryByTopic_Request_1
      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema"
      xmlns="http://www.reuters.com/ns/2006/05/01/webservices/rkd/OnlineReports_1">
      <Topic>%s</Topic>
      <MaxCount>%s</MaxCount>
    </GetSummaryByTopic_Request_1>
  </RequestData>
</OnlineReportsRequestOfGetSummaryByTopic_Request_1>
EOS

TOPICS =<<EOS
<?xml version="1.0" encoding="utf-8"?>
<OnlineReportsRequestOfGetTopics_Request_1
  xmlns:c="http://www.reuters.com/ns/2009/04/07/webservices/rkdrest/Common"
  xmlns="http://www.reuters.com/ns/2006/05/01/webservices/rkd/OnlineReports_1">
  <c:Application>streetapps</c:Application>
  <c:AuthorizationToken>%s</c:AuthorizationToken>
  <RequestData>
    <GetTopics_Request_1 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xmlns:xsd="http://www.w3.org/2001/XMLSchema"
      xmlns="http://www.reuters.com/ns/2006/05/01/webservices/rkd/OnlineReports_1" />
  </RequestData>
</OnlineReportsRequestOfGetTopics_Request_1>
EOS

end
