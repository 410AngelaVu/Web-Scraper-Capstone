require_relative '../lib/first'
describe First do
  let(:job) { First.new }
  describe '#job_listing' do
    it 'returns array of jobs' do
      expect(job.job_listing).to be_an Array
    end
  end
end
