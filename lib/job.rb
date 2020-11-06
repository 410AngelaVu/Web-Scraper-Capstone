require 'nokogiri'
require 'httparty'
# Here is class Job, where all action is taken
class Job
  attr_accessor :job_list, :each_job, :more_url
  def initialize(url)
    @unparsed_page = HTTParty.get(url)
    @parsed_page = Nokogiri::HTML(@unparsed_page.body)
    @each_job = @parsed_page.css('li.feature > a')
    job_listing
    system 'cls'
  end

  def job_listing
    @job_list = []
    @each_job.each do |j|
      job = {
        title: j.css('span.title').text,
        grab_url: j.attribute('href')
        # url: "https://weworkremotely.com/"
      }
      @job_list.push(job)
    end
    @job_list
  end
end
