require 'nokogiri'
require 'httparty'
# Here is class Job, where all action is taken
class Job
  attr_reader :job_list, :each_job, :more_url
  def initialize(url)
    @unparsed_page = HTTParty.get(url)
    @parsed_page = Nokogiri::HTML(@unparsed_page.body)
    @each_job = @parsed_page.css('li.feature > a')
    job_listing
    system 'cls'
  end

  def calling_list
    app = true
    while app == true
      new_job = Job.new('https://weworkremotely.com/')
      full_job_list(new_job.job_list)
      puts 'If you want to see link of the company details press, type a index of a job'
      answer = gets.chomp.to_i
      new_job1 = Job.new('https://weworkremotely.com/')
      puts "https://weworkremotely.com#{new_job1.job_list[answer][:grab_url]}"
      break
    end
  end

  private

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
