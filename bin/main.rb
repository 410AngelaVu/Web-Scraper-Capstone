require_relative '../lib/job'

def full_job_list(job_list)
  job_list.each_with_index do |job, index|
    puts "#{index}.  #{job[:title]}"
  end
end

def job_list
  puts ''
  puts '========================='
  puts 'Welcome to the Job Search'
  puts '========================='
  puts ''
  puts 'What job would you like to choose?'
  puts ''
  puts 'Type list to get a job list'
  puts 'Type exit or any other key to exit the program'
end
job_list
input = gets.chomp

if input == 'list'
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
else
  puts 'Goodbye, expolre our job list again!'
end
