require_relative '../lib/job'
require_relative '../bin/main'

describe Job do
  let(:job) { Job.new('https://weworkremotely.com/') }
  describe '#job_listing' do
    it 'raise error for private methods' do
      expect { job.job_listing }.to raise_error(NoMethodError)
    end
  end

  describe '#job_list' do
    it 'shows welcome message' do
      expect(job_list).to eql(nil)
    end
  end
end
