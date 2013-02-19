# First Line Here
$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)

require 'test_gem'

describe TestGem::File do

  context 'instance' do
    subject { TestGem::File.new }
    it { subject.should be_a TestGem::File }
  end

  context 'with class method' do
    subject { TestGem::File.first './spec/file_spec.rb' }
    it 'first line of text file' do
      subject.should eq '# First Line Here'
    end
  end
    
  context 'with class method' do
    subject { TestGem::File.last './spec/file_spec.rb' }
    it 'last line of text file' do
      subject.should eq '# Last Line Here'
    end
  end
    
end
# Last Line Here
