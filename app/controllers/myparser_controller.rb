class MyparserController < ApplicationController
  def index
    calendar_response = Faraday.new.get('http://www.weeia.p.lodz.pl/pliki_strony_kontroler/kalendarz.php?rok=2019&miesiac=12').body.html_safe
    page = Nokogiri::HTML.parse(calendar_response)

    days = []

    page.css('tr').css('td').css('a.active').each do |day|
      days << day.text
    end

    descriptions = []

    page.css('p').each do |desc|
      descriptions << desc.text
    end

    cal = Icalendar::Calendar.new
    filename = "siemaelo"

    cal.prodid = '-//Acme Widgets, Inc.//NONSGML ExportToCalendar//EN'
    cal.version = '2.0'
    filename += '.ics'

    days.each_with_index do |day, index|
      cal.event do |e|
        starts_at     = DateTime.new(2019, 12, day.to_i).beginning_of_day
        ends_at       = DateTime.new(2019, 12, day.to_i).end_of_day
        e.dtstart     = Icalendar::Values::DateTime.new(starts_at)
        e.dtend       = Icalendar::Values::DateTime.new(ends_at)
        e.description = descriptions[index]
      end
    end

    cal.publish

    send_data cal.to_ical, type: 'text/calendar', disposition: 'attachment', filename: filename

    # render html: calendar_response
  end
end

