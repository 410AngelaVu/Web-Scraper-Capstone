require_relative '../lib/job'

def job_list
  puts ''
  puts '========================='
  puts 'Welcome to the Job Search'
  puts '========================='
  puts ''
  puts 'What job would you like to choose?'
  puts ''
  puts 'Type list to get a job list'
  puts 'Type exit to exit the program'
end
job_list
input = gets.chomp
job3 = Job.new('https://weworkremotely.com/')
job3.calling_list if input == 'list'
job3.calling_list if input == 'LIST'
job4 = Job.new('https://weworkremotely.com/')
job4.calling_list if @answer2 == 'y'
puts 'Goodbye, expolre our job list again!'
