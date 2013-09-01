require 'open-uri'

class Location < ActiveRecord::Base
  attr_accessible :name, :location, :region, :type, :is_open, :calendar_address, :is_open

  def is_open?()
    _is_open = false

    cal_id = "#{ self.calendar_address }%40group.calendar.google.com" if !self.calendar_address.index('@')
    api_key = 'AIzaSyAuWoDi2458fbwueXdgXCXzcT4mbCdB674'
    req_URL = "https://www.googleapis.com/calendar/v3/calendars/#{ cal_id }/events?singleEvents=true&key=#{ api_key }"

    uri = URI.parse(req_URL)
    http = Net::HTTP.new(uri.host, 80)
    puts uri.request_uri
    response = http.request(Net::HTTP::Get.new(req_URL))
    puts response

    # cal_info = JSON.parse(res.body)
    # cal_info['items'].each do |i|
    #   st = DateTime.parse(i.start.dateTime)
    #   et = DateTime.parse(i.end.dateTime)
    #   now = DateTime.now
    #   # TODO: Pad with a few extra minutes
    #   _is_open = true if st <= now <= et
    # end

    # puts open(req_URL).read
    return _is_open

  end
end
