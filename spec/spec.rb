require_relative '../lib/job'
require_relative '../bin/main'

describe Job do
  let(:job) { Job.new('https://weworkremotely.com/') }

  describe '#job_listing' do
    it 'shows list of jobs' do
      expect(job.job_listing).to be_an Array
    end
  end
end
