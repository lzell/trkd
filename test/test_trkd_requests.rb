# ruby -rubygems test_trkd_requests.rb

require 'test/unit'
require File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib', 'trkd'))

class TestTrkdRequests < Test::Unit::TestCase
  
  def test_estimates
    ibm_estimates = TRKD::Estimates.for('IBM')
    assert_instance_of Hash,    ibm_estimates.response
    assert_instance_of String,  ibm_estimates.raw_response
    assert_instance_of Nokogiri::XML::Document, ibm_estimates.nokogiri_doc
    assert_equal ["NPEstimates", "FYEstimates", "Recommendations"], ibm_estimates.response.keys 
  end
  
  def test_fundamentals
    goog_fundamentals = TRKD::Fundamentals.for('GOOG')
    assert goog_fundamentals.response.keys.include?('CoGeneralInfo')
  end
  
  def test_headlines
    headlines = TRKD::Headlines.for_topic_code('OLUSWORLD')
    assert_instance_of Array, headlines.response['HEADLINEML']['HL']
  end
  
  def test_summary_by_story
    story = TRKD::SummaryByStory.find('urn:newsml:onlinereport.com:20100601:nTRE6504TR20100601172920:5')
    assert_equal "Iraq&apos;s north says villagers flee Iranian shelling", story.response['STORYML']['HL']['HT']
  end
  
  def test_summary_by_topic
    world_summary = TRKD::SummaryByTopic.find_all('OLUSWORLD')
    assert_equal ["Status", "STORYML", "xmlns"], world_summary.response.keys
  end
  
  def test_topics
    topic_list = TRKD::Topics.list
    assert_instance_of Array, topic_list.response
  end
  
end
