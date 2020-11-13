require_relative '../lib/job'
describe Job do
  let(:job) { Job.new('https://weworkremotely.com/') }
  describe '#calling_list' do
    it 'shows full job list' do
      expect(job.calling_list).to eql(nil)
    end
  end

  describe '#job_listing' do
    it 'returns array of jobs' do
      expect(job.job_listing).to be_an Array
    end
  end

  describe '#full_job_list' do
    it 'shows index of a job' do
      expect(job.full_job_list(job.job_list)).to be_an Array
    end
  end
end
