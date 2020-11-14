require 'nokogiri'
require 'httparty'
class First
  attr_reader :job_list
  def initialize
    @unparsed_page = HTTParty.get('https://weworkremotely.com/')
    @parsed_page = Nokogiri::HTML(@unparsed_page.body)
    @each_job = @parsed_page.css('li.feature > a')
  end

  def job_listing
    @job_list = []
    @each_job.each do |j|
      job = {
        title: j.css('span.title').text,
        grab_url: j.attribute('href')
      }
      @job_list.push(job)
    end
    @job_list
  end
end
