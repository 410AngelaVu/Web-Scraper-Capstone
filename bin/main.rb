require_relative '../lib/first'

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
while input.include?('list') || input.include?('LIST')
  job3 = First.new
  a = job3.job_listing
  a.each_with_index do |job, index|
    puts "#{index}. #{job[:title]}"
  end

  puts 'Choose an index to see link for more details'
  answer = gets.chomp
  break unless answer.to_i.to_s == answer

  puts "https://weworkremotely.com#{job3.job_list[answer.to_i][:grab_url]}"
  puts 'Type yes if you want another search'
  puts 'Type no if you want to exit the program'

  answer1 = gets.chomp
  break if answer1 == 'no'

end
puts 'Explore our job list again! Goodbye!'
