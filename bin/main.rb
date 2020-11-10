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
job3 = Job.new('https://weworkremotely.com/')

job3.calling_list if input == 'list'

puts 'Goodbye, expolre our job list again!'
