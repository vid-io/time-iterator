require "spec_helper"


describe Time do

  it { should respond_to :up_to }
  it { should respond_to :down_to }

  context "#up_to" do
    it "should return TimeIterator instance" do
      Time.now.up_to(Time.now).should be_instance_of TimeIterator
    end
  end

  context "#down_to" do
    it "should return TimeIterator instance" do
      Time.now.down_to(Time.now).should be_instance_of TimeIterator
    end
  end

end
