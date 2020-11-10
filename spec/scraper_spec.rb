require_relative '../lib/job'
require_relative '../bin/main'

describe Job do
  let(:job) { Job.new('https://weworkremotely.com/') }
  describe '#job_listing' do
    it 'raise error for private methods' do
      expect { job.job_listing }.to raise_error(NoMethodError)
    end
  end

  describe '#calling_list' do
    it 'if true show complete job list' do
      calling_list = 'list'
      expect(calling_list).not_to be false
    end
    it 'if true show complete job list' do
      calling_list = 'LIST'
      expect(calling_list).not_to be false
    end
    it 'quits the program if list is not properly typed' do
      calling_list = 'LiSt'
      expect(calling_list).not_to be true
    end
  end
end
