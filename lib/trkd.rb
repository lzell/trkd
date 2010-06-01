# Thompson Reuters Knowledge Direct
require 'httparty'
require 'nokogiri'

module TRKD
  API_USER = ENV['TRKD_API_USER'] || 'your_username_here'
  API_PASS = ENV['TRKD_API_PASS'] || 'your_password_here'
end

path = File.expand_path(File.join(File.dirname(__FILE__), 'trkd'))

require File.join(path, 'token')
require File.join(path, 'token_handler')
require File.join(path, 'xml_templates')
require File.join(path, 'service')
require File.join(path, 'fundamentals')
require File.join(path, 'estimates')
require File.join(path, 'summary_by_topic')
require File.join(path, 'summary_by_story')
require File.join(path, 'headlines')
require File.join(path, 'topics')

